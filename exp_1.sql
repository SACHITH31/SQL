show databases;
use student;
show tables;


-- ddl
-- create, rename, truncate, drop, alter

-- dml
-- update, insert, delete

-- dcl
-- grant, revoke
create table studentSample (
	id int primary key,
    name varchar(20),
    email varchar(20),
    phone_number int,
    branch varchar(12)
);

insert into studentSample values
(1, 'sachith', 'sachith@gmail.com', 1234, 'csm'),
(2, 'ricky', 'ricky@gmail.com', 5678, 'csm'),
(3, 'obito', 'obito@gmail.com', 9101, 'csm');

alter table studentSample add sample varchar(11);
alter table studentSample drop sample;

truncate table studentSample;

rename table studentSample to std;
select * from std;

rename table std to studentSample;
select * from studentSample;

-- dml
update studentSample set id = 104 where id = 3;

delete from studentSample where id = 104;

select * from studentSample;



insert into studentSample values
(3, 'obito', 'obito@gmail.com', 9101, 'csm'),
(4, 'sasuke', 'sasuke@gmail.com', 1112, 'csm');

select * from studentSample;

savepoint s2;
insert into studentSample values 
(31, 'obito1', 'obito@gmail.com1', 91011, 'csm1');

rollback to s1;

select * from studentSample;

