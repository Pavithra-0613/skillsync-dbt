{{ config(materialized='view') }}

SELECT *
FROM skillsync_raw.staging.stg_employer_hiring
