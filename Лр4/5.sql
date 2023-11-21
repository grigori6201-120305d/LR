-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Стоимость аренды объектов 0 и 1 изменилась (член клуба == 6, гость = 30). Обновите данные в таблицах*/
USE cd;
UPDATE facilities
SET membercost = 6, guestcost = 30
WHERE facid < 2;
SELECT * FROM facilities;