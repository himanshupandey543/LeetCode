# Write your MySQL query statement below
select w1.id from weather w1 join weather w2 on datediff(w1.recordDate,w2.recordDate)=1 where w1.temperature>w2.temperature;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna