{{ config(materialized='incremental') }}

SELECT
  Student_ID,
  Course_Name,
  Completed_Modules,
  Average_Score,
  Total_Time_Spent_Hours,
  Active_Days
FROM {{ ref('stg_student_engagement') }}