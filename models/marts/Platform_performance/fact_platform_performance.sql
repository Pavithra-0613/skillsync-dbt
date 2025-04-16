{{ config(materialized='table') }}

WITH source AS (
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
  FROM {{ ref('stg_platform_performance') }}
),

dim_time AS (
  SELECT *
  FROM {{ ref('dim_time') }}
)

SELECT
  s.Date AS platform_date,
  dt.date_key,
  s.Active_Users AS active_users,
  s.New_Enrollments AS new_enrollments,
  s.Course_Completions AS course_completions,
  s.Employer_Job_Postings AS employer_job_postings,
  s.Avg_Session_Duration_Minutes AS avg_session_duration,
  s.Platform_Crashes AS platform_crashes,
  s.Feedback_Score AS feedback_score,
  s.Mobile_vs_Web_Usage AS platform_type
FROM source s
LEFT JOIN dim_time dt
  ON s.Date = dt.date_key
