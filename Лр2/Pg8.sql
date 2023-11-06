USE cd; /*объекты с дешевой качественной стоимостью*/
SELECT facility, 
       CASE 
         WHEN monthlymaintenance < 100 THEN 'дешевый' 
         ELSE 'дорогой' 
       END AS качественная_стоимость 
FROM   facilities