-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Рассчитайте количество зарегистрированных объектов в теннисном клубе.*/
USE cd;
SELECT COUNT(facid) AS 'Количество зарегистрированных объектов' FROM facilities;