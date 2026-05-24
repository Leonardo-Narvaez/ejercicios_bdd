-- Consultas SELECT

SELECT * FROM estudiantes;
SELECT nombres, curso FROM estudiantes;
SELECT * FROM estudiantes WHERE edad > 18;
SELECT * FROM estudiantes WHERE edad BETWEEN 18 AND 25;
SELECT * FROM estudiantes WHERE curso = 'Base de Datos';
SELECT * FROM estudiantes WHERE correo = 'adri_tb@gmail.com' AND correo = 'daniela_rey287@gmail.com';

--Consultas SELECT por fechas

SELECT * FROM estudiantes WHERE fecha_registro > '2026-02-01';
SELECT * FROM estudiantes WHERE fecha_registro < '2026-05-01';         		
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-04-30';
SELECT * FROM estudiantes WHERE fecha_registro = '2026-03-15';
SELECT * FROM estudiantes WHERE curso = 'Programacion' AND fecha_registro > '2026-01-01';
