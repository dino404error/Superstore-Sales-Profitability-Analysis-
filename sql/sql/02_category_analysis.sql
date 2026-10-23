

SELECT
    SUM(CASE
        WHEN `ï»¿Order ID` IS NULL
          OR TRIM(`ï»¿Order ID`) = ''
        THEN 1 ELSE 0
    END) AS missing_order_id,

    SUM(CASE
        WHEN `Customer Name` IS NULL
          OR TRIM(`Customer Name`) = ''
        THEN 1 ELSE 0
    END) AS missing_customer,

    SUM(CASE
        WHEN Category IS NULL
          OR TRIM(Category) = ''
        THEN 1 ELSE 0
    END) AS missing_category,

    SUM(CASE
        WHEN `Order Date` IS NULL
          OR TRIM(`Order Date`) = ''
        THEN 1 ELSE 0
    END) AS missing_order_date,

    SUM(CASE
        WHEN Sales IS NULL
        THEN 1 ELSE 0
    END) AS missing_sales,

    SUM(CASE
        WHEN Profit IS NULL
        THEN 1 ELSE 0
    END) AS missing_profit

FROM superstore_clean;
SELECT
    COUNT(Sales) AS sales_count,
    COUNT(Profit) AS profit_count,
    MIN(Sales) AS minimum_sales,
    MAX(Sales) AS maximum_sales,
    MIN(Profit) AS minimum_profit,
    MAX(Profit) AS maximum_profit
FROM superstore_clean;
