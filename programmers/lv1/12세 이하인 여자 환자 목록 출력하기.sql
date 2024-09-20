SELECT PT_NAME, PT_NO, GEND_CD, AGE, case 
                                        when TLNO is null then 'NONE' 
                                        else tlno 
                                     end as tlno 
from patient 
where gend_cd='W' and age <= 12 
order by 4 desc, 1;