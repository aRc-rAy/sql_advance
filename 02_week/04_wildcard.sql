use week_02;

show tables;


select * from employee;

select * from employee
where empName like 'A%';

select empId, empName from employee
where `empName` like 'J%';

select * from employee
where empId like '1%'; -- 1% means 1 and any number of characters after it

select empId from employee
where empId like '2_'; -- 2_ means 2 and any one character

