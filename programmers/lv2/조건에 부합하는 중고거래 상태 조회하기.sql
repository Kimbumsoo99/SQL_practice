SELECT BOARD_ID, WRITER_ID, TITLE, PRICE,
      CASE
        WHEN STATUS = 'SALE' THEN '판매중'
        WHEN STATUS = 'RESERVED' THEN '예약중'
        WHEN STATUS = 'DONE' THEN '거래완료'
        ELSE '알 수 없음'
      END AS STATUS
FROM USED_GOODS_BOARD
WHERE created_date = '2022-10-05'
order by board_id desc