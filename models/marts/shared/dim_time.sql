WITH dates AS (
  SELECT DATEADD(DAY, SEQ4(), '2020-01-01') AS date
  FROM TABLE(GENERATOR(ROWCOUNT => 365 * 10)) -- 10 years
)
SELECT
  TO_DATE(date) AS date_key,
  EXTRACT(YEAR FROM date) AS year,
  EXTRACT(MONTH FROM date) AS month,
  EXTRACT(DAY FROM date) AS day,
  EXTRACT(QUARTER FROM date) AS quarter,
  TO_CHAR(date, 'Day') AS day_name,
  TO_CHAR(date, 'Mon') AS month_name
FROM dates
