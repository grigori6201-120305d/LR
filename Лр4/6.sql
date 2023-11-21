-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;
--Увеличьте стоимость аренды  корта 1 (facid = 0) на 10% для членов и гостей--
UPDATE facilities
SET membercost = membercost * 1.1, 
    guestcost = guestcost * 1.1
WHERE facid = 0;
SELECT * FROM facilities