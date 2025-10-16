select if(neme = 1, 'ferfi', 'no') as nem, count(neme) as db
from jatekos
group by neme;