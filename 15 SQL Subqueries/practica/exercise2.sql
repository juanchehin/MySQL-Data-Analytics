/*
Select the entire information for all employees whose job title is “Assistant Engineer”. 

Hint: To solve this exercise, use the 'employees' table.
------------
Seleccione la información completa para todos los empleados cuyo puesto de trabajo sea "Ingeniero asistente".

Sugerencia: para resolver este ejercicio, utilice la tabla 'empleados'.
*/

SELECT	*
FROM	employees e
WHERE	
	EXISTS(
    SELECT	*
	FROM	titles
	WHERE	title = 'Assistant Engineer'
    )