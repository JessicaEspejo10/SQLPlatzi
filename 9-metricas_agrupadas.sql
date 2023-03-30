--relaciones alumno - tutor
SELECT CONCAT(a.nombre,' ',a.apellido) AS alumno, 
		CONCAT(t.nombre,' ',t.apellido) AS tutor
FROM platzi.alumnos AS a
	INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id;

--tutores con mayor cantidad de alumnos a su cargo
SELECT CONCAT(t.nombre,' ',t.apellido) AS tutor,
	COUNT(*) AS alumnos_por_tutor
FROM platzi.alumnos AS a
	INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id
GROUP BY tutor
ORDER BY alumnos_por_tutor DESC;

--promedio de alumnos por tutor
SELECT AVG(alumnos_por_tutor) AS promedio_al_por_tut
FROM (SELECT CONCAT(t.nombre,' ',t.apellido) AS tutor,
		COUNT(*) AS alumnos_por_tutor
	FROM platzi.alumnos AS a
		INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id
	GROUP BY tutor
) AS alumnos_tutor;
