select b.city as City,sum(p.amount) as Revenue from payment p
join customer as c on p.customer_id=c.customer_id
join address as a on a.address_id = c.address_id
join city as b on b.city_id=a.city_id
group by b.city
order by revenue desc