SELECT DISTINCT
  Date,
  EXTRACT(YEAR FROM Date) AS Year,
  EXTRACT(MONTH FROM Date) AS Month,
  EXTRACT(DAY FROM Date) AS Day
FROM {{ ref('stg_platform_performance') }};