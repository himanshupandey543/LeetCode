# Write your MySQL query statement below
# Write your MySQL query statement below

with cte as(select requester_id id from RequestAccepted union all select accepter_id id from RequestAccepted) select id,count(*) as num from cte 
group by id order by num desc limit 1; 

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna