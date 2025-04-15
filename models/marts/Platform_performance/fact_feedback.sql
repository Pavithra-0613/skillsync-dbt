{{ config(materialized='incremental') }}

SELECT
  Date,
  Feedback_Score,
  Platform_Crashes,
  Avg_Session_Duration_Minutes,
  Mobile_vs_Web_Usage
FROM {{ ref('stg_platform_performance') }}
