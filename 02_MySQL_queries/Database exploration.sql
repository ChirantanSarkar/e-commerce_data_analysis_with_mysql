#(DATA EXPLORATION)

-- Selecting database
USE blinkit;

-- Checking the tables in the database
SHOW TABLES;

-- Checking table information
DESCRIBE blinkit_customers;
DESCRIBE blinkit_orders;
DESCRIBE blinkit_order_items;
DESCRIBE blinkit_products;
DESCRIBE blinkit_inventory;
DESCRIBE blinkit_delivery_performance;
DESCRIBE blinkit_customer_feedback;
DESCRIBE blinkit_marketing_performance;

-- Counting table records
SELECT COUNT(*) FROM blinkit_customer_feedback;
SELECT COUNT(*) FROM blinkit_customers;
SELECT COUNT(*) FROM blinkit_delivery_performance;
SELECT COUNT(*) FROM blinkit_inventory;
SELECT COUNT(*) FROM blinkit_inventorynew;
SELECT COUNT(*) FROM blinkit_marketing_performance;
SELECT COUNT(*) FROM blinkit_order_items;
SELECT COUNT(*) FROM blinkit_orders;
SELECT COUNT(*) FROM blinkit_products;

