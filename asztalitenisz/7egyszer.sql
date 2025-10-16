select jatekos.nev, ev, versenyszam.nev
from bajnok inner join jatekos on jatekos.id = bajnok.jatekos_id inner join versenyszam on versenyszam.id = bajnok.vsz_id
where jatekos.nev in (select jatekos.nev from bajnok inner join jatekos on jatekos.id = bajnok.jatekos_id group by jatekos.nev having count(jatekos.nev) = 1)
order by jatekos.nev;