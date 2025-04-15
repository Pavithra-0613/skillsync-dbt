{{ config(materialized='incremental') }}

SELECT
  Date,
  Feedback_Score,
  Mobile_vs_Web_Usage,
  Avg_Session_Duration_Minutes
FROM {{ ref('stg_platform_performance') }}
