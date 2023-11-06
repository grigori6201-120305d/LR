USE cd; 
SELECT DISTINCT firstname, surname FROM members /*выбираем уникальные значения полей firstname и surname из таблицы members*/
JOIN bookings ON members.memid = bookings.memid /*объединяем таблицы members и bookings по полю memid, чтобы получить информацию о бронированиях участников*/
JOIN facilities ON facilities.facid = bookings.facid /*объединеняем таблицы facilities и bookings по полю facid, чтобы получить информацию о бронированных объектах*/
WHERE facilities.facility LIKE '%Tennis court%'; /*выбераем только те строки, где название объекта содержит фразу 'Tennis court'*/