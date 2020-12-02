--SELECT MIN(rating) AS anime_rating from anime_list;
select username, max(rating) from anime_list inner join users using (user_id) group by user_id, username;

SELECT title, COUNT(anime_id) AS anime_count from anime INNER JOIN anime_list USING(anime_id) GROUP BY anime_id ORDER BY anime_count DESC LIMIT 10;

SELECT title, AVG(rating) AS anime_rating FROM anime INNER JOIN anime_list USING(anime_id) GROUP BY anime_id ORDER BY anime_rating HAVING anime_rating > 7;

SELECT title FROM anime WHERE description ~* 'high school';

SELECT username FROM users WHERE username LIKE 'a_%';
