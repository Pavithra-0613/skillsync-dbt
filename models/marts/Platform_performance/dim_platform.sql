{{ config(materialized='table') }}

SELECT DISTINCT
  Mobile_vs_Web_Usage AS platform_type
FROM {{ ref('stg_platform_performance') }}
