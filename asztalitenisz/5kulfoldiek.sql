select distinct orszag
from bajnok inner join egyesulet on egyesulet.id = bajnok.egyesulet_id
where ev < 2000 and orszag <> 'Magyarország';