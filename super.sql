SHOW DATABASES;

--CREAR TABLAS

CREATE TABLE superMercados(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(40),
    categorias_id INT
);

CREATE TABLE categorias(
    id INT AUTO_INCREMENT PRIMARY KEY,
    lacteos_id INT,
    aseo_id INT,
    enlatados_id INT,
    granos_id INT
);

CREATE TABLE lacteos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    productos_id INT
);

CREATE TABLE aseo(
    id INT AUTO_INCREMENT PRIMARY KEY,
    productos_id INT
);

CREATE TABLE enlatados(
    id INT AUTO_INCREMENT PRIMARY KEY,
    productos_id INT
);

CREATE TABLE granos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    productos_id INT
);

CREATE TABLE productos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(40),
    stock INT,
    venta INT,s
    lacteos_id INT,
    aseo_id INT,
    enlatados_id INT,
    granos_id INT  
);

DROP TABLE productos;

CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(40),
    apellido VARCHAR(40),
    celular VARCHAR(40),
    direccion_id INT
);

DROP TABLE cliente;

CREATE TABLE direccion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    direccion VARCHAR (40),
    codigo VARCHAR (40),
    ciudad VARCHAR (50),
);
CREATE TABLE pedido(
    id INT AUTO_INCREMENT PRIMARY KEY,
    estado VARCHAR(40),
    cantidad INT,
    cliente_id INT,
    productos_id INT
);

DROP TABLE pedido ;



--AÑADIR LLAVES FORANEAS

ALTER TABLE cliente ADD FOREIGN KEY  (direccion_id)
REFERENCES direccion (id);

ALTER TABLE pedido ADD FOREIGN KEY (cliente_id)
REFERENCES cliente (id);

ALTER TABLE pedido ADD FOREIGN KEY (productos_id)
REFERENCES productos (id);

ALTER TABLE productos ADD FOREIGN KEY ()


