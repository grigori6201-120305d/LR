USE cd;
SELECT DISTINCT surname FROM members WHERE NOT surname like 'GUEST' ORDER BY surname limit 10 