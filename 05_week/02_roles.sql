use week_05;

show tables;

select * from person;

-- create role for user
create role if not exists admin;
create role if not exists user;
create role if not exists guest;
create role if not exists test;

--- drop role
drop role if exists test;


-- grant access to roles
grant ALTER , CREATE , DELETE , INSERT , SELECT , UPDATE on person to admin;
grant SELECT on person to user;
grant SELECT on person to guest;



-- show all the roles in the database
show grants for admin;
show grants for user;
show grants for guest;


-- revoke access from roles
revoke select on person from guest;

-- 

