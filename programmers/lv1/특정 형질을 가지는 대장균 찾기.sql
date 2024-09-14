/*
BIN() 사용 시 2진수 조회 가능
SELECT BIN(15); -> 1111

비트 연산도 가능
*/

select COUNT(*) as COUNT
FROM ECOLI_DATA
WHERE (GENOTYPE & 5) > 0 and (GENOTYPE & 2) = 0;