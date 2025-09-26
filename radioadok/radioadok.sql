 create database radioadok;
Query OK, 1 row affected (0.007 sec)

MariaDB [opera]> use radioadok
Database changed
MariaDB [radioadok]> create table kiosztas(
    -> azon int unsigned not null primary key
    -> frekvencia int
    -> teljesitmeny int
    -> csatorna varchar(256)
    -> adohely varchar(256) references telepules(nev) on delete cascade;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'int
teljesitmeny int
csatorna varchar(256)
adohely varchar(256) references t...' at line 3
MariaDB [radioadok]> create table kiosztas(
    -> azon int unsigned not null primary key,
    -> frekvencia int ,
    -> teljesitmeny int,
    -> csatorna varchar(256),;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 5
MariaDB [radioadok]> create table kiosztas(
    -> azon int unsigned not null primary key,
    -> frekvencia int ,
    -> csatorna varchar(256),
    -> teljesitmeny int,
    -> adohely varchar(256) references telepules(nev) on delete cascade,
    -> cim varchar(256));
Query OK, 0 rows affected (0.034 sec)

MariaDB [radioadok]> create table telepules(
    -> nev varchar(256) references kiosztas(azon) on delete cascade,
    -> megye varchar(256;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3
MariaDB [radioadok]> create table telepules(
    -> nev varchar(256) primary key references kiosztas(azon) on delete cascade,
    -> megye varchar(256));
Query OK, 0 rows affected (0.013 sec)

MariaDB [radioadok]> create table regio(
    -> nev varchar(256),
    -> megye varchar(256) primary key references telepules(megye) on delete cascade);
Query OK, 0 rows affected (0.023 sec)

MariaDB [radioadok]>