create database if not exists week_02;

show DATABASES;

use week_02;

CREATE table if not exists employee
(
      empId int(10) PRIMARY KEY,
      empName varchar(50) NOT NULL,
      empSalary decimal(10,2) NOT NULL
);

insert into employee VALUES
(1, 'John Doe', 50000.00),
(2, 'Jane Smith', 60000.00),
(3, 'Alice Johnson', 55000.00),
(4, 'Bob Brown', 70000.00);

select * from employee;


--- Count of employee whose salary is less than or equal ---
with temp_table as 
(
      select * from employee
)
select count(*) , t.empSalary from employee e,temp_table t
where e.empSalary<=t.empSalary
group by t.empSalary 
order by t.empSalary desc;