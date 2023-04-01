SELECT *
FROM generate_series(5.5,1.2,-2.1); 
--cuando el primer arg1 > arg2 se debe agregar el paso en el arg3

SELECT current_date + s.a as dates
FROM generate_series(0,14,7) AS s(a) --se nombra la tabla con la columna generada

SELECT *
FROM generate_series('2020-09-01 00:00:00'::timestamp, 
					 '2020-09-04 12:00:00', '10 hours');

--alumnos con carrera id entre 1 y 10
SELECT a.id, a.nombre, a.apellido, a.carrera_id, s.a
FROM platzi.alumnos AS a
	INNER JOIN generate_series(0,10) AS s(a)
	ON s.a = a.carrera_id
ORDER BY a.carrera_id;

SELECT lpad('*',s.a,'*')
FROM generate_series(1,10) AS s(a); 

--agrega columna con indice ordinal
SELECT *
FROM generate_series(10,2,-2) WITH ordinality;

