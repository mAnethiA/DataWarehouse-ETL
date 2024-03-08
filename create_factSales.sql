CREATE TABLE factSales 
(
	sales_key SERIAL PRIMARY KEY,
	date_key INTEGER REFERENCES dimDate(date_key),
	customer_key INTEGER REFERENCES dimCustomer(customer_key),
	movie_key INTEGER REFERENCES dimMovie(movie_key),
	store_key INTEGER REFERENCES dimStore(store_key),
	sales_amount numeric
);

select * from factsales;