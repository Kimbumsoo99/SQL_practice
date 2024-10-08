SELECT NAME, COUNT(NAME) AS COUNT 
FROM ANIMAL_INS 
group by 1 
having COUNT >= 2 
order by name;