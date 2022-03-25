{{ config(
    materialized='table',
    partition_by={
      "field": "date",
      "data_type": "date",
      "granularity": "day"
    }
)}}

SELECT
    date,
    paid_platform,
    sum(cost) as cost,
    sum(impressions) as impressions,
    sum(sessions) as sessions
FROM
    `alert-acrobat-245513.cfy_db.c_marketing_dashboard_main`
GROUP BY
    1,2