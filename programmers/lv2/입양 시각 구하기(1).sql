SELECT hour(dateTime) as hour, count(*) 
from animal_outs 
where hour(dateTime) between 9 and 20 
group by hour 
order by hour;