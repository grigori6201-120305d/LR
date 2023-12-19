-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Создайте функцию, которая рассчитывает стоимость 
каждой аренды (для каждой записи таблицы bookings).*/
USE cd;
DELIMITER //
DROP FUNCTION IF EXISTS slot_cost//
CREATE FUNCTION slot_cost(memid int, facid int, slots int) RETURNS DECIMAL (5, 2)
DETERMINISTIC
BEGIN 
	DECLARE cost int;
	SET cost = (SELECT IF (memid = 0, guestcost, membercost)*slots FROM facilities WHERE facid = facilities.facid);
	RETURN cost;
END//
DELIMITER ;
SELECT slot_cost(memid, facid, slots)
FROM bookings;