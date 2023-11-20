-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;
UPDATE facilities
SET membercost = 6, 
    guestcost = 30
WHERE facid IN (0,1);
SELECT * FROM facilities
