--SELECT * 
--FROM platzi.alumnos
--LIMIT 5; --370 msec
--FETCH FIRST 5 ROWS ONLY; --368 msec

SELECT * 
FROM	(
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
WHERE row_id <= 5; --360 msec