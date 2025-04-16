{{ config(materialized='table') }}

SELECT DISTINCT
  Job_Location AS job_location
FROM {{ ref('stg_employer_hiring') }}
