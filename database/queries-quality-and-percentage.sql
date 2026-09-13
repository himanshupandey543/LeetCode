# Write your MySQL query statement below
select query_name,round(avg(rating/position),2) as quality,round(100*sum(case when rating<3 then 1 else 0 end)/count(*),2) as poor_query_percentage from Queries group by query_name;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna