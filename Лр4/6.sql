-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;
UPDATE facilities
SET membercost = membercost * 1.1, 
    guestcost = guestcost * 1.1
WHERE facid = 0;
SELECT * FROM facilities