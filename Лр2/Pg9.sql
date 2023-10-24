-- Active: 1697233781638@@127.0.0.1@3306@cd
use cd;
SELECT firstname, surname, joindate 
FROM members 
ORDER BY joindate DESC 
LIMIT 1