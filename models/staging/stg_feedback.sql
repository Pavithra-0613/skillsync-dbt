sql
Copy
Edit
SELECT
    Student_ID,
    Course_Name,
    Feedback_Score,
    Feedback_Comment,
    Submitted_On
FROM {{ source('raw', 'course_feedback') }}
