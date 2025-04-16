{{ config(materialized='table') }}

WITH job_applications AS (
    SELECT
        job_id,
        application_status,
        application_date,
        interview_date,
        hiring_status,
        job_role,
        company_name,
        salary_offered,
        application_channel,
        region,
        COUNT(*) AS total_applications
    FROM {{ ref('stg_employer_hiring') }}
    GROUP BY
        job_id,
        application_status,
        application_date,
        interview_date,
        hiring_status,
        job_role,
        company_name,
        salary_offered,
        application_channel,
        region
)

SELECT
    job_id,
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
FROM job_applications