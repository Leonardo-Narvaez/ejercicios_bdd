--Creacion de tabla

create table estudiantes(
	id_estudiante INT not null,
	nombres VARCHAR(50) not null,
	apellidos VARCHAR(50) not null,
	edad INT not null,
	curso VARCHAR(50) not null,
	fecha_registro VARCHAR(10) not null,

	constraint estudiantes_pk primary key(id_estudiante)
);

--Modificar Tabla

ALTER TABLE estudiantes ADD COLUMN correo VARCHAR(100);  
--Se coloco en esta ubicacion para que la ejecucion en cascada no tenga conflicto ya que el documento no especifica dicha accion
--En caso de que se desee colocar en el orden del taller, se realizaria UPDATES a todos los estudiantes en vez 
--de actualizar los INSERT, ciertos SELECT irian en otra posicion al igual que ciertos UPDATE.