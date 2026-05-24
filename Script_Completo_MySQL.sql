drop table estudiantes;

-- Creacion de tabla

create table estudiantes(
	id_estudiante INT not null,
	nombres VARCHAR(50) not null,
	apellidos VARCHAR(50) not null,
	edad INT not null,
	curso VARCHAR(50) not null,
	fecha_registro VARCHAR(10) not null,

	constraint estudiantes_pk primary key(id_estudiante)
);

-- Modificar Tabla

ALTER TABLE estudiantes ADD COLUMN correo VARCHAR(100);  
-- Se coloco en esta ubicacion para que la ejecucion en cascada no tenga conflicto ya que el documento no especifica dicha accion
-- En caso de que se desee colocar en el orden del taller, se realizaria UPDATES a todos los estudiantes en vez 
-- de actualizar los INSERT, ciertos SELECT irian en otra posicion al igual que ciertos UPDATE.


-- Inserción de Datos

INSERT INTO estudiantes VALUES(1,'Adriana','Tamba',25,'POO','2026-12-03','adri_tb@gmail.com');
INSERT INTO estudiantes VALUES(2,'Kevin','Luna',28,'Base de Datos','2026-04-28','LUNAkevo@gmail.com');
INSERT INTO estudiantes VALUES(3,'Manolo','Luck',60,'RWS','2026-02-09','luck123@gmail.com');
INSERT INTO estudiantes VALUES(4,'Jhon','Pup',20,'Programacion','2026-03-15','pupOps@gmail.com');
INSERT INTO estudiantes VALUES(5,'Fernanda','Vasquez',45,'Base de Datos','2025-11-30','ferVznan@gmail.com');
INSERT INTO estudiantes VALUES(6,'Theo','Ramirez',15,'POO','2026-05-29','tRAM15@gmail.com');
INSERT INTO estudiantes VALUES(7,'Jefferson','Diaz',17,'RWS','2026-07-10','diazJeff07@gmail.com');
INSERT INTO estudiantes VALUES(8,'Damaris','Perez',22,'Base de Datos','2026-08-04','damaro2001@gmail.com');
INSERT INTO estudiantes VALUES(9,'Santiago','Vasquez',35,'POO','2026-11-05','santiago1996chuma@gmail.com');
INSERT INTO estudiantes VALUES(10,'Millan','Cardenas',23,'Base de Datos','2026-11-23','negritoSalsa@gmail.com');
INSERT INTO estudiantes VALUES(11,'Steve','España',30,'Programacion','2026-03-05','ArribaEspañaXD@gmail.com');
INSERT INTO estudiantes VALUES(12,'Moises','Narvaez',32,'RWS','2026-09-01','castillo_moises@gmail.com');
INSERT INTO estudiantes VALUES(13,'Alexandra','Moran',18,'Base de Datos','2026-10-23','alexandra18moran@gmail.com');
INSERT INTO estudiantes VALUES(14,'Daniela','Reyes',27,'Programacion','2026-04-28','daniela_rey287@gmail.com');
INSERT INTO estudiantes VALUES(15,'Nayeli','Gonzales',38,'POO','2026-01-17','gon-naye@gmail.com');

-- Consultas SELECT

SELECT * FROM estudiantes;
SELECT nombres, curso FROM estudiantes;
SELECT * FROM estudiantes WHERE edad > 18;
SELECT * FROM estudiantes WHERE edad BETWEEN 18 AND 25;
SELECT * FROM estudiantes WHERE curso = 'Base de Datos';
SELECT * FROM estudiantes WHERE correo = 'adri_tb@gmail.com' AND correo = 'daniela_rey287@gmail.com';

-- Consultas SELECT por fechas

SELECT * FROM estudiantes WHERE fecha_registro > '2026-02-01';
SELECT * FROM estudiantes WHERE fecha_registro < '2026-05-01';         		
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-04-30';
SELECT * FROM estudiantes WHERE fecha_registro = '2026-03-15';
SELECT * FROM estudiantes WHERE curso = 'Programacion' AND fecha_registro > '2026-01-01';

-- UPDATE

UPDATE estudiantes SET curso = 'Inteligencia Artificial' WHERE id_estudiante = 1;
UPDATE estudiantes SET edad = 18 WHERE edad < 18;
UPDATE estudiantes SET fecha_registro = '2026-03-29' WHERE id_estudiante = 5;
UPDATE estudiantes SET nombres = 'Sujeto', apellidos = 'Prueba', edad = 25 WHERE id_estudiante = 15 AND id_estudiante = 3;
UPDATE estudiantes SET curso = 'Hacking etico' WHERE curso = 'POO';
UPDATE estudiantes SET correo = 'carllanmi123@gmail.com' WHERE id_estudiante = 10;
UPDATE estudiantes SET correo = 'provisional1@gmail.com' WHERE id_estudiante = 15 AND id_estudiante = 6;

-- DELETE

DELETE FROM estudiantes WHERE id_estudiante = 3;
DELETE FROM estudiantes WHERE curso = 'RWS';
DELETE FROM estudiantes WHERE edad < 20;
DELETE FROM estudiantes WHERE fecha_registro BETWEEN '2026-02-01' AND '2026-01-01';
DELETE FROM estudiantes WHERE id_estudiante > 9 AND id_estudiante < 15;




