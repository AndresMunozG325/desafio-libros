-- Desafío libros
-- Creación de base de datos

CREATE DATABASE libros;

-- Creación de tablas

CREATE TABLE autor(
    cod_autor INT,
    nombre VARCHAR(255),
    PRIMARY KEY (cod_autor)
);

CREATE TABLE libros(
    cod_libro INT,
    titulo VARCHAR(255),
    editorial VARCHAR(255),
    cod_autor INT,
    PRIMARY KEY (cod_libro),
    FOREIGN KEY(cod_autor) REFERENCES autor(cod_autor)
);
CREATE TABLE lectores(
    id_lector INT,
    nombre VARCHAR(255),
    PRIMARY KEY (id_lector)
);
CREATE TABLE libros_lectores(
    id_solicitud INT,
    fecha_devolucion VARCHAR(255),
    id_lector INT,
    cod_libro INT,
    PRIMARY KEY (id_solicitud),
    FOREIGN KEY(id_lector) REFERENCES lectores(id_lector),
    FOREIGN KEY(cod_libro) REFERENCES libros(cod_libro)
);


