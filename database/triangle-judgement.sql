# Write your MySQL query statement below
select x,y,z,case when x+y>z and y+z>x and z+x>y then "Yes" else "No" end as triangle from Triangle;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna