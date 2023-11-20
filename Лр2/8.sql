-- Active: 1697233781638@@127.0.0.1@3306@cd
USE cd;
SELECT  facility,  monthlymaintenance,
    CASE 
        WHEN monthlymaintenance <= 100 
            THEN 'дешевый'
        ELSE 'дорогой'
    END AS 'качественная стоимость'
FROM facilities