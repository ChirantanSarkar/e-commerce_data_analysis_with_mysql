#1. Customer Orders (INNER JOIN)
-- Which customers have placed the highest number of orders?
SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM blinkit_customers c
INNER JOIN blinkit_orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_orders DESC
LIMIT 10;

#2. Customer Revenue Analysis
-- Which customers generated the highest revenue?
SELECT
    c.customer_name,
    ROUND(SUM(o.order_total),2) AS total_spent
FROM blinkit_customers c
INNER JOIN blinkit_orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 10;

#3. Product Sales Analysis
-- Which products are sold most frequently?
SELECT
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM blinkit_products p
INNER JOIN blinkit_order_items oi
    ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 10;

#4. Category Revenue Analysis
-- Which product categories generate the most revenue?
SELECT
    p.category,
    ROUND(SUM(oi.quantity * oi.unit_price),2) AS revenue
FROM blinkit_products p
INNER JOIN blinkit_order_items oi
    ON p.product_id = oi.product_id
GROUP BY p.category
ORDER BY revenue DESC;

#5. Customer Segment Performance
-- Which customer segment contributes the most revenue?
SELECT
    c.customer_segment,
    ROUND(SUM(o.order_total),2) AS revenue,
    COUNT(o.order_id) AS total_orders
FROM blinkit_customers c
INNER JOIN blinkit_orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_segment
ORDER BY revenue DESC;

#6. Delivery Performance by Customer
-- Which customers experienced the most delivery delays?
SELECT
    c.customer_name,
    COUNT(*) AS delayed_orders
FROM blinkit_customers c
INNER JOIN blinkit_orders o
    ON c.customer_id = o.customer_id
INNER JOIN blinkit_delivery_performance d
    ON o.order_id = d.order_id
WHERE d.delivery_status <> 'On Time'
GROUP BY c.customer_name
ORDER BY delayed_orders DESC
LIMIT 10;

#7. Customer Satisfaction by Segment
-- Which customer segment gives the highest ratings?
SELECT
    c.customer_segment,
    ROUND(AVG(f.rating),2) AS average_rating
FROM blinkit_customers c
INNER JOIN blinkit_customer_feedback f
    ON c.customer_id = f.customer_id
GROUP BY c.customer_segment
ORDER BY average_rating DESC;

#8. Inventory Status with Product Details
-- Which products have the highest damaged stock?
SELECT
    p.product_name,
    p.category,
    SUM(i.damaged_stock) AS damaged_stock
FROM blinkit_products p
INNER JOIN blinkit_inventorynew i
    ON p.product_id = i.product_id
GROUP BY p.product_name, p.category
ORDER BY damaged_stock DESC
LIMIT 10;

#9. Product Profitability
-- Which products have the highest profit margin?
SELECT
    product_name,
    category,
    price,
    mrp,
    margin_percentage
FROM blinkit_products
ORDER BY margin_percentage DESC
LIMIT 10;

#10. Marketing Campaign Performance
-- Which marketing campaigns generated the highest ROAS?
SELECT
    campaign_name,
    ROUND(SUM(spend),2) AS total_spend,
    ROUND(SUM(revenue_generated),2) AS total_revenue,
    ROUND(SUM(revenue_generated)/SUM(spend),2) AS roas
FROM blinkit_marketing_performance
GROUP BY campaign_name
ORDER BY roas DESC;