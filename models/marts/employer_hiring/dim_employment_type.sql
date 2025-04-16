{{ config(materialized='table') }}

SELECT DISTINCT
  Employment_Type AS employment_type
FROM {{ ref('stg_employer_hiring') }}
