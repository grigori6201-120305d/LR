use cd;
SELECT surname, firstname, joindate FROM members WHERE joindate = (SELECT MAX(joindate) FROM members);