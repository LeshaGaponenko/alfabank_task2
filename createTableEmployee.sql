create table employee(
	id int primary key,
	department_id int,
	chief_id int references employee(id),
	name varchar2(20),
	position varchar2(20),
	salary number(10)
);