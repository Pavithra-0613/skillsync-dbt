SELECT DISTINCT
  Job_Location
FROM {{ ref('stg_employer_hiring') }};
