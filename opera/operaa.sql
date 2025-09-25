 select szerepnev from szerep where hang = 'bariton' order by szerepnev;

select max(szulev)-min(szulev) from enekes;

select szerepnev, hang, cim from szerep inner join mu on szerep.muid = mu.id where szerzo = "Erkel";

select nev, szerepnev, max(utoljara-szulev) as eletkor from repertoar
 inner join enekes on enekes.id=enekesid inner join szerep on szerep.id=szerepid
  inner join mu on mu.id=muid where cim = 'Bánk bán';
 
 
 
 
 select distinct nev
    -> from enekes,repertoar,szerep,mu
    -> where enekes.id = repertoar.enekesid 
        and repertoar.szerepid = szerep.id and szerep.muid=mu.id and szerzo="Wagner"
        and (hang="alt" or hang="szoprán" or hang="mezzoszoprán");
select nev, szerepnev
from (select * from enekes,repertoar,szerep,mu where enekes.id = repertoar.enekesid 
        and repertoar.szerepid = szerep.id and szerep.muid=mu.id
        group by mu.id having szerepnev like "*+Ottó*+")
    -> where enekes.id = repertoar.enekesid 
        and repertoar.szerepid = szerep.id and szerep.muid=mu.id and nev like "*+Ottó*+";
        select nev, szerepnev
from repetoar
inner join enekes on enekes.id=enekesid
inner join szerep on szerep.id=szerepid
inner join mu on mu.id=muid
where muid in (select muid from szerep where szerepnev = 'Ottó') and nev like '%Ottó%';


select hang, count(distinct enekesid) as enekesek
from repertoar
inner join szerep on szerep.id=szerepid 
inner join enekes on enekes.id=enekesid
inner join mu on mu.id=muid
group by hang;
