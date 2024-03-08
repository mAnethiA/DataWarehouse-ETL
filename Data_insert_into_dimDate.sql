INSERT INTO dimDate
(date_key,date,year,quarter,week,day,month,is_weekend)
SELECT 
DISTINCT(TO_CHAR(payment_date :: DATE, 'yyyMMDD')::integer) as date_key,
date(payment_date) as date,
	EXTRACT(year from payment_date) as year,
	EXTRACT(quarter from payment_date) as quarter,
	EXTRACT(week from payment_date) as week,
	EXTRACT(day from payment_date) as day,
	EXTRACT(month from payment_date) as month,
	CASE WHEN EXTRACT(ISODOW FROM payment_Date) IN (6,7) THEN true ELSE false END
FROM payment;



