-- CTEs

WITH CTE_EXAMPLE AS
(
select gender, avg(salary) AVG_SAL, max(salary) MAX_SAL, min(salary) MIN_SAL, count(salary) COUNT_SAL
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
    group by gender
    )
    select avg(avg_sal)
    from CTE_EXAMPLE;
    
    
select avg(avg_sal)
from(select gender, avg(salary) AVG_SAL, max(salary) MAX_SAL, min(salary) MIN_SAL, count(salary) COUNT_SAL
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
    group by gender
    )example_subquerry
   ;
   
     select avg(avg_sal)
    from CTE_EXAMPLE;
    
    
WITH CTE_EXAMPLE AS
(
select employee_id, gender, birth_date
from employee_demographics 
where birth_date > '1985-01-01'
    ),
    cte_example2 as
    (
    select employee_id, salary
    from employee_salary
    where salary > 50000
    )
    select *
    from CTE_EXAMPLE
    join cte_example2
		 on CTE_EXAMPLE.employee_id = cte_example2.employee_id
