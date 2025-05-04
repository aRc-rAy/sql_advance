use week_04;

show tables;

select * from one;

-- cross join
select * from one f,one s
order by f.id,s.id;

-- self join
select * from one f,one s
where f.id<s.id
ORDER BY s.id,f.id;

