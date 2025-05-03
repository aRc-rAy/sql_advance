show DATABASES;

use week_02;

show tables;

desc employee;

select * from employee;
insert into employee VALUES
(5,"Man",70000.00);

select * from employee
order by empSalary DESC
limit 3;


