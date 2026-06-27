#(CUSTOMER ANALYSIS)

-- Top Customer Segments
SELECT customer_segment,
COUNT(*) Customers
FROM blinkit_customers
GROUP BY customer_segment
ORDER BY Customers DESC;

-- Highest Spending Customers by Average Order Value
SELECT
customer_name,
avg_order_value
FROM blinkit_customers
ORDER BY avg_order_value DESC
LIMIT 10;

-- Customers with most orders
SELECT
customer_name,
total_orders
FROM blinkit_customers
ORDER BY total_orders DESC
LIMIT 10;

