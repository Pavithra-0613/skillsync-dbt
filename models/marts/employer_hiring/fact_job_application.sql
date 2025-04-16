WITH job_applications AS (
    SELECT
        e.job_id, 
        e.student_id,  
        e.application_status,  
        e.application_date,
        e.interview_date, 
        e.hiring_status, 
        e.job_role,  
        e.company_name, 
        e.salary_offered,
        e.application_channel, 
        e.region, 
        COUNT(e.student_id) AS total_applications  
    FROM {{ ref('stg_employer_hiring') }} AS e
    GROUP BY
        e.job_id,
        e.student_id,
        e.application_status,
        e.application_date,
        e.interview_date,
        e.hiring_status,
        e.job_role,
        e.company_name,
        e.salary_offered,
        e.application_channel,
        e.region
)

SELECT
    job_id,
    student_id,
    application_status,
    application_date,
    interview_date,
    hiring_status,
    job_role,
    company_name,
    salary_offered,
    application_channel,
    region,
    total_applications
FROM job_applications;