SELECT title, year, CAST(overseas_percent AS FLOAT) 'Money Earned % Overseas' FROM top_movies 
WHERE overseas_percent > 60.0 AND year= '2010' LIMIT 5; /* the list is exactly like this http://www.imdb.com/list/ls055899579/ */

/* movies in 2010 earned the most money abroad */

SELECT title, year, CAST(overseas_percent AS FLOAT) 'Money Earned % Overseas' FROM top_movies 
WHERE overseas_percent > 60.0 AND year= '2010' LIMIT 5;

SELECT COUNT (CAST (year AS REAL)) "Number of Movies Released in 2010" FROM top_movies WHERE year =2010;

SELECT COUNT (CAST (year AS REAL)) "Total Number of Top Movies Released from 1977-2015" FROM top_movies;

SELECT COUNT (CAST (year AS REAL)) "Total Number of Top Movies Released Between 2000-2014" FROM top_movies WHERE year BETWEEN 2000 AND 2017;

SELECT COUNT (year) FROM top_movies WHERE year ="2014";

/* Top 10 movies worldwide */

SELECT title, CAST(REPLACE(SUBSTR(worldwide,2),',','')AS real "Millions") FROM top_movies LIMIT 10;

/* One movie with the MAX money worldwide */

SELECT title, MAX (CAST(REPLACE(SUBSTR(worldwide,2),',','')AS real)) FROM top_movies;

/* One movie with the MIN money worldwide */

SELECT title, MIN (CAST(REPLACE(SUBSTR(worldwide,2),',','')AS real)) FROM top_movies;

/* average money earned */

SELECT AVG (CAST(REPLACE(SUBSTR(worldwide,2),',','')AS real)) FROM top_movies;

/* SUM of all the money earned through these movies */

SELECT SUM (CAST(REPLACE(SUBSTR(worldwide,2),',','')AS real)) FROM top_movies;

/* movies in 2012 */

SELECT title, (CAST(REPLACE(SUBSTR(worldwide,2),',','')AS real)) FROM top_movies GROUP BY title
HAVING year =2012;

/* Movies in 2012 by SONY and FOX */

SELECT title, studio, (CAST(REPLACE(SUBSTR(worldwide,2),',','')AS real)) FROM top_movies WHERE (studio = "Sony" OR studio = "Fox") AND year = 2012;

/* Top 10 oldest movies */

SELECT title, year FROM top_movies WHERE year BETWEEN 1900 AND 2000;

/* Oldest movie earned the most */

SELECT title, MAX (CAST(REPLACE(SUBSTR(worldwide,2),',','')AS real)) FROM top_movies WHERE year BETWEEN 1900 AND 2000;
