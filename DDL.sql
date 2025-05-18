CREATE DATABASE Tienda;
USE Tienda;

CREATE TABLE Fabricante (
	Codigo INT(10) AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Producto (
	CodigoP INT(10) AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Precio DOUBLE NOT NULL,
    Codigo_fabricante INT (10)
);

ALTER TABLE Producto
ADD FOREIGN KEY (Codigo_fabricante) REFERENCES Fabricante (Codigo);



