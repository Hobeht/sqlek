select bajnok.ev, versenyszam.nev
from jatekos,bajnok,versenyszam
where jatekos.id=bajnok.jatekos_id and bajnok.vsz_id=versenyszam.id and jatekos.nev="Harczi Zsolt";

select ev
from jatekos,bajnok,versenyszam
where bajnok.vszid=versenyszam.id and versenyszam.nev="vegyes páros"
order by ev asc
limit 1;

select if(neme=1,"ferfi","nő"  ),count(neme) from jatekos group by neme;


select distinct orszag from bajnok,egyesulet where bajnok.egyesulet_id=egyesulet.id and orszag<>"Magyarország" and datum>2000.01.01
