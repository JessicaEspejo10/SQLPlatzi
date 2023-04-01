--FECHA Y HORA
SELECT *, EXTRACT(YEAR FROM fecha_incorporacion) AS anio_incorporacion
FROM platzi.alumnos;

SELECT DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion
FROM platzi.alumnos;

SELECT fecha_incorporacion,
		DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion,
		DATE_PART('MONTH', fecha_incorporacion) AS mes_incorporacion,
		DATE_PART('DAY', fecha_incorporacion) AS dia_incorporacion
FROM platzi.alumnos;

--HORA
SELECT fecha_incorporacion,
		EXTRACT(HOUR FROM fecha_incorporacion) AS hora_incorporacion,
		EXTRACT(MINUTE FROM fecha_incorporacion) AS min_incorporacion,
		ROUND(EXTRACT(SECOND FROM fecha_incorporacion),0) AS sec_incorporacion
FROM platzi.alumnos;

SELECT fecha_incorporacion,
		DATE_PART('HOUR', fecha_incorporacion) AS hora_incorporacion,
		DATE_PART('MINUTE', fecha_incorporacion) AS min_incorporacion,
		DATE_PART('SECOND', fecha_incorporacion) AS sec_incorporacion
FROM platzi.alumnos;
