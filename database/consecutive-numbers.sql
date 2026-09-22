# Write your MySQL query statement below
select distinct l1.num as consecutiveNums from Logs l1,Logs l2,Logs l3 where l1.num=l2.num and l2.num=l3.num and l1.id=l2.id-1 and l2.id=l3.id-1;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna