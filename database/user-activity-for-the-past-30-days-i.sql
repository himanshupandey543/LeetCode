# Write your MySQL query statement below
select activity_date as day,count(distinct user_id) as active_users from activity where(activity_date>"2019-06-27" and activity_date<="2019-07-27") group by activity_date;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna