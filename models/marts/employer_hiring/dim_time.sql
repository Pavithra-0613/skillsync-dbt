SELECT DISTINCT
  Job_Posting_Date AS Date,
  EXTRACT(YEAR FROM Job_Posting_Date) AS Year,
  EXTRACT(MONTH FROM Job_Posting_Date) AS Month,
  EXTRACT(DAY FROM Job_Posting_Date) AS Day
FROM {{ ref('stg_employer_hiring') }};