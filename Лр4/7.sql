-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;
/*удалите все записи об аренде объектов в транзакции, выведите список аренд, завершите транзакция с отказом от всех произведенных изменений*/
START TRANSACTION;
DELETE FROM bookings;
SELECT * FROM bookings;
ROLLBACK;
SELECT * FROM bookings;