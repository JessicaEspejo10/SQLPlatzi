--Segunda colegiatura más alta
SELECT DISTINCT colegiatura
FROM platzi.alumnos AS a1
WHERE 2 = (
	SELECT COUNT (DISTINCT colegiatura)
	FROM platzi.alumnos a2
	WHERE a1. colegiatura <= a2.colegiatura
);

SELECT DISTINCT colegiatura
FROM platzi.alumnos AS a1
WHERE tutor_id = 20 --filtar por tutor
ORDER BY colegiatura DESC
LIMIT 1 OFFSET 1;

SELECT *
FROM platzi.alumnos AS datos_alumn
INNER JOIN(
	SELECT DISTINCT colegiatura
	FROM platzi.alumnos
	WHERE tutor_id = 20
	ORDER BY colegiatura DESC
	LIMIT 1 OFFSET 1
) AS segunda_may_colegiatura
ON datos_alumn.colegiatura = segunda_may_colegiatura.colegiatura; --el join permite obtener otros datos de almunos con la segunda mayor colegiatura

SELECT *
FROM platzi.alumnos AS datos_alumnos
WHERE colegiatura = (
	SELECT DISTINCT colegiatura
	FROM platzi.alumnos
	WHERE tutor_id = 20
	ORDER BY colegiatura DESC
	LIMIT 1 OFFSET 1
);



