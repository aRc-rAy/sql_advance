use week_01;

show TABLEs;

select * from customer;

select CustomerName, Age, Phone from customer where Age > 30;

select CustomerName, Age, Phone from customer where Age in (25,28, 30);

select CustomerName, Age, Phone from customer where Age between 15 and 30;

