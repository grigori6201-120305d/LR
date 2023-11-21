-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Выберите ФИО (== имя + фамилия) всех, кто покупал корты 1 и 2*/
USE cd;
SELECT DISTINCT CONCAT(firstname," ",surname) AS "membername" FROM members
JOIN bookings ON members.memid = bookings.memid
JOIN facilities ON facilities.facid = bookings.facid
WHERE facilities.facility LIKE "%Court 1" OR facilities.facility LIKE '%Cort 2';