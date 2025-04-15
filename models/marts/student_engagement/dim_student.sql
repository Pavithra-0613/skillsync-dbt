SELECT DISTINCT
  Student_ID,
  User_Level
FROM {{ ref('stg_student_engagement') }};