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
CREATE MATERIALIZED LAKE VIEW year_2022.mlv_2022 AS select * from year_2022.green_tripdata_2022

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }
