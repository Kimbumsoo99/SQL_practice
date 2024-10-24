SELECT a.animal_id, a.name 
from animal_ins a 
join animal_outs b 
on a.ANIMAL_ID=b.ANIMAL_ID 
order by DATEDIFF(a.DATETIME, b.DATETIME) 
limit 2;