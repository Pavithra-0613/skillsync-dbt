SELECT
  Student_ID,
  Course_Name,
  User_Level,
  TO_DATE(Enrollment_Date, 'DD-MM-YYYY') AS Enrollment_Date,
  Completed_Modules,
  Average_Score,
  TO_DATE(Last_Activity_Date, 'DD-MM-YYYY') AS Last_Activity_Date,
  Total_Time_Spent_Hours,
  Active_Days,
  Certification_Obtained
FROM skillsync_raw.staging.student_engagement;