# Write your MySQL query statement below
select round(avg(order_date=customer_pref_delivery_date)*100,2) as immediate_percentage from Delivery where(customer_id,order_date) in(select customer_id,min(order_date) from Delivery group by customer_id);

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna