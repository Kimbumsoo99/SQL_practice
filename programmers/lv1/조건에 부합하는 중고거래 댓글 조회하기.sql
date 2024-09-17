-- JOIN 쿼리
-- DATE_FORMAT을 통해 지정 가능 (지정안할 시 '%Y-%m-%d %H:%i:%S')

/*
| 구분기호 | 역할                    |
|----------|-------------------------|
| %Y       | 4자리 년도               |
| %m       | 숫자 월 (두자리)          |
| %y       | 2자리 년도               |
| %c       | 숫자 월 (한자리는 한자리) |
| %M       | 긴 월 (영문)             |
| %d       | 일자 (두자리)            |
| %b       | 짧은 월 (영문)           |
| %e       | 일자 (한자리는 한자리)   |
| %W       | 긴 요일 이름 (영문)      |
| %I       | 시간 (12시간)            |
| %a       | 짧은 요일 이름 (영문)    |
| %H       | 시간 (24시간)            |
| %i       | 분                      |
| %r       | hh:mm:ss AM, PM          |
| %T       | hh:mm:SS                |
| %S       | 초                      |
*/

SELECT b.TITLE, b.BOARD_ID, r.REPLY_ID, r.WRITER_ID, r.CONTENTS, DATE_FORMAT(r.CREATED_DATE, ('%Y-%m-%d')) AS CREATED_DATE 
FROM USED_GOODS_BOARD b 
join USED_GOODS_REPLY r 
WHERE b.BOARD_ID=r.BOARD_ID AND b.CREATED_DATE LIKE '2022-10%' 
ORDER BY r.CREATED_DATE ASC, b.TITLE ASC;