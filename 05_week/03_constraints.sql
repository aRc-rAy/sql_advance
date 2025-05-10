use week_05;

show tables;

create table if not exists constraint_test(
    id int not null UNIQUE,
    name varchar(20) not NULL,
    age int NULL ,
    salary decimal(10,2),
    PRIMARY KEY(id),
    UNIQUE(name),
    CHECK(age>=0),
    CHECK(salary>=0)
);

insert into constraint_test VALUES
(1,"John Doe",30,50000.00),
(2,"Jane Smith",25,60000.00),
(3,"Sam Brown",28,70000.00),
(4,"Emily Davis",22,80000.00),
(5,"Michael Johnson",35,90000.00),
(6,"Sarah Wilson",27,100000.00),
(7,"David Lee",29,110000.00),
(8,"Laura Taylor",24,120000.00),
(9,"James Anderson",31,130000.00),
(10,"Linda Thomas",26,140000.00);

select * from constraint_test;

create table if not exists referece_test
(
      PSID int not null,
      amount BIGINT not null DEFAULT 0 CHECK (amount >= 0),
      FOREIGN KEY (PSID) REFERENCES constraint_test(id) ON DELETE CASCADE
);

