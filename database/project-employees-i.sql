# Write your MySQL query statement below
select project_id,round(avg(experience_years),2) as average_years from Project join Employee on Project.employee_id=Employee.employee_id group by project_id;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna