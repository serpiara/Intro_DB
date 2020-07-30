CREATE TABLE curso(
id SERIAL,
nombre VARCHAR(15),
PRIMARY KEY (id)
);

CREATE TABLE alumno(
id SERIAL,
rut VARCHAR(15),
nombre VARCHAR(50),
id_curso INT,
FOREIGN KEY (id_curso) REFERENCES curso(id),
PRIMARY KEY (id)
);


CREATE TABLE departamento(
id SERIAL,
nombre VARCHAR(20),
PRIMARY KEY (id)
);

CREATE TABLE profesor(
id SERIAL,
nombre VARCHAR(50),
id_departamento INT,
FOREIGN KEY (id_departamento) REFERENCES departamento(id),
PRIMARY KEY (id)
);

CREATE TABLE prueba(
id SERIAL,
id_alumno INT,
FOREIGN KEY (id_alumno) REFERENCES alumno(id),
id_profesor INT,
FOREIGN KEY (id_profesor) REFERENCES profesor(id),
PRIMARY KEY (id) 
);
