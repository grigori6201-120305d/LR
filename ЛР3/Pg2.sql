-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;
SELECT facility FROM facilities
JOIN bookings ON facilities.facid = bookings.facid
WHERE facilities.facility LIKE '%Tennis court%' AND DATE(bookings.starttime)="2012-09-19";