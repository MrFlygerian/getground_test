{{
  config(
    schema='blessed'
    , materialized='table'
  )
}}

SELECT
  name
  , country
FROM {{ ref('sales_people') }}
