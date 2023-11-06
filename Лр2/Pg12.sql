USE cd; /*выбираем максимальное значение joindate через функцию MAX*/
SELECT max(joindate) FROM members LIMIT 1;