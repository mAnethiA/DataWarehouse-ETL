INSERT INTO dimMovie(movie_key,film_id,title,description,release_year,language1,
					original_language,rental_duration,f_length,rating,
					special_features)
SELECT f.film_id as movie_key,
	   f.film_id,
	   f.title,
	   f.description,
	   f.release_year,
	   l.name as language1,
	   l.name as original_language,
	   f.rental_duration,
	   f.length as f_length,
	   f.rating,
	   f.special_features
FROM film as f
join language as l on f.language_id=l.language_id;

select * from dimMovie;