--tomar registros que se encuentren en un set (conjunto de datos)
SELECT *
FROM(
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
WHERE row_id IN (1,5,15,30);

--tomar registros que cumplen una condición
SELECT *
FROM platzi.alumnos
WHERE id IN (
	SELECT id
	FROM platzi.alumnos
	WHERE tutor_id = 30
);

--resultados que NO se encuentran en el set
SELECT *
FROM platzi.alumnos
WHERE id NOT IN (
	SELECT id
	FROM platzi.alumnos
	WHERE tutor_id = 30
);