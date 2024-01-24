INSERT INTO aeropuerto (id_aeropuerto, nombre, direccion)
VALUES
    (1, 'Aeropuerto Internacional de París-Charles de Gaulle', 'Roissy-en-France, Île-de-France, Francia'),
    (2, 'Aeropuerto de Frankfurt', 'Frankfurt, Hesse, Alemania'),
    (3, 'Aeropuerto Internacional de Sídney', 'Mascot, Nueva Gales del Sur, Australia'),
    (4, 'Aeropuerto Internacional de Toronto Pearson', 'Mississauga, Ontario, Canadá'),
    (5, 'Aeropuerto Internacional de Río de Janeiro-Galeão', 'Ilha do Governador, Río de Janeiro, Brasil'),
    (6, 'Aeropuerto Internacional de Pekín-Capital', 'Shunyi, Pekín, China'),
    (7, 'Aeropuerto Internacional de Ciudad del Cabo', 'Matroosfontein, Ciudad del Cabo, Sudáfrica'),
    (8, 'Aeropuerto de Moscú-Sheremétievo', 'Óblast de Moscú, Rusia'),
    (9, 'Aeropuerto de Londres-Heathrow', 'Hillingdon, Londres, Reino Unido'),
    (10, 'Aeropuerto Internacional de Auckland', 'Mangere, Auckland, Nueva Zelanda');

    
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



INSERT INTO vuelos_disponibles
(id_fecha, hora_salida, pais_origen, pais_destino, escala, precio, asientos_totales, asientos_disponibles)
VALUES
('2024-02-01', '2024-02-01 12:00:00', 'EE. UU.', 'Francia', 'Directo', 800, 150, 150),
('2024-02-10', '2024-02-10 15:30:00', 'Alemania', 'Italia', '1 escala', 600, 150, 150),
('2024-03-05', '2024-03-05 08:45:00', 'Japón', 'Australia', 'Directo', 1200, 150, 150),
('2024-03-15', '2024-03-15 14:20:00', 'Canadá', 'México', '2 escalas', 500, 150, 150),
('2024-04-02', '2024-04-02 10:10:00', 'Brasil', 'Argentina', 'Directo', 700, 150, 150),
('2024-04-20', '2024-04-20 18:00:00', 'China', 'India', '1 escala', 900, 150, 150),
('2024-05-08', '2024-05-08 07:30:00', 'Sudáfrica', 'Egipto', 'Directo', 1000, 150, 150),
('2024-05-25', '2024-05-25 16:45:00', 'Rusia', 'España', '2 escalas', 750, 150, 150),
('2024-06-12', '2024-06-12 13:15:00', 'Reino Unido', 'Países Bajos', '1 escala', 850, 150, 150),
('2024-06-28', '2024-06-28 09:50:00', 'Nueva Zelanda', 'Singapur', 'Directo', 1100, 150, 150);


INSERT INTO transaccion (id_vuelo, id_empleado, precio_final, id_aeropuerto, id_pasajero, id_conductor, id_tipo_vuelo, id_aeronave)
VALUES 
  (1, 1, 850, 1, 1, 1, 1, 1),
  (2, 2, 700, 2, 2, 2, 2, 2),
  (3, 3, 1100, 3, 3, 3, 3, 3),
  (4, 1, 500, 1, 1, 1, 1, 1),
  (5, 2, 900, 2, 2, 2, 2, 2),
  (6, 3, 1200, 3, 3, 3, 3, 3),
  (7, 1, 950, 1, 1, 1, 1, 1),
  (8, 2, 800, 2, 2, 2, 2, 2),
  (9, 3, 1000, 3, 3, 3, 3, 3),
  (10, 1, 750, 1, 1, 1, 1, 1);


