{{ config(materialized='table') }}

WITH job_applications AS (
    SELECT
        job_id,
        job_title,
        company_name,
        required_skills,
        salary_offered,
        job_location,
        job_posting_date,
        employment_type,
        applications_received,
        hires_made
    FROM {{ ref('stg_employer_hiring') }}
)

SELECT *
FROM job_applications
