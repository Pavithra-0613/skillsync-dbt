SELECT DISTINCT
  Course_Name
FROM {{ ref('stg_student_engagement') }};