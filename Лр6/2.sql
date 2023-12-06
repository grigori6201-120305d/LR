-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Выберите количество аренд объектов клуба в каждый месяц.*/
USE cd;
SELECT YEAR(b.starttime)AS YEAR,MONTH(b.starttime) AS MONTH, COUNT(*) AS rental_count
FROM bookings b 
JOIN facilities f ON b.facid = f.facid
GROUP BY MONTH(b.starttime), YEAR(b.starttime);