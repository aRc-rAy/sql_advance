show DATABASEs like '%week_01%';

use week_01;

show TABLES;
-- show TABLES like '%customer%';

select * from customer;

-- print the schema of the table customer
DESCRIBE customer;

select CustomerName, Age, Phone from customer;

select CustomerName as Name from customer;

select c.CustomerName, c.Age as AGE, c.Phone as Contact from customer as c;

