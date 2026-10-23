USE sales_analyst;

SELECT
    YEAR(STR_TO_DATE(`Order Date`, '%Y-%m-%d')) AS sales_year,
    MONTH(STR_TO_DATE(`Order Date`, '%Y-%m-%d')) AS sales_month,
    SUM(Sales) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_work
WHERE `Order Date` IN ('2015-01-15', '2018-01-15')
GROUP BY sales_year, sales_month
ORDER BY sales_year ASC, sales_month ASC;
