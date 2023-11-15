-- Active: 1697233781638@@127.0.0.1@3306@cd USE cd;
SELECT CONCAT(mem.firstname,' ',mem.surname) AS membername,
(SELECT CONCAT(rec.firstname,' ',rec.surname) FROM members rec WHERE mem.recommendedby=rec.memid) AS recname 
FROM members mem
WHERE mem.memid!=0
ORDER BY membername;