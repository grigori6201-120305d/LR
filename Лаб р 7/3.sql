-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Напишите процедуру, которая считает окупаемость каждого объекта клуба на основании оплаты аренд за месяц. Применить ее к июлю 2012 года. */
USE cd;
DELIMITER $$
DROP PROCEDURE IF EXISTS payback $$
CREATE PROCEDURE payback()
  BEGIN
    SELECT b.facid, f.facility, SUM(p.payment) - f.monthlymaintenance AS revenue
	FROM bookings b
	JOIN payments p ON b.bookid = p.bookid
	JOIN facilities f ON b.facid = f.facid
	DATE(b.starttime) < '2012-08-01' AND DATE(b.starttime) >= '2012-07-01'
	GROUP BY b.facid ORDER BY b.facid;
  END $$
DELIMITER ;
CALL payback;