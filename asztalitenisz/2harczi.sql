select ev, versenyszam.nev
from bajnok inner join jatekos on jatekos.id = bajnok.jatekos_id inner join versenyszam on versenyszam.id = bajnok.vsz_id inner join egyesulet on egyesulet.id = bajnok.egyesulet_id
where jatekos.nev = 'Harczi Zsolt';