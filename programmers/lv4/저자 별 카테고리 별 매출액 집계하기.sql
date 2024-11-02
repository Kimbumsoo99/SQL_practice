SELECT a.author_id, a.author_name, b.category, sum(s.sales * b.price) as total_sales 
from book_sales s 
join book b 
  on s.book_id=b.book_id 
join author a 
  on b.author_id=a.author_id 
where s.sales_date like '2022-01%' 
group by a.author_name, b.category 
order by 1, 3 desc;