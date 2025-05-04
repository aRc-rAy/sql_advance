create database if not exists week_04;

use week_04;

show tables;

create table if not exists one
(
      id int PRIMARY KEY,
      name VARCHAR(50) NOT NULL
);

create table if not exists two
(
      id int PRIMARY KEY,
      name VARCHAR(50) NOT NULL
);

insert into one VALUES
(1,"John Doe"),
(2,"Jane Smith"),
(3,"Sam Brown"),
(4,"Emily Davis"),
(5,"Michael Johnson"),
(6,"Sarah Wilson"),
(7,"David Lee"),
(8,"Laura Taylor"),
(9,"James Anderson"),
(10,"Linda Thomas");

insert into two VALUES
(1,"Chris Evans"),
(2,"Scarlett Johansson"),
(3,"Robert Downey Jr."),
(4,"Tom Hiddleston"),
(5,"Chris Hemsworth"),
(6,"Mark Ruffalo"),
(7,"Jeremy Renner"),
(8,"Benedict Cumberbatch"),
(9,"Tom Holland"),
(10,"Samuel L. Jackson");


select * from one
UNION
select * from two;


--unique records 
select * from one
UNION 
select * from one;

-- duplicate records
select * from one 
union ALL
select * from one
order by id;

--- table to hold the union of records
create table if not exists union_table
(
      id int,
      name VARCHAR(50) NOT NULL
);

insert into union_table (id, name)
select * from one
UNION ALL
select * from one;

select * from union_table;