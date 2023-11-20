-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;
SELECT facility, starttime FROM facilities
JOIN bookings ON facilities.facid = bookings.facid
WHERE facilities.facility like "%Tennis Court%" AND starttime > '2012.09.18' AND starttime < '2012.09.19'