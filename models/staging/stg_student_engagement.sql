{{ config(materialized='view') }}

SELECT * FROM skillsync_raw.staging.student_engagement