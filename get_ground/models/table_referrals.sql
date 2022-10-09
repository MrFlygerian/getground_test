{{ config(materialized='table') }}


SELECT
  id
  , created_at
  , updated_at
  , company_id
  , partner_id
  , consultant_id
  , status
  , is_outbound
FROM {{ ref('referrals') }}
