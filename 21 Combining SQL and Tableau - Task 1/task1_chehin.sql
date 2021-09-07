SELECT 
	emp_no,
    CASE 
		WHEN gender = 'M' then 'Male'
        WHEN gender = 'F' then 'Female'
	end as gender,
    year(hire_date) as 'year'
FROM
	t_employees
WHERE
	hire_date > '1889-12-12'
GROUP BY hire_date;