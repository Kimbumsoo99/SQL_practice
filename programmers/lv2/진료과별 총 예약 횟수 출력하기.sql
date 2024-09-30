SELECT MCDP_CD AS 진료과코드, COUNT(APNT_NO) AS 5월예약건수 
FROM appointment 
where apnt_ymd like '2022-05%' 
group by MCDP_CD 
order by 5월예약건수, mcdp_cd;