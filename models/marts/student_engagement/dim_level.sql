SELECT DISTINCT
  User_Level
FROM {{ ref('stg_student_engagement') }};