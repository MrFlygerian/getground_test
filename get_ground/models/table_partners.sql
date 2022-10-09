{{ config(materialized='table') }}

SELECT
  id
  , created_at
  , updated_at
  , partner_type
  , lead_sales_contact
FROM {{ ref('partners') }}
