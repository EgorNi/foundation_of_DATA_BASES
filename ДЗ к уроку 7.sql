Задание 1.

SELECT
*
FROM users
JOIN orders ON users.id = orders.user_id;

Задание 2.

SELECT
*
FROM shop.products
JOIN catalogs ON products.catalog_id = catalogs.id

Задание 3.
SELECT
f.id,
c.`name` AS `from`,
c2.`name` AS `to`
FROM flights f
JOIN cities c ON f.`from` = c.label
JOIN cities c2 ON f.`to` = c2.label