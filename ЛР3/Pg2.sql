-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;  
SELECT facility FROM facilities /*выбираем столбец "facility" из таблицы "facilities"*/
JOIN bookings ON facilities.facid = bookings.facid /* Выполняем объединение таблицы facilities с таблицей bookings по полю facid*/
WHERE facilities.facility like '%Tennis Court%' AND bookings.starttime LIKE '%2012-09-19%'; /*выбираем только те строки, где название объекта содержит подстроку 'Tennis Court' и только те строки, где название объекта содержит подстроку 'Tennis Court'*/
