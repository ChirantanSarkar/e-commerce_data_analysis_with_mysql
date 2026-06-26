#(ORDER ANALYSIS)

-- Total Revenue
SELECT SUM(order_total)
FROM blinkit_orders;

-- Average Order Value
SELECT AVG(order_total)
FROM blinkit_orders;

-- Orders by Payment Method
SELECT payment_method,
COUNT(*) FROM blinkit_orders
GROUP BY payment_method;

-- Order Status Distribution
SELECT delivery_status,
COUNT(*) FROM blinkit_orders
GROUP BY delivery_status;