-- DELETE

DELETE FROM estudiantes WHERE id_estudiante = 3;
DELETE FROM estudiantes WHERE curso = 'RWS';
DELETE FROM estudiantes WHERE edad < 20;
DELETE FROM estudiantes WHERE fecha_registro BETWEEN '2026-02-01' AND '2026-01-01';
DELETE FROM estudiantes WHERE id_estudiante > 9 AND id_estudiante < 15;