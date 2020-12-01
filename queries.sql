--SELECT anime.title, COUNT(genre_id) AS genre_count from anime INNER JOIN genre_to USING(anime_id) GROUP BY anime_id ORDER BY anime_id;
--SELECT title, AVG(rating) AS anime_rating from anime INNER JOIN anime_list USING(anime_id) GROUP BY anime_id ORDER BY anime_rating DESC LIMIT 1;

SELECT MIN(rating) AS anime_rating from anime_list;

SELECT title, COUNT(anime_id) AS anime_count from anime INNER JOIN anime_list USING(anime_id) GROUP BY anime_id ORDER BY anime_count DESC LIMIT 10;

SELECT title, AVG(rating) AS anime_rating FROM anime INNER JOIN anime_list USING(anime_id) GROUP BY anime_id ORDER BY anime_rating HAVING anime_rating > 7;

SELECT title FROM anime WHERE description ~* 'high school';

SELECT username FROM users WHERE username LIKE 'a_%';
