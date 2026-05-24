-- UPDATE

UPDATE estudiantes SET curso = 'Inteligencia Artificial' WHERE id_estudiante = 1;
UPDATE estudiantes SET edad = '18' WHERE edad < 18;
UPDATE estudiantes SET fecha_registro = '2026-03-29' WHERE id_estudiante = 5;
UPDATE estudiantes SET nombres = 'Sujeto', apellidos = 'Prueba', edad = 25 WHERE id_estudiante = 15 AND id_estudiante = 3;
UPDATE estudiantes SET curso = 'Hacking etico' WHERE curso = 'POO';
UPDATE estudiantes SET correo = 'carllanmi123@gmail.com' WHERE id_estudiante = 10;
UPDATE estudiantes SET correo = 'provisional1@gmail.com' WHERE id_estudiante = 15 AND id_estudiante = 6;