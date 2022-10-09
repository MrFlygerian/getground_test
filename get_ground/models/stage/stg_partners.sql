{{
  config(
    schema='dbt_bchianumba'
    , materialized='table'
  )
}}

SELECT
  CAST(id AS int64) AS id
  , {{ unix_nano_to_timestamp('created_at') }} AS created_at
  , {{ unix_nano_to_timestamp('updated_at') }} AS updated_at
  , CAST(partner_type AS string) AS partner_type
  , CAST(CASE WHEN lead_sales_contact = '0' THEN NULL ELSE lead_sales_contact END AS string) AS lead_sales_contact
FROM {{ ref('partners') }}
