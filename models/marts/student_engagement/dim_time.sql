SELECT DISTINCT
  Enrollment_Date AS Date,
  EXTRACT(YEAR FROM Enrollment_Date) AS Year,
  EXTRACT(MONTH FROM Enrollment_Date) AS Month,
  EXTRACT(DAY FROM Enrollment_Date) AS Day
FROM {{ ref('stg_student_engagement') }};