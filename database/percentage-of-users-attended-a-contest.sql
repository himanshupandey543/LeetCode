# Write your MySQL query statement below
select contest_id, round(count(user_id)*100/(select count(*) from Users),2) as percentage from Register group by contest_id order by percentage desc,contest_id asc;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna