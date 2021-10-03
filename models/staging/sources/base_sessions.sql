WITH base_sessions AS (
    SELECT * FROM {{ source('ga360', 'ga_sessions_20170701') }}
)

SELECT * FROM base_sessions
