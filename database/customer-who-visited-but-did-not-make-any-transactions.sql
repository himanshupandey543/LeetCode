# Write your MySQL query statement below
select v.customer_id,count(*) as count_no_trans from Visits v left join Transactions t on v.visit_id=t.visit_id where t.visit_id is null group by customer_id;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna