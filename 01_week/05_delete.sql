use week_01;

show tables;

select * from customer;

insert into customer VALUES
(1000,'temp','temp','temp_country',101,01011);

select * from customer;

-- delete from customer where CustomerID = 1000;
DELETE from customer where CustomerID = 1000;

select * from customer;

-- delete from customer; -- It will delete all records from the table customer


----------------------------------------Rollback----------------------------------------
Start TRANSACTION;
delete from customer where CustomerID = 2;
select * from customer;
ROLLBACK;
select * from customer;
commit;

select * from customer;