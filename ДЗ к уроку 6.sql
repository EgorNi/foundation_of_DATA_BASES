2)

SELECT
*,
COUNT(from_users_id) AS talkative_friends

FROM `messages`
WHERE from_users_id IN 
	(
    	SELECT	IF (from_users_id = 40, to_users_id, from_users_id) AS friend_id
	FROM `friend_requests`
	WHERE (from_users_id = 40 OR to_users_id = 40) AND `status` = 1
    ) AND to_users_id = 40
    
GROUP BY from_users_id

3)

SELECT
*,
SUM(id) AS number_likes
FROM vk.likes
WHERE users_id IN 
(
	SELECT
	TIMESTAMPDIFF(YEAR, birthday, NOW()) AS age_users
	FROM `vk`.`profiles`
	ORDER BY age_users
)
LIMIT 10

4)

SELECT
*,
COUNT(users_id) AS amount_users,
(SELECT `gender` FROM `profiles` WHERE profiles.users_id = likes.users_id) AS gender
FROM `vk`.`likes`

GROUP BY gender

5)

SELECT
*,
	(SELECT COUNT(*) FROM `posts` WHERE id = users_id) + 
    (SELECT COUNT(*) FROM `messages` WHERE from_users_id = users_id) + 
    (SELECT COUNT(*) FROM `likes` WHERE id = users_id) AS users_activity
FROM vk.posts
ORDER BY users_activity 
LIMIT 10