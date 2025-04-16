{{ config(materialized='table') }}

SELECT DISTINCT 
  platform_crashes AS crash_key,
  CASE
    WHEN platform_crashes = 0 THEN 'None'
    WHEN platform_crashes = 1 THEN 'Minor'
    WHEN platform_crashes = 2 THEN 'Moderate'
    WHEN platform_crashes = 3 THEN 'Severe'
    WHEN platform_crashes = 4 THEN 'Critical'
    ELSE 'Unknown'
  END AS crash_type
FROM {{ ref('stg_platform_performance') }}
