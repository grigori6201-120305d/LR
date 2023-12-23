-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Создайте функцию, которая рассчитывает стоимость каждой аренды 
(для каждой записи таблицы bookings).*/
USE cd;
DELIMITER $$
DROP FUNCTION IF EXISTS CalculateRentalCost $$
CREATE FUNCTION CalculateRentalCost(memid INT, facid INT, slots INT)
RETURNS DECIMAL(10, 2)
READS SQL DATA
NOT DETERMINISTIC
BEGIN
    DECLARE Стоимость_аренды DECIMAL(10, 2);
    SET Стоимость_аренды = (SELECT 
			IF(memid = 0, guestcost, membercost) * slots
			FROM facilities
			WHERE facid = facilities.facid);
    RETURN Стоимость_аренды;
END$$
DELIMITER ;
SELECT CalculateRentalCost(memid, facid, slots) AS Стоимость_аренды
FROM bookings;