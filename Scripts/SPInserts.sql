GO
-- SP Insert de Puestos
CREATE PROCEDURE sp_insert_puesto
@mPiso int,
@mCantidadSillas int,
@mTieneVentana bit
AS
BEGIN
	INSERT INTO Puestos (piso, cantidad_sillas, tiene_ventana)
	VALUES (@mPiso, @mCantidadSillas, @mTieneVentana)
END
GO
-- SP Insert de Clientes
CREATE PROCEDURE sp_insert_cliente
@mNombreCliente varchar(50),
@mApellidoCliente varchar(50),
@mMailCliente varchar(100),
@mTelefono varchar(20),
@mDocumento int,
@mTipoDocumento int
AS
BEGIN
	INSERT INTO Clientes (nombre_cliente, apellido_cliente, mail_cliente, telefono, documento, tipo_documento)
	VALUES (@mNombreCliente, @mApellidoCliente, @mMailCliente, @mTelefono, @mDocumento, @mTipoDocumento)
END
GO
-- SP Insert de Alquileres
CREATE PROCEDURE sp_insert_alquiler
@mIdCliente int,
@mIdPuesto int,
@mCantidadComputadoras int,
@mCantidadSillasAdicionales int,
@mTieneAccesoSalaReuniones bit
AS
BEGIN
	INSERT INTO Alquileres (id_cliente, id_puesto, cantidad_computadoras, cantidad_sillas_adicionales, tine_acceso_sala_reuniones)
	VALUES (@mIdCliente, @mIdPuesto, @mCantidadComputadoras, @mCantidadSillasAdicionales, @mTieneAccesoSalaReuniones)
END