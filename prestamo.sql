CREATE TABLE autor(
id SERIAL,
nombre_autor VARCHAR(50),
PRIMARY KEY (id)
);

CREATE TABLE editorial(
id SERIAL,
nombre_editorial VARCHAR(50),
PRIMARY KEY (id)
);

CREATE TABLE lector(
id SERIAL,
nombre_lector VARCHAR(50),
PRIMARY KEY (id)
);

CREATE TABLE libro(
id SERIAL,
nombre_libro VARCHAR(50),
PRIMARY KEY (id)
);

CREATE TABLE prestamo(
id SERIAL,
id_lector INT,
id_libro INT,
fecha_devol DATE,
FOREIGN KEY(id_lector) REFERENCES lector(id),
FOREIGN KEY(id_libro) REFERENCES libro(id),
PRIMARY KEY (id)
);  

CREATE TABLE libro_editorial(
id SERIAL,
id_libro INT,
id_editorial INT,
FOREIGN KEY(id_libro) REFERENCES libro(id),
FOREIGN KEY(id_editorial) REFERENCES editorial(id),
PRIMARY KEY (id)
);

CREATE TABLE libro_autor(
id SERIAL,
id_libro INT,
id_autor INT,
FOREIGN KEY(id_libro) REFERENCES libro(id),
FOREIGN KEY(id_autor) REFERENCES autor(id),
PRIMARY KEY (id)
);
