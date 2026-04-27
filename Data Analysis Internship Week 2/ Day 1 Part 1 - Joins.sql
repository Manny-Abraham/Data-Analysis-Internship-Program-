-- Inner Joins
select *
from employee_demographics;
select * 
from employee_salary;
select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    select dem.employee_id, age, occupation
    from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id;

-- Outer Joins
  select *
    from employee_demographics as dem
left outer join employee_salary as sal
	on dem.employee_id = sal.employee_id;
      select *
    from employee_demographics as dem
right outer join employee_salary as sal
	on dem.employee_id = sal.employee_id;

-- Self Joins
select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1. last_name as last_name_santa,
emp2.employee_id as emp,
emp2.first_name as first_name_emp,
emp2. last_name as last_name_emp
from employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id + 1 = emp2.employee_id;
    
    -- Joining Multiple Tables
    select *
    from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
    inner join parks_departments as pd
		on sal.dept_id = pd.department_id;
    
    select *
    from parks_departments;
