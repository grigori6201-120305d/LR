-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd; 
SELECT facid, facility, membercost FROM facilities WHERE NOT membercost = 0