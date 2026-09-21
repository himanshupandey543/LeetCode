# Write your MySQL query statement below
select case when id%2=1 and id+1 in (select id from Seat) then id+1 when id%2=0 then id-1 else id end as id,student from Seat order by id;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna