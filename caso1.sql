CREATE TABLE departamento(
id SERIAL,
nombre VARCHAR(20),
PRIMARY KEY (id)
);

CREATE TABLE trabajador(
id SERIAL,
nombre VARCHAR(50),
rut VARCHAR(15),
direccion VARCHAR(50),
id_departamento INT,
FOREIGN KEY (id_departamento) REFERENCES departamento(id),
PRIMARY KEY (id)
);


CREATE TABLE profesor(
id SERIAL,
drive VARCHAR(255),
id_trabajador INT,
FOREIGN KEY (id_trabajador) REFERENCES trabajador(id),
PRIMARY KEY (id)
);

