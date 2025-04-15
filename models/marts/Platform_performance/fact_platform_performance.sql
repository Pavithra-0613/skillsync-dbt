SELECT
  Date,
  Active_Users,
  New_Enrollments,
  Course_Completions,
  Employer_Job_Postings,
  Avg_Session_Duration_Minutes,
  Platform_Crashes,
  Feedback_Score,
  Mobile_vs_Web_Usage
FROM {{ ref('stg_platform_performance') }};