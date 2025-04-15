SELECT
  Student_ID,
  Course_Name,
  Enrollment_Date,
  Completed_Modules,
  Average_Score,
  Last_Activity_Date,
  Total_Time_Spent_Hours,
  Active_Days,
  Certification_Obtained
FROM {{ ref('stg_student_engagement') }};