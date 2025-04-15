{{ config(
    materialized = 'incremental',
    unique_key = ['Student_ID', 'Course_Name']
) }}

WITH source AS (
  SELECT
    Student_ID,
    Course_Name,
    Completed_Modules,
    Average_Score,
    Total_Time_Spent_Hours,
    Active_Days
  FROM {{ ref('stg_student_engagement') }}
  {% if is_incremental() %}
    WHERE Enrollment_Date > (SELECT MAX(Enrollment_Date) FROM {{ this }})
  {% endif %}
)

SELECT
  Student_ID,
  Course_Name,
  Completed_Modules,
  Average_Score AS assessment_score,
  Total_Time_Spent_Hours AS time_spent,
  Active_Days
FROM source
