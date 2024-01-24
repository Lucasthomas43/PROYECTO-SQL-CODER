###creacion de datos en las tablas###
DELETE FROM transaccion WHERE id_transaccion BETWEEN 1 AND 100;
DELETE FROM vuelo WHERE id_vuelo BETWEEN 1 AND 100;
DELETE FROM aeronave WHERE id_aeronave BETWEEN 1 AND 100;
DELETE FROM conductor WHERE id_conductor BETWEEN 1 AND 100;
DELETE FROM puerta_embarque WHERE id_puerta BETWEEN 1 AND 100;
DELETE FROM empleados WHERE id_empleado BETWEEN 1 AND 100;
DELETE FROM categoria_empleado WHERE id_categoria BETWEEN 1 AND 100;
DELETE FROM pasajero WHERE id_pasajero BETWEEN 1 AND 100;
DELETE FROM aeropuerto WHERE id_aeropuerto BETWEEN 1 AND 100;
DELETE FROM tipo_vuelo WHERE id_tipo_vuelo BETWEEN 1 and 100;


INSERT INTO aeropuerto (id_aeropuerto, nombre, direccion) VALUES
    (1, 'Aeropuerto Internacional de San Esteban', 'Calle Mayor 123, San Esteban'),
    (2, 'Aeropuerto Nacional de Bella Vista', 'Avenida Central 456, Bella Vista'),
    (3, 'Aeropuerto Internacional de Nueva Esperanza', 'Paseo del Sol 789, Nueva Esperanza'),
    (4, 'Aeropuerto Nacional de Maravilla', 'Plaza Principal 101, Maravilla'),
    (5, 'Aeropuerto Internacional de Montaña Azul', 'Ruta Panorámica 567, Montaña Azul'),
    (6, 'Aeropuerto Nacional de Ciudad Primavera', 'Avenida Flores 890, Ciudad Primavera'),
    (7, 'Aeropuerto Internacional de Playa Dorada', 'Calle del Mar 111, Playa Dorada'),
    (8, 'Aeropuerto Nacional de Pueblo Sereno', 'Plaza Serenidad 222, Pueblo Sereno'),
    (9, 'Aeropuerto Internacional de Aurora', 'Avenida Aurora 333, Aurora'),
    (10, 'Aeropuerto Nacional de Valle Verde', 'Rincón del Valle 444, Valle Verde');
    
INSERT INTO pasajero (id_pasajero, nombre_apellido, pasaporte, info_contacto) VALUES
    (1, 'Juan Perez', '12345678', '+541234567890'),
    (2, 'Ana Rodriguez', '23456789', '+541234567891'),
    (3, 'Carlos Gómez', '34567890', '+541234567892'),
    (4, 'Laura Fernandez', '45678901', '+541234567893'),
    (5, 'Roberto Torres', '56789012', '+541234567894'),
    (6, 'María López', '67890123', '+541234567895'),
    (7, 'Lucía Martinez', '78901234', '+541234567896'),
    (8, 'Eduardo Silva', '89012345', '+541234567897'),
    (9, 'Silvia Ruiz', '90123456', '+541234567898'),
    (10, 'Javier Castro', '01234567', '+541234567899');
    
INSERT INTO categoria_empleado (id_categoria, nombre) VALUES
    (1, 'cocinero'),
    (2, 'limpieza'),
    (3, 'conductor'),
    (4, 'administrativo'),
    (5, 'seguridad');
    
    
INSERT INTO empleados (id_empleado, nombre_apellido, documento, info_contacto, antiguedad, id_aeropuerto, id_categoria) VALUES
    (1, 'Juan Perez', '12345678', '+541234567890', 2, 1, 1),
    (2, 'Ana Rodriguez', '23456789', '+541234567891', 3, 2, 2),
    (3, 'Carlos Gómez', '34567890', '+541234567892', 1, 3, 3),
    (4, 'Laura Fernandez', '45678901', '+541234567893', 4, 1, 1),
    (5, 'Roberto Torres', '56789012', '+541234567894', 2, 4, 4),
    (6, 'María López', '67890123', '+541234567895', 3, 2, 2),
    (7, 'Lucía Martinez', '78901234', '+541234567896', 1, 5, 5),
    (8, 'Eduardo Silva', '89012345', '+541234567897', 5, 3, 3),
    (9, 'Silvia Ruiz', '90123456', '+541234567898', 2, 4, 4),
    (10, 'Javier Castro', '01234567', '+541234567899', 4, 1, 1);


INSERT INTO puerta_embarque (id_puerta, terminal, disponibilidad) VALUES
    (1, 'Terminal A', 'Disponible'),
    (2, 'Terminal B', 'No disponible'),
    (3, 'Terminal C', 'Disponible'),
    (4, 'Terminal D', 'Disponible'),
    (5, 'Terminal E', 'No disponible'),
    (6, 'Terminal F', 'Disponible'),
    (7, 'Terminal G', 'No disponible'),
    (8, 'Terminal H', 'Disponible'),
    (9, 'Terminal I', 'Disponible'),
    (10, 'Terminal J', 'No disponible');
    
INSERT INTO conductor (id_conductor, id_empleado, numero_registro) VALUES
    (1, 1, 'ABC12345'),
    (2, 3, 'DEF67890'),
    (3, 5, 'GHI54321'),
    (4, 7, 'JKL98765'),
    (5, 9, 'MNO12345'),
    (6, 2, 'PQR67890'),
    (7, 4, 'STU54321'),
    (8, 6, 'VWX98765'),
    (9, 8, 'YZA12345'),
    (10, 10, 'BCD67890');

INSERT INTO aeronave (id_aeronave, modelo, capacidad, fabricante, id_conductor) VALUES
    (1, 'Boeing 747', 416, 'Boeing', 1),
    (2, 'Airbus A320', 150, 'Airbus', 2),
    (3, 'Boeing 787', 290, 'Boeing', 3),
    (4, 'Airbus A380', 853, 'Airbus', 4),
    (5, 'Embraer E195', 122, 'Embraer', 5),
    (6, 'Bombardier Challenger 300', 9, 'Bombardier', 6),
    (7, 'Cessna Citation X', 12, 'Cessna', 7),
    (8, 'Airbus A330', 335, 'Airbus', 8),
    (9, 'Boeing 737', 230, 'Boeing', 9),
    (10, 'Embraer Phenom 100', 4, 'Embraer', 10);

    
INSERT INTO tipo_vuelo (id_tipo_vuelo, nombre) VALUES
    (1, 'COMERCIAL'),
    (2, 'BUSSINES'),
    (3, 'PRIVADO');


INSERT INTO vuelo (id_aeropuerto, id_tipo_vuelo, id_puerta, id_aeronave, fecha_horario_salida, fecha_horario_llegada, origen_destino) VALUES
    (1, 1, 1, 1, '2024-01-25 08:00:00', '2024-01-25 12:00:00', 'Ciudad A - Ciudad B'),
    (2, 2, 2, 2, '2024-01-26 10:30:00', '2024-01-26 14:30:00', 'Ciudad C - Ciudad D'),
    (3, 1, 3, 3, '2024-01-27 12:45:00', '2024-01-27 16:45:00', 'Ciudad E - Ciudad F'),
    (4, 2, 4, 4, '2024-01-28 15:15:00', '2024-01-28 19:15:00', 'Ciudad G - Ciudad H'),
    (5, 1, 5, 5, '2024-01-29 18:30:00', '2024-01-29 22:30:00', 'Ciudad I - Ciudad J'),
    (1, 2, 1, 6, '2024-01-30 09:45:00', '2024-01-30 13:45:00', 'Ciudad B - Ciudad A'),
    (2, 1, 2, 7, '2024-01-31 11:00:00', '2024-01-31 15:00:00', 'Ciudad D - Ciudad C'),
    (3, 2, 3, 8, '2024-02-01 14:20:00', '2024-02-01 18:20:00', 'Ciudad F - Ciudad E'),
    (4, 1, 4, 9, '2024-02-02 17:30:00', '2024-02-02 21:30:00', 'Ciudad H - Ciudad G'),
    (5, 2, 5, 10, '2024-02-03 20:45:00', '2024-02-03 00:45:00', 'Ciudad J - Ciudad I');


INSERT INTO transaccion (id_vuelo, id_empleado, id_pasajero, precio_final) VALUES
    (1, 1, 1, 500000),
    (2, 2, 2, 750000),
    (3, 3, 3, 600000),
    (4, 4, 4, 900000),
    (5, 5, 5, 800000),
    (6, 6, 6, 700000),
    (7, 7, 7, 850000),
    (8, 8, 8, 950000),
    (9, 9, 9, 720000),
    (10, 10, 10, 880000);



