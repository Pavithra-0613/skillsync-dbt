{{ config(materialized='table') }}

SELECT DISTINCT
  active_users,
  CASE
    WHEN active_users > 2000 THEN 'High'
    WHEN active_users BETWEEN 1000 AND 2000 THEN 'Medium'
    ELSE 'Low'
  END AS engagement_level
FROM {{ ref('stg_platform_performance') }}
