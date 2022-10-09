

  create or replace table `getground-test`.`blessed_blessed`.`table_sales_people`
  
  
  OPTIONS()
  as (
    

SELECT
  name
  , country
FROM `getground-test`.`blessed`.`sales_people`
  );
  