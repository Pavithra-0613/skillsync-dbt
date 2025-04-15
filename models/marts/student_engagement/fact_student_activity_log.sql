{{ config(
    materialized = 'incremental',
    unique_key = ['Student_ID', 'Activity_Date', 'Course_Name']
) }}

WITH source AS (
    SELECT
        Student_ID,
        Activity_Date,
        Course_Name,
        Modules_Accessed,
        Time_Spent_Hours,
        Session_Duration_Min,
        Device_Type
    FROM {{ ref('stg_activity_logs') }}
    {% if is_incremental() %}
    WHERE Activity_Date > (SELECT MAX(Activity_Date) FROM {{ this }})
    {% endif %}
),

dim_time AS (
    SELECT *
    FROM {{ ref('dim_time') }}
)

SELECT
    s.Student_ID,
    s.Course_Name,
    s.Activity_Date,
    dt.Date AS date_key,
    s.Modules_Accessed,
    s.Time_Spent_Hours,
    s.Session_Duration_Min,
    s.Device_Type
FROM source s
LEFT JOIN dim_time dt
  ON s.Activity_Date = dt.Date
