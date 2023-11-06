USE cd; 
SELECT concat(m1.surname, ' ', m1.firstname) AS fiomember /*выбираем и объединяем фамилию и имя участника из таблицы "members" в поле "fiomember"*/
WHERE 
EXISTS (SELECT 1 FROM members AS m2 WHERE m2.memid = m1.recommendedby) /*выбираем только те записи, для которых существует другой участник, который рекомендовал данного участника */
OR /*или*/
NOT EXISTS (SELECT 1 FROM members AS m3 WHERE m3.memid = m1.recommendedby) /*не существует других участников, которые рекомендовали данного участника*/
ORDER BY fiomember;