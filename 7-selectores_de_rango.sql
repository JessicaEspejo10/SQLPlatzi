SELECT *
FROM platzi.alumnos
WHERE tutor_id BETWEEN 1 AND 10;

SELECT int4range(1,20) @>3 --rango de enteros cortos entre 1 y 20, y consulta si 3 hace parte del rango
FROM platzi.alumnos

SELECT numrange(11.1, 22.2) && nunrange(20.0,30.0); -- rango de numeros que cumplen las dos condiciones (SI)

SELECT UPPER(int8range(15,25)); --arroja el mayor valor del rango

SELECT LOWER(int8range(15,25)); --arroja el menor valor del rango

SELECT int4range(10,20) * int4range(15,25); --intersección

SELECT ISEMPTY(numrange(1,5)); --si el rango está vacio o no

SELECT *
FROM platzi.alumnos
WHERE int4range(10,20) @> tutor_id;

-- intersección de id de carreras y el id de tutores
SELECT 
	numrange(min(carrera_id),max(carrera_id)) 
	* 
	numrange(min(tutor_id),max(tutor_id))
FROM platzi.alumnos; --intersección
