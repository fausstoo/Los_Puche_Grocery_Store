USE los_puche;

-- A) Average monthly revenue over time
select month, round(AVG(total_rev), 1) as average_rev
			from (SELECT MONTH(dt) AS month, SUM(profit) as total_rev
FROM sales
WHERE month <> 6
AND month <> 12
GROUP BY dt) AS total_daily_rev
group by month;

-- Total monthly revenue over time
SELECT MONTH(dt) AS month, ROUND(SUM(profit),2) as total_rev
FROM sales
WHERE month <> 6
AND month <> 12
GROUP BY MONTH(dt);

-- Monthly % Change Table
SELECT a.month, a.total_rev, b.month AS next_month, b.total_rev as next_month_rev,
                               ROUND((cast(b.total_rev-a.total_rev as float) / a.total_rev)*100,2) AS pct_change
FROM monthly_rev a
LEFT JOIN monthly_rev b
ON ( a.month + 1 = b.month)
ORDER BY a.month;

-- Top 5 products by revenue
SELECT product, SUM(profit) AS total_rev
FROM sales
GROUP BY product
ORDER BY total_rev DESC
LIMIT 5;

-- Top 5 categories by revenue
SELECT category, ROUND(SUM(profit)) AS total_rev
FROM sales
GROUP BY category
ORDER BY total_rev DESC
LIMIT 5;

-- 5 least sold products by revenue
SELECT product, ROUND(SUM(profit)) AS total_rev
FROM sales
WHERE category IN ("Fotocopia", "Cigarrillo", "Cerveza", "Gaseosa", "Carga")
AND profit > 0
GROUP BY product
ORDER BY total_rev ASC
LIMIT 5;

-- 5 Least sold categories by revenue
SELECT category, ROUND(SUM(profit)) AS total_rev
FROM sales
WHERE profit > 0
GROUP BY category
ORDER BY total_rev ASC
LIMIT 5;

-- Top 5 products on Weekdays by revenue
SELECT product, sum(profit) as total_profit
FROM sales
WHERE DAYOFWEEK(dt) <> 1
OR DAYOFWEEK(dt) <> 7
GROUP BY product
ORDER BY total_profit DESC
LIMIT 5;

-- Top 5 products on Weekends by revenue
SELECT product, ROUND(SUM(profit)) as total_profit
FROM sales
WHERE DAYOFWEEK(dt) LIKE 1
OR DAYOFWEEK(dt) LIKE 7
GROUP BY product
ORDER BY total_profit DESC
LIMIT 5;

-- Top 5 categories on weekdays by revenue
SELECT category, ROUND(SUM(profit)) as total_profit
FROM sales
WHERE DAYOFWEEK(dt) <> 1
OR DAYOFWEEK(dt) <> 7
GROUP BY category
ORDER BY total_profit DESC
LIMIT 5;

-- Top 5 categories on weekends by revenue
SELECT category, ROUND(SUM(profit)) as total_profit
FROM sales
WHERE DAYOFWEEK(dt) LIKE 1
OR DAYOFWEEK(dt) LIKE 7
GROUP BY category
ORDER BY total_profit DESC
LIMIT 5;
