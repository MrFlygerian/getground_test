

  create or replace table `getground-test`.`blessed_blessed`.`table_partners`
  
  
  OPTIONS()
  as (
    
SELECT
  id
  , created_at
  , updated_at
  , partner_type
  , lead_sales_contact
FROM `getground-test`.`blessed`.`partners`
  );
  