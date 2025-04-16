{{ config(materialized='table') }}

SELECT DISTINCT
  User_Level AS user_level
FROM {{ ref('stg_student_engagement') }}
