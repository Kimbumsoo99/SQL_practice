SELECT distinct (A.CAR_ID) as car_id 
FROM CAR_RENTAL_COMPANY_CAR A 
join car_rental_company_Rental_history B 
on a.car_id=b.car_id 
where b.start_date like '%-10-%' and a.car_type = '세단' 
order by car_id desc;