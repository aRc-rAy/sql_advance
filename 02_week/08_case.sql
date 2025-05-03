use week_02;

show tables;

select * from employee;

select 
      case 
            when empSalary >= 70000 then "High Salary"
            when empSalary >= 60000 then "Medium Salary"
            else "Low Salary"
      end as SalaryRange,
      empName, empSalary
from employee
order by employee.empSalary desc;