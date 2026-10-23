use sales_analyst;
select discount ,
count(*) as total_records,
sum(sales) as total_sales,
round(sum(profit),2) as total_profit,
round(avg(discount)*100,2) as avg_discount_pct,
round(sum(profit) / nullif(sum(sales),0)*100,2) as profit_margin_pct
from superstore_work
group by discount
order by discount;

use sales_analyst;
select discount ,
count(*) as total_records,
sum(sales) as total_sales,
sum(profit) as total_profit,
round(avg (profit),2 )as avg_profit
from superstore_work
group by discount
order by discount;

use sales_analyst;
select `order date`
from superstore_work
limit 9994;
