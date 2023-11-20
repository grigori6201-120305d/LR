-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;
SELECT facility, initialoutlay,  "Самый дорогой" AS "Качественная стоимость" FROM facilities WHERE initialoutlay = (SELECT MAX(initialoutlay) FROM facilities)
UNION 
SELECT facility, initialoutlay,  "Самый дешевый" FROM facilities WHERE initialoutlay = (SELECT MIN(initialoutlay) FROM facilities)
   