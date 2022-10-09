{{
  config(
    schema='dbt_bchianumba'
    , materialized='table'
  )
}}

WITH partners AS (
  SELECT
    id AS partner_id
    , created_at
    , updated_at
    , partner_type
    , lead_sales_contact
  FROM {{ ref('stg_partners') }} AS p
)

, sales_people AS (
    SELECT
      name
      , country
    FROM {{ ref('stg_sales_people') }} AS s
)

, referrals AS (
    SELECT
      id AS referral_id
      , created_at
      , updated_at
      , company_id
      , partner_id
      , consultant_id
      , status
      , is_outbound
    FROM {{ ref('stg_referrals') }} AS r
)

SELECT
  p.partner_id
  , p.created_at AS p_created_at
  , p.updated_at AS p_updated_at
  , r.created_at AS r_created_at
  , r.updated_at AS r_updated_at

FROM
