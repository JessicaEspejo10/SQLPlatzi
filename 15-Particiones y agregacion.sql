--ROW NUMBER
SELECT ROW_NUMBER() OVER(ORDER BY fecha_incorporacion) AS row_id, *
FROM platzi.alumnos;

-- primer valor de un criterio
SELECT FIRST_VALUE(colegiatura) OVER(PARTITION BY carrera_id) AS primera_colegiatura, *
FROM platzi.alumnos;

--ultimo valor de un criterio
SELECT LAST_VALUE(colegiatura) OVER(PARTITION BY carrera_id) AS ultima_colegiatura, *
FROM platzi.alumnos;

--valor enesimo de un criterio
SELECT NTH_VALUE(colegiatura, 3) OVER(PARTITION BY carrera_id) AS ultima_colegiatura, *
FROM platzi.alumnos;

--rango, deja un gap entre las particiones ya que valores iguales ocupan la misma posiición pero se cuentan para el siguiente valor del ranking
SELECT *,
	RANK() OVER(PARTITION BY carrera_id ORDER BY colegiatura DESC) AS colegiatura_rank
FROM platzi.alumnos
ORDER BY carrera_id, colegiatura_rank;

--rango más denso
SELECT *,
	DENSE_RANK() OVER(PARTITION BY carrera_id ORDER BY colegiatura DESC) AS colegiatura_rank
FROM platzi.alumnos
ORDER BY carrera_id, colegiatura_rank;

--percent rank = (RANK - 1) / (TOTAL_ROWS - 1)
SELECT *,
	PERCENT_RANK() OVER(PARTITION BY carrera_id ORDER BY colegiatura DESC) AS colegiatura_rank
FROM platzi.alumnos
ORDER BY carrera_id, colegiatura_rank;

