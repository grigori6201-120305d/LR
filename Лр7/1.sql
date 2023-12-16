-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Создайте функцию, которая рассчитывает стоимость каждой аренды (для каждой записи таблицы bookings).*//*Создайте функцию, которая рассчитывает стоимость каждой аренды (для каждой записи таблицы bookings)*/
USE cd;
DELIMITER $$
DROP FUNCTION IF EXISTS CalculateRentalCost;
CREATE FUNCTION CalculateRentalCost(memid INT, facid INT, slots INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE cost INT;
	SET cost = (SELECT IF(memid = 0, guestcost * slots, membercost * slots)
	FROM facilities f WHERE facid = f.facid);
	RETURN cost;
END$$
DELIMITER ;
SELECT CalculateRentalCost(memid, facid, slots) AS cost
FROM bookings;