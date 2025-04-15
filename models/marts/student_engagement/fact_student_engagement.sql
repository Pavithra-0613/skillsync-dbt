WITH source AS (
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
  FROM {{ ref('stg_student_engagement') }}
),

dim_time AS (
  SELECT *
  FROM {{ ref('dim_time') }}
)

SELECT
  src.Student_ID,
  src.Course_Name,
  src.Enrollment_Date,
  dt.Date AS date_key,  -- from dim_time
  src.Completed_Modules,
  src.Average_Score AS assessment_score,
  src.Last_Activity_Date,
  src.Total_Time_Spent_Hours AS time_spent,
  src.Active_Days,
  CASE
    WHEN src.Certification_Obtained = 'Yes' THEN 1
    ELSE 0
  END AS course_certified_flag

FROM source AS src
LEFT JOIN dim_time dt
  ON src.Enrollment_Date = dt.Date
