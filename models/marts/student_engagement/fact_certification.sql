sql
Copy
Edit
{{ config(materialized='incremental') }}

SELECT
    s.Student_ID,
    s.Course_Name,
    c.Date_Certified,
    c.Certification_Obtained,
    c.Certification_Score,
    c.Attempts
FROM {{ ref('stg_student_engagement') }} s
JOIN {{ ref('stg_certification_data') }} c
    ON s.Student_ID = c.Student_ID AND s.Course_Name = c.Course_Name
WHERE c.Certification_Obtained = 'Yes'
