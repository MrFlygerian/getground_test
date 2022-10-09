{{ config(severity='error') }}

SELECT
  id
  , COUNT(*) AS row_count
FROM {{ ref('stg_referrals') }}
GROUP BY id
HAVING row_count > 1
