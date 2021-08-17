/*
Este script contiene lo visto en la clase "205 SQL Subqueries nested in SELECT and FROM"

========================
assign employye number 110022 as a manager to all employees from 10001 to 10020, and employee number 110039 as a manager to all employees from 10021 to 10040
======
asignar el número de empleado 110022 como gerente a todos los empleados de 10001 a 10020,
 y el número de empleado 110039 como gerente a todos los empleados de 10021 a 10040
*/

SELECT 
	A.*		# Subconjunto 'A'
FROM
	(SELECT
		e.emp_no AS employee_ID,
			MIN(de.dept_no) AS department_code,
            (SELECT
					emp_no
				FROM
					dept_manager
				WHERE
					emp_no = 110022) AS manager_ID
	FROM
		employees e
	JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
		e.emp_no <= 10020
	GROUP BY e.emp_no
    ORDER BY e.emp_no) AS A
UNION SELECT
	B.*
FROM 
	(SELECT
		e.emp_no AS employee_ID,
			MIN(de.dept_no) AS department_code,
            (SELECT
					emp_no
				FROM
					dept_manager
				WHERE
					emp_no = 110039) AS manager_ID
	FROM
		employees e
	JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
		e.emp_no <= 110020
	GROUP BY e.emp_no
    ORDER BY e.emp_no
    LIMIT 20) AS B;