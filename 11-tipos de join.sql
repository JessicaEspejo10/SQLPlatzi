--LEFT JOIN EXCLUSIVO
SELECT a.NOMBRE, a.apellido, a.carrera_id,
		c.id, c.carrera
FROM platzi.alumnos as a
	LEFT JOIN platzi.carreras AS c 
	ON a.carrera_id = c.id
WHERE c.id IS NULL -- Al retirar esta linea de clausula se vuelve un left join normal
ORDER BY a.carrera_id DESC;

--RIGHT JOIN EXCLUSIVO
SELECT a.NOMBRE, a.apellido, a.carrera_id,
		c.id, c.carrera
FROM platzi.alumnos as a
	RIGHT JOIN platzi.carreras AS c 
	ON a.carrera_id = c.id
WHERE a.carrera_id IS NULL -- Al retirar esta linea de clausula se vuelve un right join normal
ORDER BY c.id DESC;

--JOIN SIN ESPECIFICAR LO TOMA COMO INNER JOIN
SELECT a.NOMBRE, a.apellido, a.carrera_id,
		c.id, c.carrera
FROM platzi.alumnos as a
	INNER JOIN platzi.carreras AS c 
	ON a.carrera_id = c.id
ORDER BY c.id DESC;

--DIFERENCIA SIMETRICA - FULL OUTER JOIN
SELECT a.NOMBRE, a.apellido, a.carrera_id,
		c.id, c.carrera
FROM platzi.alumnos as a
	FULL OUTER JOIN platzi.carreras AS c 
	ON a.carrera_id = c.id
WHERE a.carrera_id IS NULL OR c.id IS NULL
ORDER BY a.carrera_id DESC, c.id DESC;






