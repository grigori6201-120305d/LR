-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd; 
SELECT starttime FROM bookings /*выбираем столбец "starttime" из таблицы "bookings"*/
JOIN members ON bookings.memid = members.memid /*присоединяем таблицу "members" по условию, что значение столбца "memid" в обеих таблицах совпадает*/
WHERE members.firstname = 'David' AND members.surname = 'Farrell'; /*фильтруем результаты, чтобы выбрать только те строки, где имя равно "David" и фамилия равна "Farrell"*/
