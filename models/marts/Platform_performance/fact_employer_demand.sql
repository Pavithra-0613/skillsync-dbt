{{ config(materialized='incremental') }}

SELECT
  Job_ID,
  Company_Name,
  Required_Skills,
  Applications_Received,
  Hires_Made
FROM {{ ref('stg_employer_hiring') }}
