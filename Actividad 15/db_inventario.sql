CREATE DATABASE IF NOT EXISTS db_inventario;
USE db_inventario;

CREATE TABLE IF NOT EXISTS proveedores (
    idProveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombreEmpresa VARCHAR(100) NOT NULL,
    nombreContacto VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NULL,
    direccion VARCHAR(150) NULL,
    pais VARCHAR(50) NULL
);

INSERT INTO proveedores (
    nombreEmpresa, 
    nombreContacto, 
    telefono, 
    direccion, 
    pais) 

VALUES
('Textil Andes S.A.', 'Lucía Gómez', '+57 320 123 4567', 'Calle 45 #12-34, Bogotá', 'Colombia'),
('Moda Express Ltd.', 'Carlos López', '+52 55 9876 5432', 'Avenida Reforma 123, Ciudad de México', 'México'),
('Fabricantes Globales Inc.', 'Sofía Martínez', '+1 305 567 8901', '123 Main Street, Miami', 'Estados Unidos'),
('Distribuciones Europa SL', 'Juan Pérez', '+34 678 901 234', 'Calle Gran Vía 45, Madrid', 'España'),
('Asia Textiles Co.', 'Chen Wei', '+86 10 2345 6789', '123 Beijing Road, Beijing', 'China');