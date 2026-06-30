#(MARKETTING ANALYSIS)

-- Total Marketing Spend
SELECT
SUM(spend)
FROM blinkit_marketing_performance;

-- Highest Revenue Campaign
SELECT
campaign_name,
revenue_generated
FROM blinkit_marketing_performance
ORDER BY revenue_generated DESC
LIMIT 10;

-- Best ROAS (Return on Advertising Spend) Campaign
SELECT
campaign_name,
roas
FROM blinkit_marketing_performance
ORDER BY roas DESC LIMIT 10;

