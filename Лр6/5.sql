-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Выведите наименования всех объектов клуба заглавными буквами, если они содержат в названии слово ‘Tennis’*/
USE cd;
SELECT UPPER(facility) 
FROM facilities 
WHERE BINARY facility LIKE '%Tennis%';