use cd; /*как и в задании 3, только membercost не равен нулю*/
select facid,facility, membercost from facilities where not membercost = 0;