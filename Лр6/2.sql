-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Выберите количество аренд объектов клуба в каждый месяц.*/
USE cd;
SELECT YEAR(b.starttime) AS 'Год', MONTH(b.starttime) AS 'Месяц', f.facility AS 'Название объекта', COUNT(*) AS 'Количество аренд в каждый месяц'
FROM bookings b
JOIN facilities f ON b.facid = f.facid
GROUP BY YEAR(starttime), MONTH(starttime), facility;