{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red204\green0\blue78;\red255\green255\blue254;\red0\green0\blue0;
\red39\green78\blue204;\red42\green55\blue62;\red238\green57\blue24;\red107\green0\blue1;\red21\green129\blue62;
}
{\*\expandedcolortbl;;\cssrgb\c84706\c10588\c37647;\cssrgb\c100000\c100000\c99608;\cssrgb\c0\c0\c0;
\cssrgb\c20000\c40392\c83922;\cssrgb\c21569\c27843\c30980;\cssrgb\c95686\c31765\c11765;\cssrgb\c50196\c0\c0;\cssrgb\c5098\c56471\c30980;
}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl360\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 ##### ---DATA CLEANING FOR BIKESHARE PROJECT--- #####\cf4 \cb1 \strokec4 \
\
\
\cf2 \cb3 \strokec2 ### STEP 1 ### combine 12 months of data into a year table\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \cf5 \strokec5 IF\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 EXISTS\cf4 \strokec4  bikeshare.year \cf5 \strokec5 AS\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.sept_2020;\cb1 \
\
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  bikeshare.year\cb1 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.oct_2020;\cb1 \
\
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  bikeshare.year\cb1 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.nov_2020;\cb1 \
\
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  bikeshare.year\cb1 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.dec_2020;\cb1 \
\
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  bikeshare.year\cb1 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.jan_2021;\cb1 \
\
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  bikeshare.year\cb1 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.feb_2021;\cb1 \
\
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  bikeshare.year\cb1 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.mar_2021;\cb1 \
\
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  bikeshare.year\cb1 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.apr_2021;\cb1 \
\
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  bikeshare.year\cb1 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.may_2021;\cb1 \
\
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  bikeshare.year\cb1 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.june_2021;\cb1 \
\
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  bikeshare.year\cb1 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.July_2021;\cb1 \
\
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  bikeshare.year\cb1 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.aug_2021;\cb1 \
\
\
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 ### STEP 2 ### data validation\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 ----- ERROR IN COLUMN 1 -- duplicate ride_ids\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 # identify which months have duplicates and how many they have\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf5 \strokec5 DISTINCT\cf6 \strokec6 (\cf5 \strokec5 EXTRACT\cf6 \strokec6 (\cf4 \strokec4 MONTH \cf5 \strokec5 FROM\cf4 \strokec4  started_at\cf6 \strokec6 ))\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  month,\cb1 \
\cb3     \cf5 \strokec5 COUNT\cf6 \strokec6 (\cf4 \strokec4 ride_id\cf6 \strokec6 )\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     bikeshare.year \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  ride_id \cf5 \strokec5 IN\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf2 \strokec2 # subquery filters for ride_ids that exist more than once\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 (\cf5 \strokec5 SELECT\cf4 \strokec4  ride_id\cb1 \
\cb3     \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year\cb1 \
\cb3     \cf5 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  ride_id\cb1 \
\cb3     \cf5 \strokec5 HAVING\cf4 \strokec4  \cf5 \strokec5 COUNT\cf6 \strokec6 (\cf4 \strokec4 ride_id\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 >\cf4 \strokec4  \cf7 \strokec7 1\cf6 \strokec6 )\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     month;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 # duplicates in november are the same as duplicates in december\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf2 \strokec2 # create temp table for november duplicates\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 TEMPORARY\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  nov_dups \cf5 \strokec5 AS\cf4 \cb1 \strokec4 \
\cb3         \cf6 \strokec6 (\cf5 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year \cb1 \
\cb3         \cf5 \strokec5 WHERE\cf4 \strokec4  ride_id \cf5 \strokec5 IN\cf4 \cb1 \strokec4 \
\cb3             \cf2 \strokec2 # subquery filters for ride_ids that exist more than once\cf4 \cb1 \strokec4 \
\cb3             \cf6 \strokec6 (\cf5 \strokec5 SELECT\cf4 \strokec4  ride_id\cb1 \
\cb3             \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year\cb1 \
\cb3             \cf5 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  ride_id\cb1 \
\cb3             \cf5 \strokec5 HAVING\cf4 \strokec4  \cf5 \strokec5 COUNT\cf6 \strokec6 (\cf4 \strokec4 ride_id\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 >\cf4 \strokec4  \cf7 \strokec7 1\cf6 \strokec6 )\cf4 \strokec4  \cb1 \
\cb3             \cf2 \strokec2 # AND EXTRACT MONTH filters for duplicates in november\cf4 \cb1 \strokec4 \
\cb3             \cf5 \strokec5 AND\cf4 \strokec4  \cf6 \strokec6 (\cf5 \strokec5 EXTRACT\cf6 \strokec6 (\cf4 \strokec4 MONTH \cf5 \strokec5 FROM\cf4 \strokec4  started_at\cf6 \strokec6 ))\cf4 \strokec4  = \cf7 \strokec7 11\cf6 \strokec6 )\cf4 \strokec4 ;\cb1 \
\
\cb3     \cf2 \strokec2 # count how many november duplicate ride ids are in december duplicates\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\cb3         \cf5 \strokec5 COUNT\cf6 \strokec6 (\cf4 \strokec4 ride_id\cf6 \strokec6 )\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 FROM\cf4 \strokec4  \cb1 \
\cb3         nov_dups\cb1 \
\cb3     \cf5 \strokec5 WHERE\cf4 \cb1 \strokec4 \
\cb3         ride_id \cf5 \strokec5 IN\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 # select december duplicates\cf4 \cb1 \strokec4 \
\cb3         \cf6 \strokec6 (\cf5 \strokec5 SELECT\cf4 \strokec4  ride_id\cb1 \
\cb3         \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year \cb1 \
\cb3         \cf5 \strokec5 WHERE\cf4 \strokec4  ride_id \cf5 \strokec5 IN\cf4 \cb1 \strokec4 \
\cb3             \cf2 \strokec2 # subquery filters for ride_ids that exist more than once\cf4 \cb1 \strokec4 \
\cb3             \cf6 \strokec6 (\cf5 \strokec5 SELECT\cf4 \strokec4  ride_id\cb1 \
\cb3             \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year\cb1 \
\cb3             \cf5 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  ride_id\cb1 \
\cb3             \cf5 \strokec5 HAVING\cf4 \strokec4  \cf5 \strokec5 COUNT\cf6 \strokec6 (\cf4 \strokec4 ride_id\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 >\cf4 \strokec4  \cf7 \strokec7 1\cf6 \strokec6 )\cf4 \strokec4  \cb1 \
\
\cb3         \cf2 \strokec2 # AND EXTRACT MONTH filters for duplicates in december\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 AND\cf4 \strokec4  \cf6 \strokec6 (\cf5 \strokec5 EXTRACT\cf6 \strokec6 (\cf4 \strokec4 MONTH \cf5 \strokec5 FROM\cf4 \strokec4  started_at\cf6 \strokec6 ))\cf4 \strokec4  = \cf7 \strokec7 12\cf6 \strokec6 )\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 # The error is in December duplicates\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 # All 209 December duplicates ended on the same day 2020-12-15,\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 # and were all out for 19 or 20 days.\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf5 \strokec5 DISTINCT\cf6 \strokec6 (\cf5 \strokec5 DATETIME_DIFF\cf6 \strokec6 (\cf4 \strokec4 ended_at, started_at, DAY\cf6 \strokec6 ))\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.year \cb1 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  ride_id \cf5 \strokec5 IN\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf6 \strokec6 (\cf5 \strokec5 SELECT\cf4 \strokec4  ride_id\cb1 \
\cb3     \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year\cb1 \
\cb3     \cf5 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  ride_id\cb1 \
\cb3     \cf5 \strokec5 HAVING\cf4 \strokec4  \cf5 \strokec5 COUNT\cf6 \strokec6 (\cf4 \strokec4 ride_id\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 >\cf4 \strokec4  \cf7 \strokec7 1\cf6 \strokec6 )\cf4 \strokec4 ;\cb1 \
\
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 ----- FIX COLUMN 1 -- Keep November duplicates and drop December duplicates\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 # save November duplicate information in a temporary table\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  bikeshare.nov_dups \cf5 \strokec5 AS\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3         \cf6 \strokec6 (\cf5 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year \cb1 \
\cb3         \cf5 \strokec5 WHERE\cf4 \strokec4  ride_id \cf5 \strokec5 IN\cf4 \cb1 \strokec4 \
\cb3             \cf6 \strokec6 (\cf5 \strokec5 SELECT\cf4 \strokec4  ride_id\cb1 \
\cb3             \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year\cb1 \
\cb3             \cf5 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  ride_id\cb1 \
\cb3             \cf5 \strokec5 HAVING\cf4 \strokec4  \cf5 \strokec5 COUNT\cf6 \strokec6 (\cf4 \strokec4 ride_id\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 >\cf4 \strokec4  \cf7 \strokec7 1\cf6 \strokec6 )\cf4 \strokec4  \cb1 \
\cb3         \cf5 \strokec5 AND\cf4 \strokec4  \cf6 \strokec6 (\cf5 \strokec5 EXTRACT\cf6 \strokec6 (\cf4 \strokec4 MONTH \cf5 \strokec5 FROM\cf4 \strokec4  started_at\cf6 \strokec6 ))\cf4 \strokec4  = \cf7 \strokec7 11\cf6 \strokec6 )\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 # drop all duplicates from year table\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 DELETE\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year \cb1 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     ride_id \cf5 \strokec5 IN\cf4 \strokec4  \cf2 \strokec2 # duplicates\cf4 \cb1 \strokec4 \
\cb3         \cf6 \strokec6 (\cf5 \strokec5 SELECT\cf4 \strokec4  ride_id\cb1 \
\cb3         \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year \cb1 \
\cb3         \cf5 \strokec5 WHERE\cf4 \strokec4  ride_id \cf5 \strokec5 IN\cf4 \cb1 \strokec4 \
\cb3             \cf6 \strokec6 (\cf5 \strokec5 SELECT\cf4 \strokec4  ride_id\cb1 \
\cb3             \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year\cb1 \
\cb3             \cf5 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  ride_id\cb1 \
\cb3             \cf5 \strokec5 HAVING\cf4 \strokec4  \cf5 \strokec5 COUNT\cf6 \strokec6 (\cf4 \strokec4 ride_id\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 >\cf4 \strokec4  \cf7 \strokec7 1\cf6 \strokec6 ))\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 # add back in november dups\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  bikeshare.year \cb1 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.nov_dups;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 # no longer need nov_dups table\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 DROP\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  bikeshare.nov_dups;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 # check if ride_ids are now unique\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf5 \strokec5 COUNT\cf6 \strokec6 (\cf4 \strokec4 ride_id\cf6 \strokec6 )\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     bikeshare.year \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  ride_id \cf5 \strokec5 IN\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf6 \strokec6 (\cf5 \strokec5 SELECT\cf4 \strokec4  ride_id\cb1 \
\cb3     \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year\cb1 \
\cb3     \cf5 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  ride_id\cb1 \
\cb3     \cf5 \strokec5 HAVING\cf4 \strokec4  \cf5 \strokec5 COUNT\cf6 \strokec6 (\cf4 \strokec4 ride_id\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 >\cf4 \strokec4  \cf7 \strokec7 1\cf6 \strokec6 )\cf4 \strokec4 ;\cb1 \
\
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 ----- LIMITATION COLUMN 2 -- data doesn't match scenario\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 /* Scenario lists 4 types of bikes: hand tricycles,\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 cargo bikes, reclining bikes, and regular bikes.\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 Data only shows 3: electric, classic, docked. */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf5 \strokec5 DISTINCT\cf6 \strokec6 (\cf4 \strokec4 rideable_type\cf6 \strokec6 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.year;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* Lack of bike type data is a limitation to analysis\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 as scenario states 8% of customers used accessible bike types.\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 There are no nulls in this column so we can keep this data for cleaned set. */\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 # no nulls\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf5 \strokec5 COUNT\cf6 \strokec6 (*)\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.year\cb1 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  rideable_type \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ;\cb1 \
\
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 ----- ERROR COLUMN 3/4 -- ride starts after it ends\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 # compare start and end times for each month\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf5 \strokec5 COUNT\cf6 \strokec6 (*)\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  num_error, \cb1 \
\cb3     \cf5 \strokec5 EXTRACT\cf6 \strokec6 (\cf4 \strokec4 MONTH \cf5 \strokec5 FROM\cf4 \strokec4  started_at\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  month\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.year\cb1 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     ended_at \cf6 \strokec6 <\cf4 \strokec4  started_at\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     month\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     month;\cb1 \
\
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 ----- FIX COLUMN 3/4 -- swap mix-matched start and end datetimes\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 UPDATE\cf4 \strokec4  bikeshare.year \cf5 \strokec5 AS\cf4 \strokec4  year\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 # update the start and end times\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SET\cf4 \strokec4  year.\cf8 \strokec8 started_at\cf4 \strokec4  = fixed.started_at,\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     year.\cf8 \strokec8 ended_at\cf4 \strokec4  = fixed.ended_at \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf6 \strokec6 (\cf5 \strokec5 SELECT\cf4 \cb1 \strokec4 \
\cb3         ride_id, \cb1 \
\cb3         \cf2 \strokec2 # swap end and start times\cf4 \cb1 \strokec4 \
\cb3         ended_at \cf5 \strokec5 AS\cf4 \strokec4  started_at, started_at \cf5 \strokec5 AS\cf4 \strokec4  ended_at\cb1 \
\cb3     \cf5 \strokec5 FROM\cf4 \strokec4  \cb1 \
\cb3         bikeshare.year\cb1 \
\cb3     \cf2 \strokec2 # only swap where ride starts after it ends\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 WHERE\cf4 \strokec4  \cb1 \
\cb3         ended_at \cf6 \strokec6 <\cf4 \strokec4  started_at\cf6 \strokec6 )\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 AS\cf4 \strokec4  fixed\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 # only update for the fixed ride_id\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  year.\cf8 \strokec8 ride_id\cf4 \strokec4  = fixed.ride_id;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 # check start and end times\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf5 \strokec5 COUNT\cf6 \strokec6 (*)\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  num_error\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.year\cb1 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     ended_at \cf6 \strokec6 <\cf4 \strokec4  started_at;\cb1 \
\
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 ----- ERROR COLUMN 5-12 -- nulls in station data\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 /* Nulls exist in start_station_name, start_station_id,\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 end_station_name, end_station_id. We could extrapolate\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 from other entries, but we would have to do that manually because...*/\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 # start_lat and start_lng length varies\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf5 \strokec5 COUNT\cf6 \strokec6 (*)\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  dif_lat_lengths\cb1 \
\cf5 \cb3 \strokec5 FROM\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf6 \strokec6 (\cf5 \strokec5 SELECT\cf4 \strokec4  \cf5 \strokec5 LENGTH\cf6 \strokec6 (\cf5 \strokec5 CAST\cf6 \strokec6 (\cf4 \strokec4 start_lat \cf5 \strokec5 AS\cf4 \strokec4  \cf5 \strokec5 STRING\cf6 \strokec6 ))\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  lat_length\cb1 \
\cb3     \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year \cb1 \
\cb3     \cf5 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  lat_length\cf6 \strokec6 )\cf4 \strokec4 ;\cb1 \
\
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 ----- FIX COLUMN 5-12 -- leave out station location info\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 /* It is a limitation to leave station location data out, \cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 but location data is not necessary for business focus of \cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 member vs. casual behavior. */\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 # Analyzing station data for member vs casual could be a possible next step\cf4 \cb1 \strokec4 \
\
\
\cf2 \cb3 \strokec2 ----- COLUMN 13 -- good to go!\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 # no nulls\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf5 \strokec5 COUNT\cf6 \strokec6 (*)\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  num_nulls\cb1 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.year\cb1 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  member_casual \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 # two categories like expected\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf5 \strokec5 DISTINCT\cf6 \strokec6 (\cf4 \strokec4 member_casual\cf6 \strokec6 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  bikeshare.year;\cb1 \
\
\
\
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 ### STEP 3 ### CREATE CLEANED DATA TABLE FOR ANALYSIS\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 /* To prepare for analysis, we add columns for \cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 month, day_of_week, am_pm, trip length, \cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 and further categorize casual users by pass type. */\cf4 \strokec4  \cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 DROP\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \cf5 \strokec5 IF\cf4 \strokec4  \cf5 \strokec5 EXISTS\cf4 \strokec4  bikeshare.year_cleaned;\cb1 \
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  bikeshare.year_cleaned \cf5 \strokec5 AS\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf6 \strokec6 (\cf5 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\cb3         ride_id, rideable_type, member_casual,\cb1 \
\
\cb3         \cf2 \strokec2 # pull name of month from datetime data type\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 FORMAT_DATETIME\cf6 \strokec6 (\cf9 \strokec9 "%B"\cf4 \strokec4 , started_at\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  month,\cb1 \
\cb3         \cb1 \
\cb3         \cf2 \strokec2 # pull name of weekday from datetime data type\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 FORMAT_DATETIME\cf6 \strokec6 (\cf9 \strokec9 "%A"\cf4 \strokec4 , started_at\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  day_of_week,\cb1 \
\cb3                 \cb1 \
\cb3         \cf2 \strokec2 # pull am/pm data from datetime datatype\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 FORMAT_DATETIME\cf6 \strokec6 (\cf9 \strokec9 "%p"\cf4 \strokec4 , started_at\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  am_pm, \cb1 \
\
\cb3         \cf2 \strokec2 # calculate length of trip in minutes\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 DATETIME_DIFF\cf6 \strokec6 (\cf4 \strokec4 ended_at, started_at, MINUTE\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  length_min,\cb1 \
\
\cb3         \cf2 \strokec2 # categorize casual passes into "single use" and "day pass"\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 # time limits for pass types are available on data host's website\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 CASE\cf4 \strokec4  \cb1 \
\cb3             \cf5 \strokec5 WHEN\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4  = \cf9 \strokec9 "casual"\cf4 \strokec4  \cf5 \strokec5 AND\cf4 \strokec4  \cb1 \
\cb3                 \cf5 \strokec5 DATETIME_DIFF\cf6 \strokec6 (\cf4 \strokec4 ended_at, started_at, MINUTE\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 <=\cf4 \strokec4  \cf7 \strokec7 30\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 "single_use"\cf4 \cb1 \strokec4 \
\cb3             \cf5 \strokec5 WHEN\cf4 \strokec4  \cf8 \strokec8 member_casual\cf4 \strokec4  = \cf9 \strokec9 "casual"\cf4 \strokec4  \cf5 \strokec5 AND\cf4 \strokec4  \cb1 \
\cb3                 \cf5 \strokec5 DATETIME_DIFF\cf6 \strokec6 (\cf4 \strokec4 ended_at, started_at, MINUTE\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 >\cf4 \strokec4  \cf7 \strokec7 30\cf4 \strokec4  \cf5 \strokec5 THEN\cf4 \strokec4  \cf9 \strokec9 "day_pass"\cf4 \cb1 \strokec4 \
\cb3             \cf5 \strokec5 ELSE\cf4 \strokec4  \cf9 \strokec9 "member"\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 END\cf4 \strokec4  \cb1 \
\cb3         \cf5 \strokec5 AS\cf4 \strokec4  pass_type, \cb1 \
\cb3     \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year\cb1 \
\cb3     \cf6 \strokec6 )\cf4 \strokec4 ;\cb1 \
\
\
\
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 ### STEP 4 ### DATA VALIDATION ON CLEANED DATA\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 ----- ERROR Ride Length ----- range of ride length is outside scope of business objective\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 # range of ride length is 0-55944 minutes!\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf5 \strokec5 MAX\cf6 \strokec6 (\cf4 \strokec4 ride_length\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  max_length,\cb1 \
\cb3     \cf5 \strokec5 MIN\cf6 \strokec6 (\cf4 \strokec4 ride_length\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  min_length\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf2 \strokec2 # subquery calculates ride length in minutes\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 (\cf5 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\cb3         \cf5 \strokec5 DATETIME_DIFF\cf6 \strokec6 (\cf4 \strokec4 ended_at, started_at, MINUTE\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  ride_length\cb1 \
\cb3     \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year\cf6 \strokec6 )\cf4 \strokec4 ;\cb1 \
\
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 /* We need to drop data for rides of length 0 and rides over 1440 minutes. (24 hours * 60 minutes = 1440 minutes in a day)\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 Both of these special cases do not represent the majority of users:\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2         # 0 minute rides represent a malfunction in tracking equipment \cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2             or a customer error of taking a bike out and putting it back almost immediately\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2         # rides over 1440 minutes long are outside the time allowance of any pass type.\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2             These rides would be assessed additional fees */\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 # Including rides of length 0 and over 1440 throws off analysis\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     a.pass_type, \cf5 \strokec5 AVG\cf6 \strokec6 (\cf4 \strokec4 a.length_min\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  avg_all, \cb1 \
\cb3     b.avg_no_1440, c.avg_no_zeros\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf6 \strokec6 (\cf4 \strokec4 bikeshare.year_cleaned \cf5 \strokec5 AS\cf4 \strokec4  a\cb1 \
\cb3     \cf5 \strokec5 INNER\cf4 \strokec4  \cf5 \strokec5 JOIN\cf4 \strokec4  \cf6 \strokec6 (\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 SELECT\cf4 \strokec4  pass_type, \cf5 \strokec5 AVG\cf6 \strokec6 (\cf4 \strokec4 length_min\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  avg_no_1440\cb1 \
\cb3         \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year_cleaned\cb1 \
\cb3         \cf5 \strokec5 WHERE\cf4 \strokec4  length_min \cf6 \strokec6 <\cf4 \strokec4  \cf7 \strokec7 1440\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  pass_type\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  b\cb1 \
\cb3     \cf5 \strokec5 ON\cf4 \strokec4  a.\cf8 \strokec8 pass_type\cf4 \strokec4  = b.pass_type\cf6 \strokec6 )\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 INNER\cf4 \strokec4  \cf5 \strokec5 JOIN\cf4 \strokec4  \cf6 \strokec6 (\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf5 \strokec5 SELECT\cf4 \strokec4  pass_type, \cf5 \strokec5 AVG\cf6 \strokec6 (\cf4 \strokec4 length_min\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  avg_no_zeros\cb1 \
\cb3     \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year_cleaned\cb1 \
\cb3     \cf5 \strokec5 WHERE\cf4 \strokec4  length_min \cf6 \strokec6 <\cf4 \strokec4  \cf7 \strokec7 1440\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 AND\cf4 \strokec4  length_min \cf6 \strokec6 >\cf4 \strokec4  \cf7 \strokec7 0\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  pass_type\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  c\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 ON\cf4 \strokec4  a.\cf8 \strokec8 pass_type\cf4 \strokec4  = c.pass_type\cb1 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     pass_type, avg_no_1440, avg_no_zeros;\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 # average length for day pass: 95.1 mins (with all data); 71.42 (with filtered data)\cf4 \cb1 \strokec4 \
\
\
\
\cf2 \cb3 \strokec2 ----- FIX Ride Length ----- update cleaned data to reflect scope of business objective\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 DELETE\cf4 \strokec4  \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year_cleaned \cb1 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  ride_id \cf5 \strokec5 IN\cf4 \strokec4  \cf6 \strokec6 (\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf5 \strokec5 SELECT\cf4 \strokec4  ride_id\cb1 \
\cb3     \cf5 \strokec5 FROM\cf4 \strokec4  bikeshare.year_cleaned\cb1 \
\cb3     \cf5 \strokec5 WHERE\cf4 \strokec4  length_min \cf6 \strokec6 <\cf4 \strokec4  \cf7 \strokec7 0\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 OR\cf4 \strokec4  length_min \cf6 \strokec6 >\cf4 \strokec4  \cf7 \strokec7 1440\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 )\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 # 3652 rows removed\cf4 \cb1 \strokec4 \
\
}