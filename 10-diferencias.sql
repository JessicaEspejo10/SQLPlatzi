--diferencias:elementos de una tabla que no se encuentran en la otra

SELECT carrera_id, COUNT(*) AS cuenta
FROM platzi.alumnos
GROUP BY carrera_id
ORDER BY cuenta DESC;

--Se borran registros para efectos del ejercicio
--DELETE FROM platzi.carreras 
--WHERE id BETWEEN 30 AND 40;

--relaciona alumnos cuya carrera no existe
SELECT a.NOMBRE, a.apellido, a.carrera_id,
		c.id, c.carrera
FROM platzi.alumnos as a
	LEFT JOIN platzi.carreras AS c 
	ON a.carrera_id = c.id
WHERE c.id IS NULL
ORDER BY a.carrera_id;

--Join completo de las dos tablas
SELECT a.NOMBRE, a.apellido, a.carrera_id,
		c.id, c.carrera
FROM platzi.alumnos as a
	FULL OUTER JOIN platzi.carreras AS c 
	ON a.carrera_id = c.id
ORDER BY a.carrera_id;


	