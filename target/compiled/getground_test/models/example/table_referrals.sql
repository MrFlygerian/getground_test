

SELECT
  id::varchar
  , created_at::timestamp
  , updated_at::timestamp
  , company_id
  , partner_id
  , consultant_id
  , status
  , is_outbound::boolean
FROM `getground-test`.`blessed`.`referrals`