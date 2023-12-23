DROP SCHEMA aeropuerto;
CREATE SCHEMA aeropuerto;
USE aeropuerto;

CREATE TABLE aeropuerto(
id_aeropuerto INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
direccion VARCHAR(100) NOT NULL,
PRIMARY KEY	(id_aeropuerto)
);
CREATE TABLE tipo_vuelo(
id_tipo_vuelo INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
PRIMARY KEY (id_tipo_vuelo)

);

CREATE TABLE pasajero(
id_pasajero INT NOT NULL AUTO_INCREMENT,
nombre_apellido VARCHAR(200) NOT NULL,
pasaporte INT NOT NULL,
info_contacto VARCHAR(200) NOT NULL,
PRIMARY KEY (id_pasajero)
);

CREATE TABLE categoria_empleado (
id_categoria INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(100 ),
PRIMARY KEY (id_categoria)
);

CREATE TABLE empleados(
id_empleado INT NOT NULL AUTO_INCREMENT,
nombre_apellido VARCHAR(200) NOT NULL,
documento INT NOT NULL,
info_contacto VARCHAR(300) NOT NULL,
antiguedad INT NOT NULL,
id_categoria INT NOT NULL,
PRIMARY KEY (id_empleado),
FOREIGN KEY(id_categoria ) REFERENCES categoria_empleado (id_categoria )
);

CREATE TABLE puerta_embarque(
id_puerta INT NOT NULL AUTO_INCREMENT,
terminal VARCHAR(200) NOT NULL,
disponibilidad VARCHAR(100) NOT NULL,
PRIMARY KEY (id_puerta)
);

CREATE TABLE conductor(
id_conductor INT NOT NULL AUTO_INCREMENT,
id_empleado INT NOT NULL,
numero_registro INT NOT NULL,
PRIMARY KEY(id_conductor),
FOREIGN KEY(id_empleado) REFERENCES empleados (id_empleado)
);



CREATE TABLE aeronave (
id_aeronave INT NOT NULL AUTO_INCREMENT,
modelo VARCHAR(150) NOT NULL,
capacidad INT NOT NULL,
fabricante VARCHAR(150) NOT NULL,
id_conductor INT NOT NULL,
PRIMARY KEY(id_aeronave),
FOREIGN KEY(id_conductor) REFERENCES conductor (id_conductor)
);



CREATE TABLE vuelo(
id_vuelo INT NOT NULL AUTO_INCREMENT,
id_aeropuerto INT NOT NULL,
id_tipo_vuelo INT NOT NULL,
id_puerta INT NOT NULL,
id_aeronave INT NOT NULL,
fecha_horario_salida DATE NOT NULL,
fecha_horario_llegada DATE NOT NULL,
origen_destino VARCHAR(200),
PRIMARY KEY (id_vuelo),
FOREIGN KEY (id_aeropuerto) REFERENCES aeropuerto(id_aeropuerto),
FOREIGN KEY (id_tipo_vuelo ) REFERENCES tipo_vuelo(id_tipo_vuelo ),
FOREIGN KEY (id_puerta ) REFERENCES puerta_embarque(id_puerta ),
FOREIGN KEY (id_aeronave ) REFERENCES aeronave( id_aeronave)

);

CREATE TABLE transaccion (
id_transaccion INT NOT NULL AUTO_INCREMENT,
id_vuelo INT NOT NULL,
id_empleado INT NOT NULL,
id_pasajero INT NOT NULL,
precio_final INT NOT NULL,
PRIMARY KEY(id_transaccion),
FOREIGN KEY (id_vuelo) REFERENCES vuelo(id_vuelo),
FOREIGN KEY(id_empleado) REFERENCES empleados (id_empleado),
FOREIGN KEY(id_pasajero) REFERENCES pasajero(id_pasajero)
)




