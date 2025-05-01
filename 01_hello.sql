show DATABASES;

CREATE DATABASE IF NOT EXISTS sample_01;
USE sample_01;

CREATE table if not exists vw_name
(
      name varchar(30),
      age int,
      address varchar(50),
      phone varchar(15),
      email varchar(50)
);

insert into vw_name values 
('John Doe', 30, '123 Main St', '555-1234', 'john@gmail.com'), 
('Jane Smith', 25, '456 Elm St', '555-5678', 'jane@gmail.com'), 
('Alice Johnson', 28, '789 Oak St', '555-9012', 'alice@gmail.com'), 
('Bob Brown', 35, '321 Pine St', '555-3456', 'bob@gmail.com');

show tables;

select * from vw_name;

select * from sakila.actor limit 5;