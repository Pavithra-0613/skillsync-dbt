SELECT DISTINCT
  Job_Title,
  Employment_Type
FROM {{ ref('stg_employer_hiring') }};