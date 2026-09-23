# Write your MySQL query statement below
select actor_id,director_id from ActorDirector group by actor_id,director_id having Count(actor_id=director_id)>=3;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna