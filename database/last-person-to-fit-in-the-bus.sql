# Write your MySQL query statement below
select person_name from(select *,sum(weight) over(order by turn) as total_weight from Queue) q where total_weight<=1000 order by total_weight desc limit 1;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna