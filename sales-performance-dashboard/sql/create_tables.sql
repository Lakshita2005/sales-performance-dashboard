CREATE DATABASE sales_performance;
USE sales_performance;

CREATE TABLE sales_staging (
    row_id VARCHAR(20),
    order_id VARCHAR(50),
    order_date VARCHAR(50),
    ship_date VARCHAR(50),
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country_region VARCHAR(50),
    city VARCHAR(50),
    state_province VARCHAR(50),
    postal_code VARCHAR(20),
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(200),
    sales VARCHAR(50),
    quantity VARCHAR(20),
    discount VARCHAR(20),
    profit VARCHAR(50)
);

LOAD DATA INFILE 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cleaned_superstore.csv'
INTO TABLE sales_staging
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE sales_data (
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    sales DECIMAL(12,2),
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(12,2)
);

INSERT INTO sales_data
SELECT
    order_id,

    CASE
        WHEN order_date LIKE '____-__-__'
        THEN STR_TO_DATE(order_date, '%Y-%m-%d')
        ELSE STR_TO_DATE(order_date, '%d-%m-%Y')
    END,

    CASE
        WHEN ship_date LIKE '____-__-__'
        THEN STR_TO_DATE(ship_date, '%Y-%m-%d')
        ELSE STR_TO_DATE(ship_date, '%d-%m-%Y')
    END,

    region,
    category,
    sub_category,

    CAST(REPLACE(sales, ',', '') AS DECIMAL(10,2)),
    quantity,
    discount,
    CAST(REPLACE(profit, ',', '') AS DECIMAL(10,2))

FROM sales_staging;

SELECT MIN(sales), MAX(sales), MIN(profit), MAX(profit)
FROM sales_data;

SELECT count(*) FROM sales_data;

DESCRIBE sales_data;
