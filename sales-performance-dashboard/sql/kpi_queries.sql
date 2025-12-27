USE sales_performance;

-- Daily Revenue
SELECT 
    order_date,
    SUM(sales) AS daily_revenue
FROM sales_data
GROUP BY order_date
ORDER BY order_date;

-- Weekly Revenue
SELECT 
    YEAR(order_date) AS year,
    WEEK(order_date) AS week,
    SUM(sales) AS weekly_revenue
FROM sales_data
GROUP BY year, week
ORDER BY year, week;

-- Units Sold
SELECT 
    SUM(quantity) AS total_units_sold
FROM sales_data;

-- Region-wise Revenue
SELECT 
    region,
    SUM(sales) AS total_revenue
FROM sales_data
GROUP BY region
ORDER BY total_revenue DESC;

-- Return Rate
SELECT 
    category,
    ROUND(AVG(discount) * 100, 2) AS avg_discount_percentage
FROM sales_data
GROUP BY category;

-- Overall Business KPIs
CREATE VIEW kpi_overall AS
SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_pct,
    SUM(quantity) AS total_quantity
FROM sales_data;

-- Monthly Sales and Profit Trend
CREATE VIEW kpi_monthly_trend AS
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

-- Category-wise Performance
CREATE VIEW kpi_category AS
SELECT
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin
FROM sales_data
GROUP BY category;

-- Sub-Category Performace
CREATE VIEW kpi_sub_category AS
SELECT
    category,
    sub_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY category, sub_category
ORDER BY total_sales DESC;

-- Region-wise Sales and profit
CREATE VIEW kpi_region AS
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY region;




