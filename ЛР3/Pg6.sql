USE cd; 
SELECT DISTINCT CONCAT(f.facility, ' ', m.firstname) AS FacilityandName, /*выбирак мникальные значения полей "facility" и "firstname" из таблицы "facilities" и "members" соответственно, объединенных в одно поле "FacilityandName"*/
CASE /*В зависимости от значения поля "memid" выполняется расчет стоимости бронирования. Если "memid" равен 0, то стоимость рассчитывается как произведение поля "guestcost" таблицы "facilities" на поле "slots" таблицы "bookings", иначе - как произведение поля "membercost" таблицы "facilities" на поле "slots" таблицы "bookings"*/
WHEN b.memid = 0 THEN f.guestcost * b.slots
ELSE f.membercost * b.slots 
END AS cost
FROM bookings b  /*выполняем объединение таблиц "bookings", "facilities" и "members" по соответствующим полям*/
JOIN facilities f ON b.facid = f.facid
JOIN members m ON b.memid = m.memid
WHERE DATE(b.starttime) = '2012-09-14' AND ((b.memid = 0 AND  f.guestcost * b.slots > 30) OR (b.memid != 0 AND f.membercost * b.slots > 30))  /*выбираем только те записи, у которых дата начала бронирования равна '2012-09-14' и стоимость бронирования больше 30. Если "memid" равен 0, то сравнивается стоимость для гостей (поле "guestcost" таблицы "facilities"), иначе - для участников (поле "membercost" таблицы "facilities")*/
ORDER BY cost DESC;