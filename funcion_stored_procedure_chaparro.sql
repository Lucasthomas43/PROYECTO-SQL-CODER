CREATE DEFINER=`root`@`localhost` PROCEDURE `RealizarVenta`( ###parametros de entrada y salida, entrada chekeo de datos, y salida 
    IN p_id_vuelo INT,			###el resultado de la venta
    IN p_id_empleado INT,
    IN p_id_pasajero INT,
    OUT p_venta_exitosa BOOLEAN ##
)
BEGIN
    DECLARE v_asientos_disponibles INT;###declaracion de variables locales
    DECLARE v_precio_final INT;

    ### Obtener asientos disponibles y precio del vuelo
    SELECT asientos_disponibles, precio INTO v_asientos_disponibles, v_precio_final
    FROM vuelos_disponibles
    WHERE id_vuelo = p_id_vuelo;

    ## Verificar si hay asientos disponibles
    IF v_asientos_disponibles > 0 THEN
        -- Calcular el precio final y realizar la venta
        SET p_venta_exitosa = TRUE; ###en parametro de salida(out)
        SET v_precio_final = v_precio_final ; ###posible logica de descuento

        ### Actualizar asientos disponibles en la tabla vuelos_disponibles
        UPDATE vuelos_disponibles
        SET asientos_disponibles = asientos_disponibles - 1
        WHERE id_vuelo = p_id_vuelo;

        ### Insertar registro en la tabla transaccion
        INSERT INTO transaccion (
            id_vuelo,
            id_empleado,
            precio_final,
            id_pasajero,
            id_conductor,
            id_tipo_vuelo,
            id_aeronave
        ) VALUES (
            p_id_vuelo,
            p_id_empleado,
            v_precio_final,
            p_id_pasajero,
            1, 
            1,   ### mas adelante intentar pedir los datos al usuario y completar estas
            1    ### columnas de transaccion
            );

    ELSE
        ###No hay asientos disponibles?
        SET p_venta_exitosa := FALSE;
    END IF;
END