{{ config(materialized='incremental') }}

SELECT
  Student_ID,
  Course_Name,
  Enrollment_Date,
  Last_Activity_Date,
  Active_Days,
  Total_Time_Spent_Hours,
  Completed_Modules,
  Average_Score
FROM {{ ref('stg_student_engagement') }}