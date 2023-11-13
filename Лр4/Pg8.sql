USE cd;
START TRANSACTION;
DELETE FROM members where memid = 37;
SELECT * FROM members;
ROLLBACK;
SELECT * FROM members;