{{ config(severity='warn') }}

SELECT
    SUM(CASE WHEN r.id IS NULL THEN 1 ELSE 0 END) AS r_id_count
    , SUM(CASE WHEN p.id IS NULL THEN 1 ELSE 0 END) AS p_id_count
    , SUM(CASE WHEN r.partner_id IS NULL THEN 1 ELSE 0 END) AS r_pid_count
FROM {{ ref('stg_referrals') }} AS r
LEFT JOIN {{ ref('stg_partners') }} AS p
    ON r.partner_id = p.id
HAVING r_id_count > 0
    OR p_id_count > 0
    OR r_pid_count > 0
