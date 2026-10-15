# Write your MySQL query statement below
select * from products where regexp_like(description,'(^|[^a-zA-Z0-9])SN[0-9]{4}-[0-9]{4}([^a-zA-Z0-9]|$)','c') order by product_id asc;