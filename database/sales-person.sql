# Write your MySQL query statement below
select s.name from SalesPerson s where s.name not in(select s.name from SalesPerson s left join Orders o on s.sales_id=o.sales_id left join Company c on o.com_id=c.com_id where c.name='RED');

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna