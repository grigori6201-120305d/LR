use cd;
select facid, facility, membercost from facilities where membercost < monthlymaintenance / 50 and not membercost = 0;