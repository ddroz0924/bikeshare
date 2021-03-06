-- !preview conn=DBI::dbConnect(RSQLite::SQLite())

##### ---DATA CLEANING FOR BIKESHARE PROJECT--- #####


### STEP 1 ### combine 12 months of data into a year table
CREATE TABLE IF NOT EXISTS bikeshare.year AS
SELECT *
FROM bikeshare.sept_2020;

INSERT INTO bikeshare.year
SELECT *
FROM bikeshare.oct_2020;

INSERT INTO bikeshare.year
SELECT *
FROM bikeshare.nov_2020;

INSERT INTO bikeshare.year
SELECT *
FROM bikeshare.dec_2020;

INSERT INTO bikeshare.year
SELECT *
FROM bikeshare.jan_2021;

INSERT INTO bikeshare.year
SELECT *
FROM bikeshare.feb_2021;

INSERT INTO bikeshare.year
SELECT *
FROM bikeshare.mar_2021;

INSERT INTO bikeshare.year
SELECT *
FROM bikeshare.apr_2021;

INSERT INTO bikeshare.year
SELECT *
FROM bikeshare.may_2021;

INSERT INTO bikeshare.year
SELECT *
FROM bikeshare.june_2021;

INSERT INTO bikeshare.year
SELECT *
FROM bikeshare.July_2021;

INSERT INTO bikeshare.year
SELECT *
FROM bikeshare.aug_2021;



### STEP 2 ### data validation

----- ERROR IN COLUMN 1 -- duplicate ride_ids

# identify which months have duplicates and how many they have
SELECT 
    DISTINCT(EXTRACT(MONTH FROM started_at)) AS month,
    COUNT(ride_id)
FROM
    bikeshare.year 
WHERE ride_id IN
    # subquery filters for ride_ids that exist more than once
    (SELECT ride_id
    FROM bikeshare.year
    GROUP BY ride_id
    HAVING COUNT(ride_id) > 1)
GROUP BY 
    month;

# duplicates in november are the same as duplicates in december
    # create temp table for november duplicates
    CREATE TEMPORARY TABLE nov_dups AS
        (SELECT *
        FROM bikeshare.year 
        WHERE ride_id IN
            # subquery filters for ride_ids that exist more than once
            (SELECT ride_id
            FROM bikeshare.year
            GROUP BY ride_id
            HAVING COUNT(ride_id) > 1) 
            # AND EXTRACT MONTH filters for duplicates in november
            AND (EXTRACT(MONTH FROM started_at)) = 11);

    # count how many november duplicate ride ids are in december duplicates
    SELECT 
        COUNT(ride_id)
    FROM 
        nov_dups
    WHERE
        ride_id IN
        # select december duplicates
        (SELECT ride_id
        FROM bikeshare.year 
        WHERE ride_id IN
            # subquery filters for ride_ids that exist more than once
            (SELECT ride_id
            FROM bikeshare.year
            GROUP BY ride_id
            HAVING COUNT(ride_id) > 1) 

        # AND EXTRACT MONTH filters for duplicates in december
        AND (EXTRACT(MONTH FROM started_at)) = 12);

# The error is in December duplicates
# All 209 December duplicates ended on the same day 2020-12-15,
# and were all out for 19 or 20 days.
SELECT 
    DISTINCT(DATETIME_DIFF(ended_at, started_at, DAY))
FROM bikeshare.year 
WHERE ride_id IN
    (SELECT ride_id
    FROM bikeshare.year
    GROUP BY ride_id
    HAVING COUNT(ride_id) > 1);


----- FIX COLUMN 1 -- Keep November duplicates and drop December duplicates
# save November duplicate information in a temporary table
CREATE TABLE bikeshare.nov_dups AS
        (SELECT *
        FROM bikeshare.year 
        WHERE ride_id IN
            (SELECT ride_id
            FROM bikeshare.year
            GROUP BY ride_id
            HAVING COUNT(ride_id) > 1) 
        AND (EXTRACT(MONTH FROM started_at)) = 11);

# drop all duplicates from year table
DELETE FROM bikeshare.year 
WHERE 
    ride_id IN # duplicates
        (SELECT ride_id
        FROM bikeshare.year 
        WHERE ride_id IN
            (SELECT ride_id
            FROM bikeshare.year
            GROUP BY ride_id
            HAVING COUNT(ride_id) > 1));

# add back in november dups
INSERT INTO bikeshare.year 
SELECT *
FROM bikeshare.nov_dups;

# no longer need nov_dups table
DROP TABLE bikeshare.nov_dups;

# check if ride_ids are now unique
SELECT 
    COUNT(ride_id)
FROM
    bikeshare.year 
WHERE ride_id IN
    (SELECT ride_id
    FROM bikeshare.year
    GROUP BY ride_id
    HAVING COUNT(ride_id) > 1);


----- LIMITATION COLUMN 2 -- data doesn't match scenario

/* Scenario lists 4 types of bikes: hand tricycles,
cargo bikes, reclining bikes, and regular bikes.
Data only shows 3: electric, classic, docked. */
SELECT DISTINCT(rideable_type)
FROM bikeshare.year;

/* Lack of bike type data is a limitation to analysis
as scenario states 8% of customers used accessible bike types.
There are no nulls in this column so we can keep this data for cleaned set. */
# no nulls
SELECT COUNT(*)
FROM bikeshare.year
WHERE rideable_type IS NULL;


----- ERROR COLUMN 3/4 -- ride starts after it ends

# compare start and end times for each month
SELECT 
    COUNT(*) as num_error, 
    EXTRACT(MONTH FROM started_at) AS month
FROM bikeshare.year
WHERE 
    ended_at < started_at
GROUP BY 
    month
ORDER BY 
    month;


----- FIX COLUMN 3/4 -- swap mix-matched start and end datetimes
UPDATE bikeshare.year AS year
# update the start and end times
SET year.started_at = fixed.started_at,
    year.ended_at = fixed.ended_at 
FROM 
    (SELECT
        ride_id, 
        # swap end and start times
        ended_at AS started_at, started_at AS ended_at
    FROM 
        bikeshare.year
    # only swap where ride starts after it ends
    WHERE 
        ended_at < started_at)
    AS fixed
# only update for the fixed ride_id
WHERE year.ride_id = fixed.ride_id;

# check start and end times
SELECT 
    COUNT(*) as num_error
FROM bikeshare.year
WHERE 
    ended_at < started_at;


----- ERROR COLUMN 5-12 -- nulls in station data
/* Nulls exist in start_station_name, start_station_id,
end_station_name, end_station_id. We could extrapolate
from other entries, but we would have to do that manually because...*/

# start_lat and start_lng length varies
SELECT COUNT(*) AS dif_lat_lengths
FROM
    (SELECT LENGTH(CAST(start_lat AS STRING)) as lat_length
    FROM bikeshare.year 
    GROUP BY lat_length);


----- FIX COLUMN 5-12 -- leave out station location info
/* It is a limitation to leave station location data out, 
but location data is not necessary for business focus of 
member vs. casual behavior. */

# Analyzing station data for member vs casual could be a possible next step


----- COLUMN 13 -- good to go!
# no nulls
SELECT COUNT(*) as num_nulls
FROM bikeshare.year
WHERE member_casual IS NULL;

# two categories like expected
SELECT DISTINCT(member_casual)
FROM bikeshare.year;




### STEP 3 ### CREATE CLEANED DATA TABLE FOR ANALYSIS
/* To prepare for analysis, we add columns for 
month, day_of_week, am_pm, trip length, 
and further categorize casual users by pass type. */ 

DROP TABLE IF EXISTS bikeshare.year_cleaned;
CREATE TABLE bikeshare.year_cleaned AS
    (SELECT 
        ride_id, rideable_type, member_casual,

        # pull name of month from datetime data type
        FORMAT_DATETIME("%B", started_at) AS month,
        
        # pull name of weekday from datetime data type
        FORMAT_DATETIME("%A", started_at) AS day_of_week,
                
        # pull am/pm data from datetime datatype
        FORMAT_DATETIME("%p", started_at) AS am_pm, 

        # calculate length of trip in minutes
        DATETIME_DIFF(ended_at, started_at, MINUTE) AS length_min,

        # categorize casual passes into "single use" and "day pass"
        # time limits for pass types are available on data host's website
        CASE 
            WHEN member_casual = "casual" AND 
                DATETIME_DIFF(ended_at, started_at, MINUTE) <= 30 THEN "single_use"
            WHEN member_casual = "casual" AND 
                DATETIME_DIFF(ended_at, started_at, MINUTE) > 30 THEN "day_pass"
            ELSE "member"
        END 
        AS pass_type, 
    FROM bikeshare.year
    );




### STEP 4 ### DATA VALIDATION ON CLEANED DATA
----- ERROR Ride Length ----- range of ride length is outside scope of business objective
# range of ride length is 0-55944 minutes!
SELECT 
    MAX(ride_length) AS max_length,
    MIN(ride_length) AS min_length
FROM
    # subquery calculates ride length in minutes
    (SELECT 
        DATETIME_DIFF(ended_at, started_at, MINUTE) AS ride_length
    FROM bikeshare.year);


/* We need to drop data for rides of length 0 and rides over 1440 minutes. (24 hours * 60 minutes = 1440 minutes in a day)
Both of these special cases do not represent the majority of users:
        # 0 minute rides represent a malfunction in tracking equipment 
            or a customer error of taking a bike out and putting it back almost immediately
        # rides over 1440 minutes long are outside the time allowance of any pass type.
            These rides would be assessed additional fees */

# Including rides of length 0 and over 1440 throws off analysis
SELECT 
    a.pass_type, AVG(a.length_min) AS avg_all, 
    b.avg_no_1440, c.avg_no_zeros
FROM 
    (bikeshare.year_cleaned AS a
    INNER JOIN (
        SELECT pass_type, AVG(length_min) AS avg_no_1440
        FROM bikeshare.year_cleaned
        WHERE length_min < 1440
        GROUP BY pass_type) AS b
    ON a.pass_type = b.pass_type)
INNER JOIN (
    SELECT pass_type, AVG(length_min) AS avg_no_zeros
    FROM bikeshare.year_cleaned
    WHERE length_min < 1440
    AND length_min > 0
    GROUP BY pass_type) AS c
ON a.pass_type = c.pass_type
GROUP BY 
    pass_type, avg_no_1440, avg_no_zeros;
# average length for day pass: 95.1 mins (with all data); 71.42 (with filtered data)



----- FIX Ride Length ----- update cleaned data to reflect scope of business objective
DELETE FROM bikeshare.year_cleaned 
WHERE ride_id IN (
    SELECT ride_id
    FROM bikeshare.year_cleaned
    WHERE length_min < 0
        OR length_min > 1440
    )
# 3652 rows removed

