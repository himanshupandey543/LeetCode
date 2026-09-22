# Write your MySQL query statement below
with new_table as(select d.name as Department,e.name as Employee,e.salary as Salary,Dense_rank() over(partition by d.name order by e.salary desc) as ranking from Employee e left join Department d on e.departmentId=d.id) select Department,Employee,Salary from new_table where ranking<=3;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna