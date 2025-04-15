{{ config(materialized='incremental') }}

SELECT
  Student_ID,
  Course_Name,
  Enrollment_Date,
  Last_Activity_Date,
  Completed_Modules,
  Total_Time_Spent_Hours,
  Active_Days
FROM {{ ref('stg_student_engagement') }}