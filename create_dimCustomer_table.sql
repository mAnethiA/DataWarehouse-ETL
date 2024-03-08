CREATE TABLE dimCustomer 
(
	customer_key SERIAL PRIMARY KEY,
	customer_id smallint NOT NULL,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	email VARCHAR(50),
	address VARCHAR(50) NOT NULL,
	address2 VARCHAR(50),
	district VARCHAR(20) NOT NULL,
	city VARCHAR(50) NOT NULL,
	country  VARCHAR(50) NOT NULL,
	postal_code VARCHAR(10),
	phone VARCHAR(20) NOT NULL,
	active smallint NOT NULL,
	create_date timestamp NOT NULL,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL
);