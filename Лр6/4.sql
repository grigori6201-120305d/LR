-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Выведите список членов клуба, отформатированных как 'Surname, Firstname'*/
USE cd;
SELECT CONCAT(surname, ' - ', firstname) AS 'Surname, Firstname' FROM members
WHERE memid != 0;