-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;
/*Реальные затраты на создание корта 2 (facid =1) составили 10000. Обновите данные в таблице, чтобы учесть это изменение*/
UPDATE facilities
SET initialoutlay = 10000
WHERE facid = 1;
SELECT * FROM facilities;