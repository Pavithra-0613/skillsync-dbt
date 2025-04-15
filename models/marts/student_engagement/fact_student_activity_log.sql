sql
Copy
Edit
{{ config(materialized='incremental') }}

SELECT
    Student_ID,
    Activity_Date,
    Course_Name,
    Modules_Accessed,
    Time_Spent_Hours,
    Session_Duration_Min,
    Device_Type
FROM {{ ref('stg_activity_logs') }}