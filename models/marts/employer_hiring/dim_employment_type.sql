SELECT DISTINCT
  Employment_Type
FROM {{ ref('stg_employer_hiring') }};