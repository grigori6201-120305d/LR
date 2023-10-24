use cd;
select facility, 
       case 
         when monthlymaintenance < 100 then 'дешевый' 
         else 'дорогой' 
       end as качественная_стоимость 
from   facilities