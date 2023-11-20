-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd; 
SELECT facility, membercost FROM facilities WHERE membercost < monthlymaintenance / 50 AND NOT membercost = 0