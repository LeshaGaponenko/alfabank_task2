select e.name,eb.name from (employee e cross join employee eb) 
	where e.id > eb.id 
	and e.position != eb.position
	and eb.department_id = '&department_id'
	and e.department_id = eb.department_id;
select name from employee e where e.id in
	(select chief_id from employee eb
		GROUp BY eb.chief_id
		having e.salary >= avg(eb.salary) * 2);