WITH base_hits AS (
    SELECT * FROM {{ ref('base_sessions') }}, UNNEST(hits) as hits
)

SELECT * FROM base_hits