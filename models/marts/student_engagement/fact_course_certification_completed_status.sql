{{ config(materialized='incremental') }}

SELECT
  Student_ID,
  Course_Name,
  Enrollment_Date,
  Certification_Obtained,
  Average_Score
FROM {{ ref('stg_student_engagement') }}
WHERE Certification_Obtained = 'Yes'
