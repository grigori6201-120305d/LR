-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Для каждого дня августа 2012 года рассчитайте скользящее среднее общего дохода за предыдущие 15 дней. 
Вывод должен содержать столбцы даты и дохода, отсортированные по дате. 
Не забудьте учесть возможность того, что в день будет нулевой доход. 
Примечание: используйте DATE_ADD для генерации серии дат.*/
USE cd;
SELECT DATE, 
       IFNULL((SELECT SUM(IF(memid = 0, f.guestcost * b.slots, f.membercost * b.slots)) 
               FROM facilities f 
               INNER JOIN bookings b ON f.facid = b.facid
               WHERE DATE(b.starttime) = DATA), 0) AS revenue,
       (SELECT AVG(IF(memid = 0, f.guestcost * b.slots, f.membercost * b.slots))
               FROM facilities f  
               INNER JOIN bookings b ON f.facid = b.facid
               WHERE DATE(b.starttime) BETWEEN DATE_SUB(DATE, INTERVAL 15 DAY) AND DATE) AS moving_average
FROM (
    SELECT DATE_ADD('2012-08-01', INTERVAL (a1.a + (10 * a10.a) + (100 * a100.a)) DAY) AS DATE
    FROM 
    (SELECT 0 AS A UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 
     UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7
     UNION SELECT 8 UNION SELECT 9) AS a1
    CROSS JOIN 
    (SELECT 0 AS A UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 
     UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7
     UNION SELECT 8 UNION SELECT 9) AS a10
    CROSS JOIN 
    (SELECT 0 AS A UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 
     UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7
     UNION SELECT 8 UNION SELECT 9) AS a100
) AS dates
WHERE MONTH(DATE) = 8 AND YEAR(DATE) = 2012
ORDER BY DATE;