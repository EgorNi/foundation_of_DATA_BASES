UPDATE `users_hw` SET
	 `created_at` = '06.02.2021 06:00',
	 `updated_at` = '06.02.2021 06:00'
	 WHERE `idusers_hw` >= 1;
 
UPDATE `users_hw` SET
	`created_at` = STR_TO_DATE(created_at,'%d.%m.%Y %h:%i'),
	`updated_at` = STR_TO_DATE(updated_at,'%d.%m.%Y %h:%i')
	WHERE `idusers_hw` >= 1;

ALTER TABLE `vk`.`users_hw` 
CHANGE COLUMN `created_at` `created_at` DATETIME NOT NULL ,
CHANGE COLUMN `updated_at` `updated_at` DATETIME NOT NULL ;

TRUNCATE users_hw;

ALTER TABLE `vk`.`users_hw` 
CHANGE COLUMN `idusers_hw` `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `created_at` `values` INT NULL , RENAME TO  `vk`.`storehouses_products` ;

INSERT `storehouses_products` VALUES
(1, '250', 0),
(2, '50', 0),
(3, '100', 0),
(4, '150', 0),
(5, '200', 0),
(6, '500', 0),
(7, '0', 0),
(8, '0', 0),
(9, '0', 0);

SELECT * FROM `storehouses_products`

ORDER BY `values` = 0, `values`


ПО ЖЕЛАНИЮ
1)

SELECT
*,
MONTHNAME(birthday) AS `month_name`
FROM `vk`.`profiles`
WHERE birthday LIKE '%-05-%' OR birthday LIKE '%-08-%' 

ORDER BY month_name DESC


________________________________
2)

SELECT
*
FROM shop.catalogs

WHERE id IN (5, 1, 2)

ORDER BY id = 5 DESC, 1
