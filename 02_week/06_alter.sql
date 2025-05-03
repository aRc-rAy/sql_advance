use week_02;

show tables;

select * from employee;

--- rename table_name to new_table_name;
ALTER table employee
rename to employee_mod;

show tables;

select * from employee_mod;

-- Add new columns to table_name;
alter table employee_mod
add firstName varchar(20) after empName,
add lastName varchar(20) after firstName;

select * from employee_mod;

-- Remove columns from table_name;
alter table employee_mod
drop firstName,
drop lastName;

desc employee_mod;

alter table employee_mod 
add firstName varchar(20) after empName;

select * from employee_mod;


--modify column_name datatype;
ALTER TABLE employee_mod
MODIFY empSalary decimal(10,2) NOT NULL DEFAULT 0.00 after empName;

select * from employee_mod;


---Rename column_name;
ALTER table employee_mod
CHANGE firstName empFirstName VARCHAR(20);