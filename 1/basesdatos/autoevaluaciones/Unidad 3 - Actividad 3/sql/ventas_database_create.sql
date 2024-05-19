DROP DATABASE ventas;
CREATE DATABASE ventas;
USE ventas;

CREATE TABLE vendedores (
	id INT NOT NULL AUTO_INCREMENT,
	telefono VARCHAR(50),
	mail VARCHAR(20),
	legajo VARCHAR(7) NOT NULL,
	nombre VARCHAR(20) NOT NULL,
	apellido VARCHAR(20) NOT NULL,
	direccion VARCHAR(20) NOT NULL,
	ciudad VARCHAR(20) NOT NULL,
	provincia VARCHAR(20) NOT NULL,
	pais VARCHAR(20) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE clientes (
	id INT NOT NULL AUTO_INCREMENT,
	telefono VARCHAR(10),
	mail VARCHAR(20),
	razonsocial VARCHAR(20) NOT NULL,
	direccion VARCHAR(20) NOT NULL,
	ciudad VARCHAR(20) NOT NULL,
	pais VARCHAR(20) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE locales (
	id INT NOT NULL AUTO_INCREMENT,
	direccion VARCHAR(20),
	nombre VARCHAR(20) NOT NULL,
    clienteid INT NOT NULL,
	PRIMARY KEY(id),
    FOREIGN KEY(clienteid) REFERENCES clientes(id)
);

CREATE TABLE vendedores_locales (
	localid INT NOT NULL,
	vendedorid INT NOT NULL,
	FOREIGN KEY(localid) REFERENCES locales(id),
	FOREIGN KEY(vendedorid) REFERENCES vendedores(id)
);

CREATE TABLE productos (
	id INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(10) NOT NULL,
	descripcion VARCHAR(50) NOT NULL,
	precio DECIMAL(10, 2) NOT NULL,
    cantidadDisponible INT NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE pedidos (
	id INT NOT NULL AUTO_INCREMENT,
	fecha DATE NOT NULL,
	nro VARCHAR(10) NOT NULL,
    clienteid INT NOT NULL,
	PRIMARY KEY(id),
    FOREIGN KEY(clienteid) REFERENCES clientes(id)
);

CREATE TABLE productos_pedidos (
	pedidoid INT NOT NULL,
	productoid INT NOT NULL,
    cantidad INT NOT NULL,
    PRIMARY KEY(pedidoid, productoid),
	FOREIGN KEY(pedidoid) REFERENCES pedidos(id),
	FOREIGN KEY(productoid) REFERENCES productos(id)
);

