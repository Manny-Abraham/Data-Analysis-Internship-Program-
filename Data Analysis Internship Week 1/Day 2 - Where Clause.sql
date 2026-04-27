select *
from parks_and_recreation. employee_salary
where first_name = 'leslie';
select *
from parks_and_recreation. employee_salary
where salary <= 50000;
select *
from parks_and_recreation. employee_demographics
where birth_date > '1985-01-01'
;
-- and or not -- logical operators
select *
from parks_and_recreation. employee_demographics
where birth_date > '1985-01-01'
or not gender = 'male';
select *
from parks_and_recreation. employee_demographics
where (first_name = 'leslie' and age = 44) or age > 55
;
select *
from parks_and_recreation. employee_demographics
where first_name like 'a___%';
