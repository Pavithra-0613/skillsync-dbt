{{ config(materialized='table') }}

SELECT
  job_id,
  company_name,
  job_title,
  required_skills,
  salary_offered,
  job_location,
  job_posting_date,
  applications_received,
  hires_made,
  employment_type
FROM {{ ref('stg_employer_hiring') }}
