#(KPIs)
-- 1. Total Customers
SELECT COUNT(*) AS total_customers
FROM blinkit_customers;

-- 2. Total Orders
SELECT COUNT(*) AS total_orders
FROM blinkit_orders;

-- 3. Total Products
SELECT COUNT(*) AS total_products
FROM blinkit_products;

-- 4. Total Revenue
SELECT ROUND(SUM(order_total),2) AS total_revenue
FROM blinkit_orders;

-- 5. Average Order Value
SELECT ROUND(AVG(order_total),2) AS average_order_value
FROM blinkit_orders;

-- 6. Average Customer Rating
SELECT ROUND(AVG(rating),2) AS average_rating
FROM blinkit_customer_feedback;

-- 7. Total Marketing Spend
SELECT ROUND(SUM(spend),2) AS marketing_spend
FROM blinkit_marketing_performance;

-- 8. Revenue from Marketing Campaigns
SELECT ROUND(SUM(revenue_generated),2) AS marketing_revenue
FROM blinkit_marketing_performance;

-- 9. Total New Damaged Stock
SELECT SUM(damaged_stock) AS damaged_stock
FROM blinkit_inventorynew;

-- 10. Total New Stock Received
SELECT SUM(stock_received) AS stock_received
FROM blinkit_inventorynew;
