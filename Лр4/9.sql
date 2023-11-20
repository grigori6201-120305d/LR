-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;
SELECT * FROM members
WHERE memid NOT IN(SELECT DISTINCT memid FROM bookings);
DELETE FROM members
WHERE memid NOT IN(SELECT memid FROM bookings);
SELECT * FROM members WHERE memid = 37;