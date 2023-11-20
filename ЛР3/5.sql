-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;
SELECT DISTINCT concat(surname, ' ', firstname) AS 'ALL NAME', starttime, facility FROM members m
JOIN bookings b ON m.memid = b.memid 
JOIN facilities f ON f.facid = b.facid
WHERE f.facid IN (0,1) AND m.memid != 'NULL';
