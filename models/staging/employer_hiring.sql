SELECT
  Job_ID,
  Company_Name,
  Job_Title,
  Required_Skills,
  Salary_Offered,
  Job_Location,
  TO_DATE(Job_Posting_Date, 'DD-MM-YYYY') AS Job_Posting_Date,
  Applications_Received,
  Hires_Made,
  Employment_Type
FROM skillsync_raw.staging.employer_hiring;