-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd; 
INSERT INTO facilities (facid, facility, membercost, guestcost, initialoutlay, monthlymaintenance)
SELECT 12, facility, membercost, guestcost, initialoutlay, monthlymaintenance FROM facilities WHERE facid = 9;
SELECT * FROM facilities
