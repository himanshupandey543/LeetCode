# Write your MySQL query statement below
select employee_id from Employees where salary<30000 and manager_id is not null and manager_id not in(select employee_id from Employees) order by employee_id; 

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna