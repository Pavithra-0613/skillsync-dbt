SELECT DISTINCT
  Required_Skills
FROM {{ ref('stg_employer_hiring') }};