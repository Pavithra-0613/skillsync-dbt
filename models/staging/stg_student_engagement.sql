{{ config(materialized='view') }}

SELECT * FROM skillsync_raw.stg_student_engagement