SELECT CAR_ID, round(avg(DATEDIFF(end_date, start_date) +1), 1) AS AVERAGE_DURATION 
from car_rental_company_rental_history 
group by car_id 
having avg(DATEDIFF(end_date, start_date) +1) >= 7 
order by 2 desc, car_id desc;