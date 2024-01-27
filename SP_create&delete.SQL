	###insercion de reigstros en mi tabla 
	CREATE PROCEDURE InsertarVueloDisponible(
    IN fecha DATETIME, 
    IN hora_salida DATETIME,
    IN origen VARCHAR(200),
    IN destino VARCHAR(200),
    IN escala VARCHAR(10),
    IN precio INT,
    IN asientos_totales INT,
    IN asientos_disponibles INT
)
BEGIN
    INSERT INTO vuelos_disponibles (fecha, hora_salida, pais_origen, pais_destino, escala, precio, asientos_totales, asientos_disponibles) -- Modificado el nombre del campo
    VALUES (fecha, hora_salida, origen, destino, escala, precio, asientos_totales, asientos_disponibles);
END;

###eliminacion de vuelos x id, call eliminarVueloDisponible
CREATE PROCEDURE EliminarVueloDisponible(
    IN id_vuelo_eliminar INT
)
BEGIN
    DELETE FROM vuelos_disponibles WHERE id_vuelo = id_vuelo_eliminar;
END;