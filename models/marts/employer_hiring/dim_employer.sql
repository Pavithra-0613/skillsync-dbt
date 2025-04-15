SELECT DISTINCT
  Company_Name,
  Job_Location
FROM {{ ref('stg_employer_hiring') }};