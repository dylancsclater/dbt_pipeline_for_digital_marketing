WITH base_hits AS (
    SELECT * FROM {{ ref('base_sessions') }}, UNNEST(hits) as hit
)

SELECT * FROM base_hits