use cd; /*выбираем уникальные фамилии из таблицы "members",где значение столбца "memid" больше 1 и меньше 12 и сортируем*/
select distinct surname from members order by surname limit 10;