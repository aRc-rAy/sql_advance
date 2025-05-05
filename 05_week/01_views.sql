create database if not exists week_05;

show databases;

use week_05;

show tables;

create table if not exists person
(
      aadhar_id VARCHAR(12) PRIMARY KEY,
      name VARCHAR(50) NOT NULL,
      age INT NOT NULL
);

insert into person VALUES
("123456789012","John Doe",30),
("234567890123","Jane Smith",25),
("345678901234","Sam Brown",28),
("456789012345","Emily Davis",22),
("567890123456","Michael Johnson",35),
("678901234567","Sarah Wilson",27),
("789012345678","David Lee",29),
("890123456789","Laura Taylor",24),
("901234567890","James Anderson",31),
("012345678901","Linda Thomas",26);

select * from person;

---- create view to show aadhar_id and name of person -------
create or replace view vw_person AS
select aadhar_id,name from person;

select * from vw_person; ---- this also works as table itself

--- list all the views in the database ---
show tables;

-- drop view if exists vw_person; -- drop the view
--- since view is temp table, (table) so we can it in place of table in any query

