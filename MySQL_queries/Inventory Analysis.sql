#(INVENTORY ANALYSIS)

-- Products with Low Stock
SELECT * FROM blinkit_products
WHERE min_stock_level >= max_stock_level;

-- Damaged Stock
SELECT SUM(damaged_stock)
FROM blinkit_inventory;

-- Stock Received
SELECT
SUM(stock_received)
FROM blinkit_inventory;

