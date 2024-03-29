INSERT into factSales(date_key,customer_key,movie_key,store_key,sales_amount)
SELECT 
		TO_CHAR(payment_date :: DATE, 'yyyMMDD')::integer as date_key,
		p.customer_id as cutomer_key,
		i.film_id as movie_key,
		i.store_id as store_key,
		p.amount as sales_amount
from payment as p
join rental r ON (p.rental_id = r.rental_id)
join inventory i ON (r.inventory_id = i.inventory_id);
		
select * from factsales;