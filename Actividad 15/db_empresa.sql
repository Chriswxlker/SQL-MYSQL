CREATE DATABASE IF NOT EXISTS db_empresa;
USE db_empresa;

CREATE TABLE IF NOT EXISTS inventario (
    idInventario INT PRIMARY KEY AUTO_INCREMENT,
    codigoProducto VARCHAR(50)NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    fechaFabricacion DATE,
    fechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cantidadProducto INT DEFAULT 0,
    precioCompra DECIMAL(10,2) NOT NULL,
    precioVenta DECIMAL(10,2) NOT NULL
);

/*------------------------------------------------------*/

INSERT INTO inventario (
    codigoProducto,
    nombre,
    descripcion,
    fechaFabricacion,
    precioCompra,
    precioVenta)

VALUES (
    'PROD001',
    'Laptop HP',
    'Laptop HP con procesador Intel i7, 16GB RAM',
    '2024-01-10',
    10,
    800.00,
    1200.00);

/*------------------------------------------------------*/

INSERT INTO inventario (
    codigoProducto,
    nombre,
    descripcion,
    fechaFabricacion,
    precioCompra,
    precioVenta)

VALUES
('A001', 'Camiseta Negra', 'Camiseta de algodón, talla M', '2024-01-15', 23000, 30000),
('A002', 'Camiseta Blanca', 'Camiseta de poliéster, talla L', '2024-01-20', 23000, 30000),
('A003', 'Camiseta Roja', 'Camiseta deportiva, talla S', '2024-02-05', 24000, 31000),
('A004', 'Camiseta Azul', 'Camiseta casual, talla XL', '2024-01-18', 23000, 30000),
('A005', 'Camiseta Gris', 'Camiseta básica unisex, talla M', '2024-02-10', 23500, 30500);


/*------------------------------------------------------*/

/*Imagina que recibes un lote adicional de 20 laptops y necesitas actualizar la cantidad:*/
UPDATE inventario
SET cantidadProducto = cantidadProducto + 20
WHERE codigoProducto = 'PROD001';

/*Supon que decides aumentar el precio de venta de todos los productos en un 10%*/
UPDATE inventario
SET precioVenta = precioVenta * 1.10;

/*------------------------------------------------------*/

/*digamos que decides retirar un producto que ya no vendes mas*/
DELETE FROM inventario
WHERE codigoProducto = 'PROD004';

/*supon que quieres limpiar tu inventario de productos agotados*/
DELETE FROM inventario
WHERE cantidadProducto = 0;