USE cd; 
SELECT m1.surname, m1.firstname, m2.surname, m2.firstname /*выбираем уникальные фамилии и имена участников из таблицы "members" и сохраняются в переменную "m1"*/
FROM members m1
Left JOIN members m2 ON m1.recommendedby = m2.memid /*объединеняем таблицы "members" с самой собой по полю "recommendedby", где memid из второй таблицы равен recommendedby из первой таблицы, и сохраняется в переменную "m2"*/
ORDER BY m1.surname, m1.firstname /*выбираем только те строки, где memid из второй таблицы равен memid из первой таблицы*/

