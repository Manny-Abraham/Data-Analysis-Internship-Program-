Select first_name, last_name, age,
CASE
	WHEN age <= 30 then 'young' 
    when age between 30 and 50 then 'old'
    when age > 50 then "On Death's Door"
    end as lifeforce
    from employee_demographics;
    
    -- Pay Increase and Bonus
    -- < 50000 = 5%
    -- > 50000 = 7%
    -- Finance = 10% bonus
    select first_name, last_name, salary,
    case
    When salary < 50000 then salary + (salary * 0.05)
    when salary > 50000 then salary + (salary * 0.07)
    end as new_salary,
    case
    when dept_id = 6 then salary*.10
    end as Bonus
    from employee_salary;
