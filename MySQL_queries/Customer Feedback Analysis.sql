#(CUSTOMER FEEDBACK ANALYSIS)

-- Average Rating
SELECT AVG(rating)
FROM blinkit_customer_feedback;

-- Sentiment Distribution
SELECT
sentiment,
COUNT(*)
FROM blinkit_customer_feedback
GROUP BY sentiment;

-- Feedback Categories
SELECT
feedback_category,
COUNT(*)
FROM blinkit_customer_feedback
GROUP BY feedback_category;