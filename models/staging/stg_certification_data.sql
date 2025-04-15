sql
Copy
Edit
SELECT
    Student_ID,
    Course_Name,
    Date_Certified,
    Certification_Obtained,
    Certification_Score,
    Attempts
FROM {{ source('raw', 'certification_data') }}