--SELECCIONAR POR AÑO

SELECT *
FROM platzi.alumnos
WHERE (EXTRACT(YEAR FROM fecha_incorporacion)) = 2020;

SELECT *
FROM platzi.alumnos
WHERE (DATE_PART('YEAR', fecha_incorporacion)) < 2018;

SELECT *
FROM (
	SELECT *,
		DATE_PART('YEAR', fecha_incorporacion ) AS anio_incorporacion
	FROM platzi.alumnos
) AS alumnos_con_anio
WHERE anio_incorporacion >2019;

--AÑO Y MES

SELECT *
FROM platzi.alumnos
WHERE (DATE_PART('YEAR', fecha_incorporacion)) = 2018
	AND (DATE_PART('MONTH', fecha_incorporacion)) = 5
;