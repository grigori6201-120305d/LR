use cd;/*создаём новый столбец, называем его "расположение" и в нём указываем то, откуда был взят объект, после объединяем две таблицы через UNION*/
SELECT DISTINCT surname FROM members WHERE surname != 'Guest' ORDER BY surname LIMIT 10;