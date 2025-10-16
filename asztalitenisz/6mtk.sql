select distinct jatekos.nev
from bajnok inner join jatekos on jatekos.id = bajnok.jatekos_id inner join egyesulet on egyesulet.id = bajnok.egyesulet_id
where egyesulet.nev = 'MTK'
order by neme asc;