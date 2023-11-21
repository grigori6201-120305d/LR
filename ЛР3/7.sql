-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Выберите список всех членов, включая человека, который их рекомендовал (если таковой имеется), без использования каких-либо объединений--*/
USE cd;
SELECT  CONCAT(m.firstname, ' ', m.surname) AS membername, (SELECT CONCAT(r.firstname, ' ', r.surname) FROM members r WHERE m.recommendedby = r.memid) AS recname
FROM members m
WHERE m.memid != 0
ORDER BY m.firstname;
