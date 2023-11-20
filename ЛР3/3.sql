-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd; 
SELECT * FROM members 
WHERE recommendedby IS NOT NULL;
SELECT m1.surname, m1.firstname 
FROM members m1 
JOIN members m2 ON m1.memid=m2.recommendedby;