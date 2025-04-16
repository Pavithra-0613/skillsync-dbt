{{ config(materialized='view') }}

SELECT * FROM skillsync_raw.staging.platform_performance
