use week_02;

show tables;

-- rename to employee
alter table employee_mod 
rename to employee;

select * from employee;

-- find the second highest salary
select empSalary from employee e
where EXISTS (
      select 1 from employee ee
      where e.empSalary < ee.empSalary
)
order by empSalary desc
limit 1;

