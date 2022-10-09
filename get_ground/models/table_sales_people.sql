{{ config(materialized='table') }}

SELECT
  name
  , country
FROM {{ ref('sales_people') }}
