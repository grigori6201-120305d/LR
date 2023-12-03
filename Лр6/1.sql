-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Выберите начальное и конечное время последних 10 аренд  объектов, упорядочив их по времени их окончания.*/
USE cd;
SELECT starttime, DATE_ADD(starttime, INTERVAL(slots * 30)MINUTE) AS "endtime"
FROM bookings
ORDER BY bookid DESC, endtime DESC
LIMIT 10;