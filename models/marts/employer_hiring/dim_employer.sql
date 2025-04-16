{{ config(materialized='table') }}

SELECT DISTINCT
  Company_Name AS employer_name,
  Job_Location AS job_location
FROM {{ ref('stg_employer_hiring') }}
