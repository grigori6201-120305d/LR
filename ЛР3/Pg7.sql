-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;
SELECT CONCAT(m1.surname, ' ', m1.firstname) AS fiomember, (SELECT CONCAT(m2.surname, ' ', m2.firstname) 
FROM members m2 WHERE m2.memid = m1.recommendedby) AS fiorecommendedby 
FROM members m1
WHERE m1.memid != 0
ORDER BY fiomember;