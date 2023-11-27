-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Рассчитайте количество аренд каждого из объектов клуба.*/
USE cd;

SELECT f.facid AS Facid, f.facility AS Facility, SUM(b.slots) AS rec
FROM facilities f
JOIN bookings b ON b.facid = f.facid
GROUP BY f.facid, f.facility;