select month(start_date) as month, car_id, count(*) as records 
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where month(start_date) between 8 and 10 and car_id in (
      SELECT car_id 
      FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
      where month(start_date) between 8 and 10 
      group by car_id 
      having count(car_id) >= 5) 
group by month, car_id 
having records > 0 
order by month, car_id desc;