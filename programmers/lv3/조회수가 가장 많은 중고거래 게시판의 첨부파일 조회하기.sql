SELECT CONCAT('/home/grep/src/', b.board_id, '/', file_id, file_name, f.file_ext) AS FILE_PATH 
from used_goods_board b 
join used_goods_file f 
on b.board_id=f.board_id 
where 
  b.views=(
        select views 
        from used_goods_board 
        order by views desc 
        limit 1) 
order by file_id desc;