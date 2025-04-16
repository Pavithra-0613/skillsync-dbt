{{ config(materialized='view') }}

SELECT *
FROM skillsync_raw.stg_employer_hiring
