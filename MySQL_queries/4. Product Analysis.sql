#PRODUCT ANALYSIS)

-- Most Expensive Products
SELECT
product_name,
price
FROM blinkit_products
ORDER BY price DESC
LIMIT 10;

-- Cheapest Products
SELECT
product_name,
price
FROM blinkit_products
ORDER BY price
LIMIT 10;

-- Category-wise Products
SELECT
category,
COUNT(*) Products
FROM blinkit_products
GROUP BY category
ORDER BY Products DESC;

-- Highest Margin Products
SELECT
product_name,
margin_percentage
FROM blinkit_products
ORDER BY margin_percentage DESC
LIMIT 10;