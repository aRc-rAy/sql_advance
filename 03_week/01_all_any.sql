create DATABASE if not exists week_03;

use week_03;

show DATABASEs;

show tables;

create table if not exists student
(
      id int auto_increment primary key,
      name varchar(50) not null,
      age int not null,
      class varchar(50) not null
);

insert into student VALUES
(1,"John Doe",20,"5th Grade"),
(2,"Jane Smith",22,"6th Grade"),
(3,"Sam Brown",19,"5th Grade"),
(4,"Emily Davis",21,"6th Grade"),
(5,"Michael Johnson",23,"7th Grade"),
(6,"Sarah Wilson",20,"5th Grade"),
(7,"David Lee",22,"6th Grade"),
(8,"Laura Taylor",19,"5th Grade"),
(9,"James Anderson",21,"6th Grade"),
(10,"Linda Thomas",23,"7th Grade"),
(11,"Chris Evans",20,"5th Grade");

select * from student
where class="7th Grade";

select * from student
where true;

select DISTINCT age from student;

select * from student
where age = any (
      select age from student ss
      where  ss.age=20 or ss.age=23
);

