{{
  config(
    schema='dbt_bchianumba'
    , materialized='table'
  )
}}

SELECT
  CAST(id AS int64) AS id
  , TIMESTAMP_SECONDS(CAST(created_at/1000000000 AS int64)) AS created_at
  , TIMESTAMP_SECONDS(CAST(updated_at/1000000000 AS int64)) AS updated_at
  , CAST(partner_type AS string) AS partner_type
  , CAST(lead_sales_contact AS string) AS lead_sales_contact
FROM {{ ref('partners') }}
