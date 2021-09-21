WITH base_sessions AS (
    SELECT * FROM {{ source('ga360', 'sessions') }}
)

SELECT * FROM base_sessions
