use week_02;

show tables;

select * from employee;


update employee 
set empName="Ranjit", empSalary=80000.00
where empId=5;


--- update employee with transaction to rollback the changes
start TRANSACTION;
select * from employee;
UPDATE employee
set empName="Dilip";

select * from employee;

ROLLBACK;
select * from employee;
----------------------------------------------------------

select * from employee;