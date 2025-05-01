show DATABASES;

use week_01;

show tables;

select * from customer;

INSERT INTO customer VALUES
(1,'John Doe','Doe','USA',50,1234567890);

select * from customer;

-- clear the table customer
delete  from customer;

select * from customer;

----------------------------------Insert into customer----------------------------------
INSERT INTO customer (CustomerID, CustomerName, LastName, Country, Age, Phone) VALUES
(1,'John Doe','Doe','USA',30,12345),
(2,'Jane Smith','Smith','Canada',25,67890),
(3,'Alice Johnson','Johnson','UK',28,90123),
(4,'Bob Brown','Brown','Australia',35,45678),
(5,'Charlie Black','Black','Germany',40,78901),
(6,'Diana White','White','France',32,23456),
(7,'Ethan Green','Green','Italy',29,34567),
(8,'Fiona Blue','Blue','Spain',31,45678),
(9,'George Yellow','Yellow','Netherlands',27,56789),
(10,'Hannah Purple','Purple','Sweden',33,67890);

select * from customer;

insert into customer(CustomerId,LastName,Age) VALUES
(11,'temp',20),
(12,'temp',25),
(13,'temp',30),
(14,'temp',35),
(15,'temp',40);

select * from customer;

desc customer;

----------------------- Insert from one table to another table -----------------------

create table if not exists only_name
(
      CustomerName VARCHAR(50)
);

INSERT INTO only_name 
SELECT CustomerName FROM customer;

select * from only_name;