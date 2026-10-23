USE sales_analyst;

SHOW TABLES from sales_analyst;


SELECT *
FROM superstore_clean


SELECT COUNT(*) AS total_rows,
count( distinct "row id") as  unique_rows
from superstore_clean;
USE sales_analyst;
select 
sum (case when `i>>¿order_id` is null or trim (`i>>¿order id`)= " " then 1  else 0 end) as  missing_order_id,
sum(case when `customer_name` is null or trim (` customer_name`)=" " then 1  else 0 end) as  missing_customer,
sum(case when `category` is null or trim (` category`)=" " then 1  else 0 end) as  missing_category,
sum(case when `order date` is null then 1  else 0 end) as  missing_order_date  ,
sum(case when sales is null then 1  else 0 end) as  missing_sales,
sum(case when profit is null then 1  else 0 end) as  missing_profit
 from superstore_clean;
 SELECT SUM(1) AS test_result;
 DESCRIBE superstore_clean;
