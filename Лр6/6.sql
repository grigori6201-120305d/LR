-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Выведите все объектов клуба, если они содержат в названии слово  ‘Tennis’ в произвольном регистре.*/
USE cd;
SELECT facility FROM facilities 
WHERE facility LIKE '%Tennis%';