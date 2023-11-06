USE cd; /*выбираем объекты с максимальной(MAX) или минимальной(MIN) стоимостью*/
SELECT facility, membercost FROM facilities WHERE guestcost = (SELECT min(guestcost) FROM facilities)
union
SELECT facility, membercost FROM facilities WHERE guestcost = (SELECT max(guestcost) FROM facilities);