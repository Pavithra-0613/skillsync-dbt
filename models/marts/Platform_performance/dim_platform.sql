SELECT DISTINCT
  Mobile_vs_Web_Usage AS Platform_Type
FROM {{ ref('stg_platform_performance') }};