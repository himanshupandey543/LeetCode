# Write your MySQL query statement below
select s.score,count(distinct s1.score) as 'rank' from scores s left join scores s1 on s.score<=s1.score group by s.id order by s.score desc;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna