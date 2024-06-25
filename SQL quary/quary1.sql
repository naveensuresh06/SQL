create table employee(
	emp_id int primary key,
	emp_name varchar(30),
	emp_design varchar(30),
	emp_sal int check (emp_sal>=30000),
	emp_age int,
	emp_email varchar unique
);
insert into employee values(1,'naveen','manager',125000,34,'naveensuresh6523@gmail.com'),
                           (2,'divya','hr',170000,34,'divyabharathi1482003.com'),
                           (3,'suresh','sales',30000,23,'suresh5432@gmail.com'),
                           (4,'bharathi','manager',70000,30,'bharathi1482003.com'),
                           (5,'nanthini','hr',155000,31,'nanthusiva123@gmail.com'),
                           (6,'nathiya','CEO',250000,40,'nathisathish876@gmail.com'),
                           (7,'siva','account',75000,31,'sivaraman342@gmail.com'),
                           (8,'sathish','sales',35000,27,'sathish5432@gmail.com'),
                           (9,'narmatha','manager',150000,30,'naramatha2003.com'),
                           (10,'sriram','MD',180000,31,'narmathasriram123@gmail.com'),
                           (11,'aakash','account',50000,29,'aakash2682205@gmail.com'),
                           (12,'vikram','sales',45000,27,'vikram342@gmail.com');
select * from employee;
select * from employee
order by emp_id;
select * from employee limit 1;--show 1st one
select * from employee
order by emp_sal desc;
select * from employee
order by emp_id desc limit 1; --show last one
select * from employee
order by emp_sal desc as r from emp 
	where r=4;--show highest salary
update employee set emp_email='nathiyasathish876@gmail.com'
	where emp_id=6;
select * from (select * from Employee 
       ORDER BY emp_sal DESC limit 5)
       ORDER BY emp_sal limit 1;
select * from employee where emp_design='manager'
	order by emp_age;