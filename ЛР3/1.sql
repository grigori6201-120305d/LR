-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;
SELECT starttime FROM bookings b 
JOIN members m ON b.memid = m.memid
WHERE m.firstname = 'David' AND m.surname = 'Farrell'
