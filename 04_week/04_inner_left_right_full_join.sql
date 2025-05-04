use week_04;

show tables;

create table if not exists left_table
(
     id int PRIMARY KEY,
     name VARCHAR(50) NOT NULL,
     age int NOT NULL DEFAULT 0 check (age>=0),
     income BIGINT check (income>=0) DEFAULT 0
);

CREATE TABLE IF NOT EXISTS right_table (
    id INT NOT NULL, 
    amount INT NOT NULL DEFAULT 0 CHECK (amount >= 0), 
    FOREIGN KEY (id) REFERENCES left_table(id) ON DELETE CASCADE
);

-- drop table if EXISTS right_table;

select * from right_table;


INSERT into left_table VALUES
(1,"John Doe",20,1000),
(2,"Jane Smith",22,2000),
(3,"Sam Brown",19,1500),
(4,"Emily Davis",21,2500),
(5,"Michael Johnson",23,3000),
(6,"Sarah Wilson",20,3500),
(7,"David Lee",22,4000),
(8,"Laura Taylor",19,4500),
(9,"James Anderson",21,5000),
(10,"Linda Thomas",23,5500);

insert into left_table VALUES
(11,"Chris Evans",20,6000),
(12,"Scarlett Johansson",22,6500),
(13,"Robert Downey Jr.",19,7000),
(14,"Tom Hiddleston",21,7500),
(15,"Chris Hemsworth",23,8000),
(16,"Mark Ruffalo",20,8500),
(17,"Jeremy Renner",22,9000),
(18,"Benedict Cumberbatch",19,9500),
(19,"Tom Holland",21,10000),
(20,"Samuel L. Jackson",23,10500);

select * from left_table;

-- run this many times to add values to the table
insert into right_table VALUES
(1,100),
(2,200),
(3,300),
(4,400),
(5,500),
(6,600),
(7,700),
(8,800),
(9,900),
(10,1000);


-- -- can't insert due to foreign key constraint
-- insert into right_table VALUES
-- (11,1100);


select count(*) from right_table; -- 30 records i got as i run insert 3 times


----------------------------------- left join -----------------------------------
select name,age, sum(income) + sum(amount) as total_money  from left_table l
left join right_table r
on l.id = r.id
group by (l.id)
order by l.id,r.id;

--------------------------------- handle null case  --------------------------------------------
select l.id, name,age, sum(COALESCE(income,0)) + sum(COALESCE(amount,0)) as total_money  from left_table l
left join right_table r
on l.id = r.id
group by (l.id)
order by l.id,r.id;


----------------------------------------------------------------------------------------------
create table if not exists address
(
     id int PRIMARY KEY,
     city VARCHAR(50) NOT NULL,
     state VARCHAR(50) NOT NULL,
     country VARCHAR(50) NOT NULL
);

insert into address VALUES
(1,"New York","NY","USA"),
(2,"Los Angeles","CA","USA"),
(3,"Chicago","IL","USA"),
(4,"Houston","TX","USA"),
(5,"Phoenix","AZ","USA"),
(6,"Philadelphia","PA","USA"),
(7,"San Antonio","TX","USA"),
(8,"San Diego","CA","USA"),
(9,"Dallas","TX","USA"),
(10,"San Jose","CA","USA");

INSERT into address values 
(21,"Austin","TX","USA"),
(22,"Jacksonville","FL","USA"),
(23,"Fort Worth","TX","USA"),
(24,"Columbus","OH","USA"),
(25,"Charlotte","NC","USA"),
(26,"San Francisco","CA","USA"),
(27,"Indianapolis","IN","USA"),
(28,"Seattle","WA","USA"),
(29,"Denver","CO","USA"),
(30,"Washington D.C.","DC","USA");

select * from left_table;

select * from address;

---------------------------- left join with address table ----------------------------
select * from left_table l
left join address a
ON l.id = a.id;


----------------------------- right join with address table ----------------------------
select * from left_table l
right join address a
ON l.id = a.id;

---------------------------- full join with address table ----------------------------
select * from left_table l
left JOIN address a
ON l.id = a.id
UNION
select * from left_table l
RIGHT JOIN address a
on l.id = a.id;


-------------------------- inner join with address table --------------------------
select * from left_table l
inner JOIN address a
ON l.id = a.id;