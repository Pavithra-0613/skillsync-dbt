-- models/fact/fact_job_application.sql

WITH job_applications AS (
    SELECT
        e.job_id,  -- Unique identifier for the job
        e.student_id,  -- Unique identifier for the student applying
        e.application_status,  -- Status of the application (e.g., "submitted", "interviewed", "hired")
        e.application_date,  -- Date when the application was submitted
        e.interview_date,  -- Date when the interview was conducted (if applicable)
        e.hiring_status,  -- Final hiring status (e.g., "hired", "not hired")
        e.job_role,  -- Role that the student applied for
        e.company_name,  -- Name of the employer
        e.salary_offered,  -- Salary offered (if hired)
        e.application_channel,  -- Channel through which the student applied (e.g., website, referral)
        e.region,  -- Geographical region of the job
        COUNT(e.student_id) AS total_applications  -- Aggregating the number of applications per job
    FROM {{ ref('staging_employer_hiring') }} AS e
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

-- Final Insert into the fact table
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