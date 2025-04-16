{{ config(materialized='table') }}

SELECT DISTINCT
  Required_Skills AS required_skills
FROM {{ ref('stg_employer_hiring') }}
