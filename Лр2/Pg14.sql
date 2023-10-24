USE cd;
select facility, membercost from facilities where guestcost = (select min(guestcost) from facilities)
union
select facility, membercost from facilities where guestcost = (select max(guestcost) from facilities);