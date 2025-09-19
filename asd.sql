select nev, filmekszama
    -> from L
    -> where nev="Garland, Judy"
    -> ;
+---------------+-------------+
| nev           | filmekszama |
+---------------+-------------+
| Garland, Judy |          33 |
+---------------+-------------+
1 row in set (0.009 sec)

MariaDB [L]> select top 1 filmekszama,nev
    -> from L
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '1 filmekszama,nev
from L' at line 1
MariaDB [L]> select nev,max(filmekszama)
    -> from L;
+-----------------+------------------+
| nev             | max(filmekszama) |
+-----------------+------------------+
| Eastwood, Clint |              300 |
+-----------------+------------------+
1 row in set (0.004 sec)

MariaDB [L]> select nev,filmekszama
    -> from L
    -> WHERE szuleteshely="Budapest";
+--------------------+-------------+
| nev                | filmekszama |
+--------------------+-------------+
| Tolnay, Klári      |          84 |
| Szoke, Szakáll     |         102 |
| Csortos, Gyula     |          57 |
| Latinovits, Zoltán |          53 |
| Gobbi, Hilda       |         107 |
| Kabos, Gyula       |          45 |
| Ruttkai, Éva       |          63 |
| Szörényi, Éva      |          29 |
| Sinkovits, Imre    |          84 |
+--------------------+-------------+
9 rows in set (0.001 sec)

MariaDB [L]> select count(*)
    -> from L
    -> group by szuleteshely
    -> having szuleteshely="Budapest"
    -> ;
+----------+
| count(*) |
+----------+
|        9 |
+----------+
1 row in set (0.011 sec)

MariaDB [L]> select count(*) as ferfiak
    -> from L
    -> where nem =1;
+---------+
| ferfiak |
+---------+
|      84 |
+---------+
1 row in set (0.003 sec)

MariaDB [L]> select count(*) as nok
    -> from L
    -> where nem =0;
+-----+
| nok |
+-----+
|  61 |
+-----+
1 row in set (0.001 sec)

MariaDB [L]> select ferfiak,nok from L;
ERROR 1054 (42S22): Unknown column 'ferfiak' in 'field list'
MariaDB [L]> select * from ferfiak, nok;

MariaDB [L]> select count(*) as nok
    -> ;
+-----+
| nok |
+-----+
|   1 |
+-----+
1 row in set (0.000 sec)

MariaDB [L]> select count(*)
    -> from L
    -> group by nem;
+----------+
| count(*) |
+----------+
|       61 |
|       84 |
+----------+
2 rows in set (0.003 sec)

MariaDB [L]> select count(*)
    -> from L
    -> where nem=0 and szuleteshely="Budapest";
+----------+
| count(*) |
+----------+
|        4 |
+----------+
1 row in set (0.004 sec)

MariaDB [L]> select count(*)
    -> from L
    -> where nem=1 and (szuleteshely="Budapest" or szuleteshely="Érsekújvár");
+----------+
| count(*) |
+----------+
|        6 |
+----------+
1 row in set (0.001 sec)

MariaDB [L]> select count(*)
    -> from L
    -> where (year(szuletes)=1950 or year(szuletes)=1951) and (szuletesorszag="Kanada" or szuletesorszag="USA");
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.003 sec)

MariaDB [L]> select max(szuletes)
    -> from L;
+---------------+
| max(szuletes) |
+---------------+
| 1975-10-05    |
+---------------+
1 row in set (0.001 sec)

MariaDB [L]> select min(szuletes)
    -> from L;
+---------------+
| min(szuletes) |
+---------------+
| 1883-03-03    |
+---------------+
1 row in set (0.001 sec)

MariaDB [L]> select max(filmekszama)
    -> from L
    -> where szuletesorszag="Magyarorszag";
+------------------+
| max(filmekszama) |
+------------------+
|              153 |
+------------------+
1 row in set (0.001 sec)

MariaDB [L]> select top 1 year(szuletes)
    -> from L;;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '1 year(szuletes)
from L' at line 1
ERROR: No query specified

MariaDB [L]> select year(szuletes)
    -> from L
    -> where szuleteshely="Budapest"
    -> group by year(szuletes)
    -> order by year(szuletes)
    -> limit 1;
+----------------+
| year(szuletes) |
+----------------+
|           1883 |
+----------------+
1 row in set (0.001 sec)

MariaDB [L]> select max(count(*))
    -> from L
    -> group by szuletesorszag;
ERROR 1111 (HY000): Invalid use of group function
MariaDB [L]> select count(*)
    -> from L
    -> group by szuletesorszag
    -> order by count(*) desc
    -> limit 1;
+----------+
| count(*) |
+----------+
|       72 |
+----------+
1 row in set (0.001 sec)

MariaDB [L]>