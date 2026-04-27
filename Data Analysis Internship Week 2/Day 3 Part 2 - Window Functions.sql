 -- WINDOW FUNCTIONS 
 
 select gender,avg(salary) as avg_salary
 from employee_demographics as dem
 join employee_salary as sal
	on dem.employee_id = sal.employee_id
    group by gender;
    
select dem.first_name, dem.last_name,avg(salary) OVER(partition by gender) AS AVG_SALARY
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
select dem.first_name, dem.last_name, salary, sum(salary) OVER(partition by gender order by dem.employee_id) AS Rolling_total
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    select dem.employee_id, dem.first_name, dem.last_name, salary,
    row_number() over(partition by gender order by salary desc) as row_num,
    rank()over(partition by gender order by salary desc) as rank_num,
    dense_rank()over(partition by gender order by salary desc) as dense_rank_num
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    
 
