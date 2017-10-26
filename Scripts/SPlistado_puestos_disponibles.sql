

--SP Listado de Puestos Disponibles
--Debe presentarse un listado simple de todos los puestos que no estén alquilados, 
--incluyendo su precio base. Esta es la única página que debe ser accesible sin autenticación.
	
CREATE PROCEDURE sp_listado_puestos_disponibles
AS
	DECLARE @id_puesto INT
	DECLARE @salida VARCHAR(100)
	
	-- primero obtengo los puestos que estan "ocupados" 
	SELECT @id_puesto = min(p.id_puesto)
	FROM Puestos p
	WHERE p.id_puesto = 0

	-- si id_puesto deuvelve un null significa que no hay puestos disponibles 
	IF ( @id_puesto IS NULL ) 
		SET @salida = 'Hay puestos disponibles'
	ELSE
		SELECT @salida = a.id_puesto
		FROM Alquileres a
		INNER JOIN Puestos p ON p.id_puesto = a.id_puesto
		WHERE p.id_puesto = @id_puesto

	SELECT @SALIDA

GO





