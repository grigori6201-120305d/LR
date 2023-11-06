USE cd; 
SELECT DISTINCT m1.surname, m1.firstname /*выбираем уникальные фамилии и имена участников из таблицы "members" и сохраняются в переменную "m1"*/
FROM members m1, members m2 /*объединеняем таблицы "members" с самой собой по полю "recommendedby", где memid из второй таблицы равен recommendedby из первой таблицы, и сохраняется в переменную "m2"*/
WHERE m2.memid = m1.recommendedby; /*выбираем только те строки, где memid из второй таблицы равен memid из первой таблицы*/

