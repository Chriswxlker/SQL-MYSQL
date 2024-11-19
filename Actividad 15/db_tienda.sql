CREATE DATABASE IF NOT EXISTS db_tienda;
USE db_tienda;

CREATE TABLE IF NOT EXISTS empleados (
    idEmpleado INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    fechaNacimiento DATE NOT NULL,
    fechaContratacion DATE DEFAULT CURRENT_DATE,
    puesto VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    email VARCHAR(100) UNIQUE
);

INSERT INTO empleados (
    nombreCompleto,
    fechaNacimiento,
    fechaContratacion,
    puesto,
    salario,
    email)
VALUES 
('Juan Pérez', '1990-05-15', '2024-01-01', 'Desarrollador de Software', 3500.00, 'juan.perez@empresa.com'),
('María López', '1985-09-10', '2023-11-15', 'Gerente de Marketing', 5000.00, 'maria.lopez@empresa.com'),
('Carlos García', '1992-03-20', '2022-07-25', 'Analista de Datos', 4000.00, 'carlos.garcia@empresa.com'),
('Ana Martínez', '1988-11-05', '2021-06-30', 'Jefa de Recursos Humanos', 4500.00, 'ana.martinez@empresa.com');