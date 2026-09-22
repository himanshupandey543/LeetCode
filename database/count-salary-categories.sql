# Write your MySQL query statement below
select'Low Salary' as category,count(if(income<20000,1,null)) as accounts_count
from Accounts union all select 'Average Salary',count(if(income>=20000 and income<=50000,1,null)) from Accounts union all select 'High Salary',count(if(income>50000,1,null)) from Accounts;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna