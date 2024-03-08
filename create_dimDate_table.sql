CREATE TABLE dimDate 
(
date_key INTEGER NOT NULL PRIMARY KEY,
date DATE NOT NULL,
year smallint NOT NULL,
quarter smallint NOT NULL,
week smallint NOT NULL,
day smallint NOT NULL,
month smallint NOT NULL,
is_weekend boolean
);

select column_name,data_type from information_schema.columns where table_name='dimDate'