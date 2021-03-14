SELECT
*,
AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) AS 'arrange age'
FROM `users`

SELECT
*,
GROUP_CONCAT(id) AS `users_id`,
DAYNAME(CONCAT(YEAR(NOW()), '-', MONTH (birthday_at), '-', DAY (birthday_at))) AS `day`,
COUNT(id) AS `amount_birthdays`,

FROM `users`

GROUP BY `day`

_____________________________
По желанию


SELECT
*,
ROUND(EXP(SUM(LN(id))), 0) AS `count`
FROM `users`
