/*
17/08/2021

Extract the information about all department managers who were hired between the 1st of January 1990 and the 1st of January 1995.

Extraiga la información de todos los jefes de departamento que fueron contratados entre el 1 de enero de 1990 y el 1 de enero de 1995.
*/

SELECT * 
FROM dept_emp 
WHERE to_date
BETWEEN '1990-01-01' AND '1995-01-01'