select ev
from bajnok inner join jatekos on jatekos.id = bajnok.jatekos_id inner join versenyszam on versenyszam.id = bajnok.vsz_id inner join egyesulet on egyesulet.id = bajnok.egyesulet_id
where versenyszam.nev = 'vegyes páros'
order by ev asc
limit 1;