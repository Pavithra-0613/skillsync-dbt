SELECT
  Job_ID,
  Company_Name,
  Job_Title,
  Required_Skills,
  Salary_Offered,
  Job_Location,
  Job_Posting_Date,
  Applications_Received,
  Hires_Made,
  Employment_Type
FROM {{ ref('stg_employer_hiring') }};