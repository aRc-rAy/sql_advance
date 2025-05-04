use week_04;

show tables;

select id from one;

select id from two;

--- intersect records

select * from one 
where id <=7 
INTERSECT
select * from one
where id>=3;


-- except records
select id from one 
where id<=7 
EXCEPT
select id from one 
where id>=3;

