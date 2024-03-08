CREATE TABLE dimMovie 
(
	movie_key SERIAL PRIMARY KEY,
	film_id smallint NOT NULL,
	title VARCHAR(255) NOT NULL,
	description  TEXT,
	release_year YEAR,
	language  VARCHAR(20) NOT NULL,
	original_language VARCHAR(20),
	rental_duration smallint NOT NULL,
	length  smallint NOT NULL,
	rating VARCHAR(5) NOT NULL,
	special_features VARCHAR(60) NOT NULL
);