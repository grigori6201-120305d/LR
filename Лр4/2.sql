-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Добавить (одновременно)  два сквош-корта (2 и 3 == ‘Squash Court 2’, ‘Squash Court 3’)  со стоимостью создания = 5000--
*/

 ALTER TABLE facilities
MODIFY membercost
DECIMAL(10,1);

ALTER TABLE facilities
MODIFY guestcost
DECIMAL(10,1);

INSERT INTO facilities (facid, facility, membercost, guestcost, initialoutlay, monthlymaintenance)
VALUES (10, 'Squash Court 2', 3.5, 17.5, 5000, 80),
       (11, 'Squash Court 3', 3.5, 17.5, 5000, 80);
SELECT * FROM facilities;


/*
DELETE FROM facilities
WHERE facid IN(10,11);