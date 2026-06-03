-- Fabric notebook source

-- METADATA ********************

-- META {
-- META   "kernel_info": {
-- META     "name": "synapse_pyspark"
-- META   },
-- META   "dependencies": {
-- META     "lakehouse": {
-- META       "default_lakehouse": "9bfabca3-2775-479a-8442-ebc89b926c99",
-- META       "default_lakehouse_name": "lakehouse_meb_schema",
-- META       "default_lakehouse_workspace_id": "59cf439c-55de-44b7-8623-033ac3160d0a",
-- META       "known_lakehouses": [
-- META         {
-- META           "id": "9bfabca3-2775-479a-8442-ebc89b926c99"
-- META         }
-- META       ]
-- META     }
-- META   }
-- META }

-- MARKDOWN ********************

-- # Create materialized lake views 
-- 1. Use this notebook to create materialized lake views. 
-- 2. Select **Run all** to run the notebook. 
-- 3. When the notebook run is completed, return to your lakehouse and refresh your materialized lake views graph. 


-- CELL ********************

-- Welcome to your new notebook 
-- Type here in the cell editor to add code! 
CREATE MATERIALIZED LAKE VIEW <mlv_name> AS select_statement

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- ATTENTION: AI-generated code can include errors or operations you didn't intend. Review the code in this cell carefully before running it.

-- Create the schema if it doesn't exist
CREATE SCHEMA IF NOT EXISTS year_all;

-- Create the materialized view combining all green_tripdata from 2017 to 2022
CREATE MATERIALIZED LAKE VIEW year_all.green_tripdata_all AS
SELECT *, 2017 AS year FROM year_2017.green_tripdata_2017
UNION ALL
SELECT *, 2018 AS year FROM year_2018.green_tripdata_2018
UNION ALL
SELECT *, 2019 AS year FROM year_2019.green_tripdata_2019
UNION ALL
SELECT *, 2020 AS year FROM year_2020.green_tripdata_2020
UNION ALL
SELECT *, 2021 AS year FROM year_2021.green_tripdata_2021
UNION ALL
SELECT *, 2022 AS year FROM year_2022.green_tripdata_2022;

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }
