USE cd; /*как и в задании 3, только membercost не равен нулю*/
SELECT facid,facility, membercost FROM facilities WHERE NOT membercost = 0;