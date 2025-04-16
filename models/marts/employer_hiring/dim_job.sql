{{ config(materialized='table') }}

SELECT DISTINCT
  Job_Title AS job_title,
  Employment_Type AS employment_type
FROM {{ ref('stg_employer_hiring') }}
