{{ config(materialized='table') }}

SELECT DISTINCT
  Course_Name AS course_name
FROM {{ ref('stg_student_engagement') }}
