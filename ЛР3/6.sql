-- Active: 1697233781638@@127.0.0.1@3306@cd
--Выберите список бронирования на 14 сентября 2012 г., что стоимость которых более 30--
USE cd;
SELECT DISTINCT CONCAT(f.facility, ' ', m.firstname) AS facilityName, starttime,
CASE 
    WHEN b.memid = 0 THEN f.guestcost * b.slots
    ELSE f.membercost * b.slots 
END AS cost
FROM bookings b
    JOIN facilities f ON b.facid = f.facid
    JOIN members m ON b.memid = m.memid
WHERE b.starttime >= '2012-09-14' AND b.starttime < '2012-09-15' AND ((b.memid = 0 AND  f.guestcost * b.slots > 30) OR (b.memid != 0 AND f.membercost * b.slots > 30)) 
ORDER BY cost DESC