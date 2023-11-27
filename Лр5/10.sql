-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Создайте список общего количества мест, забронированных на один объект в месяц в 2012 году. Включите выходные строки, 
содержащие итоговые суммы за все месяцы по каждому объекту а также итоговые суммы за все месяцы для всех объектов. 
Выходная таблица должна состоять из идентификатора объекта, месяца и слотов, отсортированных по идентификатору и месяцу. 
При вычислении агрегированных значений для всех месяцев и всех facid возвращайте нулевые значения в столбцах месяца и facid.*/
USE cd; 
SELECT 
IFNULL(derived_table.facid, 'Total') AS facid,
IFNULL(derived_table.month, 'Total') AS MONTH,
SUM(derived_table.slots) AS 'Количество забронированных мест'
FROM 
    (SELECT f.facid AS facid,
    MONTH(b.starttime) AS MONTH,
    SUM(b.slots) AS slots
    FROM facilities f
    JOIN bookings b ON f.facid = b.facid
    WHERE YEAR(b.starttime) = 2012
    GROUP BY facid, month, slots) AS derived_table
GROUP BY facid, month WITH ROLLUP;