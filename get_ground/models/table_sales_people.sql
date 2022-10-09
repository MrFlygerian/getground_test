{{
  config(
    schema='dbt_bchianumba'
    , materialized='table'
  )
}}

SELECT
  name
  , country
FROM {{ ref('sales_people') }}
