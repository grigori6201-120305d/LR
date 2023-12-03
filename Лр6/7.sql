-- Active: 1697233781638@@127.0.0.1@3306@cd
/*Подсчитайте количество участников, чья фамилия начинается на определенную букву, отсортировав по буквам в порядке убывания.*/
USE cd;
SELECT LEFT(surname,1) AS first_letter, COUNT(*) AS count_members
FROM members /* WHERE surname like 'W%' НА КАКУЮ ОПРЕДЕЛЕННУЮ БУКВУ? */ 
GROUP BY first_letter
ORDER BY count_members DESC;