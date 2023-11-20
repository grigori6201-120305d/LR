-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;
SELECT firstname AS 'Firstname/Facilities' FROM members WHERE NOT firstname like "Guest"
UNION 
SELECT facility FROM facilities