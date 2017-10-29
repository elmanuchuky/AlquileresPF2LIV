GO
-- SP Update de Alquileres
CREATE PROCEDURE sp_update_alquiler
@mCantidadComputadoras int,
@mCantidadSillasAdicionales int,
@mTieneAccesoSalaReuniones bit
AS
BEGIN
	UPDATE Alquileres
	SET cantidad_computadoras = @mCantidadComputadoras, cantidad_sillas_adicionales = @mCantidadSillasAdicionales, tine_acceso_sala_reuniones = @mTieneAccesoSalaReuniones
END