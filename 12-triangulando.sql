--TRIANGULANDO - MÉTODO RECURSIVOS

--genera string de 15 posiciones y rellena posiciones faltantes con 
--de izquierda a derecha
SELECT lpad('sql',15,'*'); 

--genera string de 15 posiciones y rellena posiciones faltantes con 
--de derecha a izquierda
SELECT rpad('sql',15,'*');

SELECT lpad('*', id, '*')
FROM platzi.alumnos
WHERE id < 10
ORDER BY carrera_id;

SELECT lpad('*', CAST(row_id AS int), '*')
FROM (
	SELECT ROW_NUMBER() OVER(ORDER BY carrera_id) AS row_id, *
	FROM platzi.alumnos
) AS alummnos_with_row_id
WHERE row_id <= 5
ORDER BY carrera_id;

