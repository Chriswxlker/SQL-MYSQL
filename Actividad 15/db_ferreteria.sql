CREATE DATABASE IF NOT EXISTS db_ferreteria;
USE db_ferreteria;

CREATE TABLE IF NOT EXISTS clientes (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    direccion VARCHAR(150) NULL,
    fechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);

INSERT INTO clientes (
    nombreCompleto, 
    telefono, 
    email, 
    direccion) 

VALUES
('Juan Pérez García', '+57 310 123 4567', 'juan.perez@example.com', 'Carrera 10 #45-67, Bogotá'),
('María López Martínez', '+52 55 6789 1234', 'maria.lopez@example.com', 'Avenida Juárez 123, Ciudad de México'),
('Carlos Gómez Hernández', '+1 305 234 5678', 'carlos.gomez@example.com', '456 Ocean Drive, Miami'),
('Ana Torres Sánchez', '+34 678 901 234', 'ana.torres@example.com', 'Calle Mayor 12, Barcelona'),
('Luis Fernández Romero', '+57 320 987 6543', 'luis.fernandez@example.com', 'Calle 50 #20-30, Medellín');
