sql
Copy
Edit
SELECT
    Student_ID,
    Activity_Date,
    Course_Name,
    Modules_Accessed,
    Time_Spent_Hours,
    Session_Duration_Min,
    Device_Type
FROM {{ source('raw', 'activity_logs') }}
