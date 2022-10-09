{{ config(severity='error') }}

SELECT
  id
  , COUNT(*) AS row_count
FROM {{ ref('stg_referral') }}
GROUP BY id
HAVING row_count > 1
