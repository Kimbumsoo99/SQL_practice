SELECT ANIMAL_TYPE, if(NAME is null, 'No name', name) as NAME, SEX_UPON_INTAKE 
from animal_ins 
order by animal_id;