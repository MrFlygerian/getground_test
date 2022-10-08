{{
  config(
    schema='blessed'
    materialized='table'
    dist='all'
    tags='backfill'
  )
}}

SELECT
  name
  , country
FROM {{ ref('sales_people') }}
