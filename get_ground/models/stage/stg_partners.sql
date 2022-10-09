{{
  config(
    schema='dbt_bchianumba'
    , materialized='table'
  )
}}

SELECT
  CAST(id AS int64) AS id
  , {{ unix_nano_to_timestamp('created_at') }} AS created_at -- converting nanoseconds into seconds
  , {{ unix_nano_to_timestamp('updated_at') }} AS updated_at -- converting nanoseconds into seconds
  , CAST(partner_type AS string) AS partner_type
  -- Assumption here is that 0 means no sales contact is associated
  , CAST(CASE WHEN lead_sales_contact = '0' THEN NULL ELSE lead_sales_contact END AS string) AS lead_sales_contact
FROM {{ ref('partners') }}
