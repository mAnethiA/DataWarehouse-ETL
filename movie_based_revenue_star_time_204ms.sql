SELECT m.title, d.month,c.city,sum(sales_amount) as revenue
FROM factsales as f
join dimMovie as m on m.movie_key=f.movie_key
join dimDate as d on d.date_key=f.date_key
join dimCustomer as c on c.customer_key=f.customer_key
group by m.title,d.month,c.city
order by m.title,d.month,c.city,revenue desc;
