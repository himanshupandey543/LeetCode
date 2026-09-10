# Write your MySQL query statement below
select distinct max(salary) as SecondHighestsalary from Employee where salary<(select max(salary) from Employee);

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna