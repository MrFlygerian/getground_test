{{
  config(
    schema='dbt_bchianumba'
    , materialized='table'
  )
}}

SELECT
  CAST(id AS string) AS id
  , {{ unix_nano_to_timestamp('created_at') }} AS created_at -- converting nanoseconds into seconds
  , {{ unix_nano_to_timestamp('updated_at') }} AS updated_at -- converting nanoseconds into seconds
  , CAST(company_id AS int64) AS company_id
  , CAST(partner_id AS int64) AS partner_id
  , CAST(consultant_id AS int64) AS consultant_id
  , CAST(status AS string) AS status
  , CAST(is_outbound AS bool) AS is_outbound
FROM {{ ref('referrals') }}
