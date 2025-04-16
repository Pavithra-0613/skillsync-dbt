{{ config(materialized='view') }}

SELECT * FROM skillsync_raw.stg_platform_performance
