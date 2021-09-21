WITH stg_hits AS (
    SELECT * FROM `bigquery-public-data.google_analytics_sample.ga_sessions_2017*`
)

SELECT * FROM stg_hits