create table Workers (
	
	worker_id int not null primary key,
	first_name varchar(20),
	last_name varchar(20),
	salary int,
	joining_date timestamp,
	department varchar(20)

);
insert into Workers (worker_id, first_name, last_name, salary, joining_date, department) values
(1, 'Rick', 'Smith', 100000, '2021-02-20 09:00:00', 'HR'),
(2, 'Sam', 'Williams', 80000, '2021-06-11 09:00:00', 'Admin'),
(3, 'John', 'Brown', 300000, '2021-02-20 09:00:00', 'HR'),
(4, 'Amy', 'Jones', 500000, '2021-02-20 09:00:00', 'Admin'),
(5, 'Sean', 'Garcia', 500000, '2021-06-11 09:00:00', 'Admin'),
(6, 'Ryan', 'Miller', 200000, '2021-06-11 09:00:00', 'Account'),
(7, 'Patty', 'Davis', 75000, '2021-01-20 09:00:00', 'Account'),
(8, 'Monica', 'Rodriguez', 90000, '2021-04-11 09:00:00', 'Admin');

create table Bonus (
	
	worker_ref_id int references Workers(worker_id),
	bonus_date timestamp,
	bonus_amount int

);

insert into Bonus(worker_ref_id, bonus_date, bonus_amount) values
(1,	'2021-02-20 00:00:00',	5000),
(2,	'2021-06-11 00:00:00',	3000),
(3,	'2021-02-20 00:00:00',	4000),
(1,	'2021-02-20 00:00:00',	4500),
(2,	'2021-06-11 00:00:00',	3500);

--a) Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000
select first_name, last_name, salary from Workers where salary >=5000 and salary <=100000;

--b) Write an SQL query to fetch the no. of workers for each department in the descending order.
select count(*), department from Workers group by department order by department desc;

--c) Write an SQL query to fetch intersecting records of two tables.
select * from Workers inner join Bonus on worker_id = worker_ref_id;

--d) Write an SQL query to determine the 5th highest salary without using TOP or limit method.
select * from Workers A
where 4 = (select count(distinct salary) from Workers B
where B.salary > A.salary
);