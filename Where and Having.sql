--DIFFERENCE BETWEEN WHERE AND HAVING IN SQL SERVER
	Select Name, sum(salary) as totalsalary
	from employee
	group by name
	Having sum(salary) > 8000
	------------------------------------------
	Select Name, sum(salary) as totalsalary
	from employee	
    where sum(salary) > 8000
	group by name
	Having Sum(salary) > 8000
/*
	Msg 147, Level 15, State 1, Line 9
	An aggregate may not appear in the WHERE clause unless it is in a subquery contained in a 
	HAVING clause or a select list, and the column being aggregated is an outer reference.
*/
	-------------------------------------------
		Select name, sum(salary) as totalsalary
		from employee
		where name in ('mike ', 'redwan')
	    group by name
------------------------------------------------
		Select name, sum(salary) as totalsalary
		from employee
		where name in ('mike ', 'redwan')
		--group by name
/*Msg 8120, Level 16, State 1, Line 18
Column 'employee.Name' is invalid in the select list because it is not contained in 
either an aggregate function or the GROUP BY clause.
*/
--SELECT * FROM EMPLOYEE
	----------------------------------------
	Select name, sum(salary) as totalsalary
				from employee
				group by name
	having name in ('mike ', 'redwan')

	
--SELECT * FROM EMPLOYEE
	Select * from (Select name, sum(salary) as totalsalary
				from employee
				where name in ('mike ', 'redwan')
	group by name) D
	where totalsalary > 8000
	-------------------------------------------------------------
	--Select * from (Select name, sum(salary) as totalsalary
	--			from employee
	--			where name in ('mike ', 'redwan')
	--group by name) D
	--where totalsalary > 8000