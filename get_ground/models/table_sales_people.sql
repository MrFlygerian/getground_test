{{
  config(
    schema='dbt_bchianumba'
    , materialized='table'
  )
}}

SELECT
  CAST(name AS string) AS name
  , CAST(country AS string) AS country
FROM {{ ref('sales_people') }}
