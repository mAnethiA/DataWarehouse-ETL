INSERT INTO dimStore(store_key,store_id,address,address2,district,city,country,
					postal_code,manager_first_name,manager_last_name,start_date,
					end_date)
SELECT store.store_id as store_key,
	   store.store_id,
	   a.address,
	   a.address2,
	   a.district,
	   c.city,
	   co.country,
	   a.postal_code,
	   s.first_name as manager_first_name,
	   s.last_name as manager_last_name,
	   now() AS start_date,
	   now() AS end_date
FROM store 
join staff as s on store.store_id=s.store_id
join address as a on s.address_id=a.address_id
join city as c on c.city_id=a.city_id
join country as co on co.country_id=c.country_id

select * from dimStore;
	   