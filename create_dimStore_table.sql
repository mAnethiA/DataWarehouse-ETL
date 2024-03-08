CREATE TABLE dimStore 
(
	store_key SERIAL PRIMARY KEY,
	store_id smallint NOT NULL,
	address VARCHAR(50) NOT NULL,
	address2 VARCHAR(50),
	district  VARCHAR(20) NOT NULL,
	city VARCHAR(50) NOT NULL,
	country  VARCHAR(50) NOT NULL,
	postal_code VARCHAR(10),
	manager_first_name VARCHAR(45) NOT NULL,
	manager_last_name VARCHAR(45) NOT NULL,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL
);