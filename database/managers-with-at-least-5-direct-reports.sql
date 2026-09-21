# Write your MySQL query statement below
select e1.name from Employee e1 join Employee e2 on e1.id=e2.managerId group by e1.id having count(*)>=5;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna