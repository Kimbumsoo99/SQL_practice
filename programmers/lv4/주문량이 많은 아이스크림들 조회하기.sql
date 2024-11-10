SELECT f.flavor 
from first_half f 
join july j 
on f.flavor=j.flavor 
group by 1 
order by sum(f.TOTAL_ORDER+j.total_order) desc 
limit 3;