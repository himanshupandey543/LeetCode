# Write your MySQL query statement below
select sell_date,count(distinct product) as num_sold,group_concat(distinct product order by product) as products from Activities group by sell_date;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna