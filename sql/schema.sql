-- Schema for an E-commerce Database
CREATE DATABASE IF NOT EXISTS TiendaOnline;
USE TiendaOnline;

-- Table for Customers
CREATE TABLE IF NOT EXISTS Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Table for Categories
CREATE TABLE IF NOT EXISTS Categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL
);

-- Table for Products
CREATE TABLE IF NOT EXISTS Productos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES Categorias(id)
);

-- Table for Orders
CREATE TABLE IF NOT EXISTS Pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    total DECIMAL(10, 2) NOT NULL,
    fecha_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

-- Table for Order Details
CREATE TABLE IF NOT EXISTS DetallesPedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT,
    producto_id INT,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(id),
    FOREIGN KEY (producto_id) REFERENCES Productos(id)
);
