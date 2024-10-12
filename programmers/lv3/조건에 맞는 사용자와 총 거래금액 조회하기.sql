SELECT u.user_id, u.nickname, sum(b.price) as TOTAL_SALES 
from used_goods_board b 
join used_goods_user u 
on b.writer_id = u.user_id 
where b.status ='DONE' 
group by 1 
having TOTAL_SALES >= 700000 
order by 3;