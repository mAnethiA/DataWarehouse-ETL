select f.title as Title,sum(p.amount) as Revenue from payment as p
join rental as r on r.rental_id=p.rental_id
join inventory as i on i.inventory_id=r.inventory_id
join film as f on f.film_id=i.film_id
group by f.title
order by revenue DESC
