--REGULARIZACIÓN DE EXPRESIONES
SELECT email
FROM platzi.alumnos
WHERE email ~*'[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}';
--caracteres AZ mayusc o minuscula, de 0 a 9 o caracteres como ._%+-
--especificamente debe tener @ y despues caracteres AZ mayusc o minuscula con punto o guion,
--termina con punto y letras de dos a cuatro caracteres
