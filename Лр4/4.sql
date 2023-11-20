-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;
UPDATE facilities
SET initialoutlay = 10000
WHERE facid = 1;
SELECT * FROM facilities;