-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;
SELECT m1.memid AS 'id',
    m1.firstname AS 'рекомендовал',
    m1.surname AS 'рекомендовал',
    m1.recommendedby AS 'кол-во рекомендаций', 
    m2.firstname AS 'рекомендовали',
    m2.surname AS 'рекомендовали'
FROM members m1 
JOIN members m2 ON m1.recommendedby = m2.memid 
ORDER BY  m1.firstname, m1.surname;
