CREATE DEFINER=`root`@`localhost` FUNCTION `aplicar_descuento`(id_pasajero INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE cantidad_viajes_comerciales INT;

    ## Contar la cantidad de viajes comerciales del pasajero
    SELECT COUNT(*) INTO cantidad_viajes_comerciales
    FROM transaccion tr
    JOIN vuelo v ON tr.id_vuelo = v.id_vuelo
    JOIN tipo_vuelo tv ON v.id_tipo_vuelo = tv.id_tipo_vuelo
    WHERE tr.id_pasajero = id_pasajero AND tv.nombre = 'COMERCIAL';

    -- Aplicar descuento del 50% si ha viajado más de 3 veces en vuelos comerciales
    IF cantidad_viajes_comerciales > 3 THEN
        RETURN 0.5; # 50% de descuento
    ELSE
        RETURN 1.0; ## Sin descuento
    END IF;
END

Y LA OTRA FUNCION ESCREATE DEFINER=`root`@`localhost` FUNCTION `obtenerMontoRecaudado`() RETURNS decimal(10,0)
    DETERMINISTIC
BEGIN
    DECLARE totalRecaudado DECIMAL(10, 2);
    ##el into le da el valor a la variable creada dentro de lafuncion en base a las condiciones
    SELECT SUM(precio_final) INTO totalRecaudado
    FROM transaccion;
    ## y con el return devolvemos el total de € recaudado!
    RETURN totalRecaudado;
END :
