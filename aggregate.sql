use realestate;

drop table employee;
create table employee(
id int primary key auto_increment,
name varchar(40) not null,
salary bigint,
state varchar(20) not null,
country varchar(20) not null default('india'),
isactive bit default(1)
);

select * from employee;

insert into employee(name,salary,state) values ('MALIKA',50000,'AP'),('MALI',30000,'Ap'),('REETHU SRI',30000,'TS'),('REETHU',45000,'TS'),('EAGLE',25000,'SRILANKA');

select count(id) from employee;

select max(salary) from employee;
select min(salary) from employee;
select avg(salary) from employee;

select rtrim(name) from employee;
select length(name) from employee;
select left(name,2) from employee;
select right(name,2) from employee;
select lower(name) from employee;
select upper(state) from employee;

select current_date() from employee;
select current_time() from employee;
select count(id) from employee where state="ap";
select count(id) from employee where state="ts";
select count(id) from employee where state="srilanka";

select  state,count(id) as noofemployee from employee group by state;
select country,state,count(id) as noofemployee from employee where salary >=30000 group by country,state having count(id)>=2;

