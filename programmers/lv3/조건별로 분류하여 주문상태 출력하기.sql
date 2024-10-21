SELECT order_id, product_id, date_format(out_date, '%Y-%m-%d') as out_date, 
  case 
    WHEN out_date IS NULL THEN '출고미정'
    WHEN DATEDIFF('2022-05-01', out_date) >= 0 THEN '출고완료'
    WHEN DATEDIFF('2022-05-01', out_date) < 0 THEN '출고대기'
  END AS 출고여부
from food_order order by 1;