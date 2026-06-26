#(DELIVERY ANALYSIS)

-- Average Delivery Time
SELECT
AVG(delivery_time_minutes)
FROM blinkit_delivery_performance;

-- Delivery status
DESCRIBE blinkit_delivery_performance;
SELECT DISTINCT delivery_status FROM blinkit_delivery_performance;

-- On Time Delivery
SELECT *
FROM blinkit_delivery_performance
WHERE delivery_status='On Time';
-- Count
SELECT COUNT(*) FROM blinkit_delivery_performance
WHERE delivery_status='On Time';

-- Delayed Deliveries
-- Slightly Delayed
SELECT *
FROM blinkit_delivery_performance
WHERE delivery_status='Slightly Delayed';
-- Count
SELECT COUNT(*) FROM blinkit_delivery_performance
WHERE delivery_status='Slightly Delayed';

-- Significantly Delayed
SELECT *
FROM blinkit_delivery_performance
WHERE delivery_status='Significantly Delayed';
-- Count
SELECT COUNT(*) FROM blinkit_delivery_performance
WHERE delivery_status='Significantly Delayed';

-- Delay Reasons
SELECT
reasons_if_delayed,
COUNT(*)
FROM blinkit_delivery_performance
GROUP BY reasons_if_delayed
ORDER BY COUNT(*) DESC;



