SELECT *
FROM employee_demographics
WHERE employee_id IN ( select employee_id
FROM employee_salary
WHERE dept_id = 1);

select first_name, salary, 
(select avg(salary)
FROM employee_salary) as 'Avg Salary'
from employee_salary;

select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender;

select avg(`max(age)`)
from
(select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender) as Agg_Table
;
