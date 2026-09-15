# Write your MySQL query statement below
select m.employee_id,m.name,count(e.employee_id) as reports_count,round(avg(e.age)) as average_age from Employees e join Employees m on e.reports_to=m.employee_id group by employee_id order by employee_id;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna