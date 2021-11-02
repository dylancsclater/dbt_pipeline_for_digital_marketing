WITH stg_hits AS (
    SELECT
    PARSE_DATE('%Y%m%d',date) AS date,
    CONCAT(CAST(fullvisitorid AS string),CAST(visitid AS string)) AS sessionId,
    trafficSource.source AS source,
    trafficSource.medium AS medium,
    trafficSource.keyword AS term,
    trafficSource.campaign AS campaign,
    trafficSource.adContent AS content,
    device.browser AS browser,
    device.deviceCategory AS device_category,
    geoNetwork.city AS city,
    geoNetwork.region AS region,
    src_hits.type AS hit_type,
    src_hits.time AS hit_time,
    src_hits.hitnumber AS hit_num,
    src_hits.page.pagePath AS Page,
    src_hits.page.hostname AS Hostname,
    fullvisitorid AS visitor_id,
    visitid AS visit_id,
    visitNumber AS visit_number,
    visitStartTime AS visit_start_time,
    totals.pageviews AS pageviews,
    totals.bounces AS bounces,
    totals.timeOnSite AS time_on_site,
    totals.visits AS total_visits,
    totals.newvisits AS new_visits,
    src_hits.time AS time,
    src_hits.latencyTracking.pageLoadTime AS page_load_time,
    src_hits.eventInfo.eventCategory AS event_category,
    src_hits.eventInfo.eventLabel AS event_label,
    clientId AS cid

    FROM {{ ref('base_sessions')}}, unnest(hits) AS src_hits
)

SELECT * FROM stg_hits