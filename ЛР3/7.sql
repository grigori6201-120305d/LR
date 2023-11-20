-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;

SELECT  CONCAT(m.firstname, ' ', m.surname) AS membername, (SELECT CONCAT(r.firstname, ' ', r.surname) FROM members r WHERE m.recommendedby = r.memid) AS recname
FROM members m
WHERE m.memid != 0 AND m.recommendedby IS NOT NULL
ORDER BY m.firstname;
