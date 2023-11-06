use cd; /*выводим только некоторые столбцы и строки для которых membercost = 0 с помощью условия после функции WHERE*/
select facid, facility, membercost from facilities where membercost = 0;