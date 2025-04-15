sql
Copy
Edit
{{ config(materialized='incremental') }}

SELECT
    f.Student_ID,
    f.Course_Name,
    f.Feedback_Score,
    f.Feedback_Comment,
    f.Submitted_On
FROM {{ ref('stg_feedback') }} f
