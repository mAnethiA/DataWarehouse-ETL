INSERT INTO dimCustomer (customer_key,customer_id,first_name, last_name,email,address,address2,
						 district,city,country,postal_code,phone,active,create_date,
						 start_date,end_date)
SELECT c.customer_id as customer_key,
	   c.customer_id,
	   c.first_name,
	   c.last_name,
	   c.email,
	   a.address,
	   a.address2,
	   a.district,
	   ci.city,
	   co.country,
	   a.postal_code,
	   a.phone,
	   c.active,
	   c.create_date,
	  now() AS start_date,
	  now() AS end_date
FROM customer AS c
join address AS a ON (a.address_id=c.address_id)
join city AS ci	ON (a.city_id=ci.city_id)
join country AS co ON (co.country_id=ci.country_id);

Select * from dimCustomer;