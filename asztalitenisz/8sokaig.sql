select jatekos.nev, max(ev)-min(ev) as kulonbseg
from bajnok inner join jatekos on jatekos.id = bajnok.jatekos_id
group by jatekos.nev
having max(ev)-min(ev)>=10
order by kulonbseg desc;