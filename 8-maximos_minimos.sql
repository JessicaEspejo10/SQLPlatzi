--fecha más reciente de incorporacion por carrera
SELECT carrera_id, max(fecha_incorporacion)
FROM platzi.alumnos
GROUP BY carrera_id
ORDER BY carrera_id DESC;

--minimo nombre por id de tutor
SELECT tutor_id, MIN(nombre)
FROM platzi.alumnos
GROUP BY tutor_id
ORDER BY tutor_id DESC;