SELECT p.product_code, p.price * sum(o.sales_amount) as sales 
from product p 
  join offline_sale o 
  on p.product_id=o.product_id 
group by o.product_id 
order by 2 desc, 1;