{{
  config(
    schema='dbt_bchianumba'
    , materialized='table'
  )
}}

SELECT
  CAST(id AS string) AS id
  , TIMESTAMP_SECONDS(CAST(created_at/1000000000 AS int64)) AS created_at
  , TIMESTAMP_SECONDS(CAST(updated_at/1000000000 AS int64)) AS updated_at
  , CAST(company_id AS int64) AS company_id
  , CAST(partner_id AS int64) AS partner_id
  , CAST(consultant_id AS int64) AS consultant_id
  , CAST(status AS string) AS status
  , CAST(is_outbound AS bool) AS is_outbound
FROM {{ ref('referrals') }}
