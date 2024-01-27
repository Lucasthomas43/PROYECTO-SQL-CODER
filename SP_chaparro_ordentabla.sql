CREATE DEFINER=`root`@`localhost` PROCEDURE `OrdenarTabla`(
    IN nombre_tabla VARCHAR(100),
    IN campo_ordenamiento VARCHAR(100),
    IN tipo_orden VARCHAR(20)
)
BEGIN
    DECLARE orden VARCHAR(5);
    
    ## Convertir el tipo de orden a minúsculas para comparación
    SET tipo_orden = LOWER(tipo_orden);
    
     ##Verificar el tipo de orden y establecer la dirección de ordenamiento
    IF tipo_orden = 'ascendente' THEN
        SET orden = 'ASC';
    ELSEIF tipo_orden = 'descendente' THEN
        SET orden = 'DESC';
    ELSE
			#mensaje si no es valido el parametro
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tipo de orden no válido. Debe ser "ascendente" o "descendente"';
    END IF;

	SET @query = CONCAT('SELECT * FROM ', nombre_tabla, ' ORDER BY ', campo_ordenamiento, ' ', orden);
    
    -- Ejecutar la consulta
    PREPARE statement FROM @query;
    EXECUTE statement;
    DEALLOCATE PREPARE statement;
END

###EJECUTAR CONSULTA

CALL OrdenarTabla('vuelos_disponibles', 'precio', 'descendente');
 
 