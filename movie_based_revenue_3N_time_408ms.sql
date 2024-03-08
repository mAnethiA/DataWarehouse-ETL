Select f.title, EXTRACT(month FROM p.payment_date) as month, ci.city, sum(p.amount) as revenue
From payment as p
join rental as r on p.rental_id=r.rental_id
join inventory as i on i.inventory_id=r.inventory_id
join film as f on f.film_id=i.film_id
join customer as c on p.customer_id=c.customer_id
join address as a on a.address_id=c.address_id
join city as ci on ci.city_id=a.city_id
group by f.title,month,ci.city
order by f.title,month,ci.city, revenue desc;