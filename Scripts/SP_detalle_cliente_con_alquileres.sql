CREATE PROCEDURE sp_total_recaudado_por_piso
@mPiso int
AS
BEGIN
	SELECt SUM(dbo.f_importe_alquiler(a.id_alquiler))
	FROM Alquileres a join Puestos p on p.id_puesto = a.id_puesto
	WHERE p.piso = @mPiso
END
GO
CREATE PROCEDURE sp_mostrar_datos_cliente_por_cliente
@mIdCliente int
AS
BEGIN
	SELECT c.apellido_cliente Apellido, c.nombre_cliente Nombre, c.mail_cliente Mail, c.telefono Telefono, td.documento [Tipo documento], c.documento Documento, SUM(dbo.f_importe_alquiler(a.id_alquiler)) [Importe Mensual]
	FROM Clientes c join Tipos_documento td on td.id_tipo_documento = c.tipo_documento join Alquileres a on a.id_cliente = c.id_cliente
	WHERE c.id_cliente = @mIdCliente
	GROUP BY c.apellido_cliente, c.nombre_cliente, c.mail_cliente, c.telefono, td.documento, c.documento
END
GO
CREATE PROCEDURE sp_mostrar_datos_puestos_alquilados_por_cliente
@mIdCliente int
AS
BEGIN
	SELECT p.piso Piso, a.cantidad_computadoras [Cantidad de computadoras], CONVERT(varchar, p.cantidad_sillas) + ' ( + ' + CONVERT(varchar, a.cantidad_sillas_adicionales) + ' adicionales)' [Cantidad de sillas], CAST( CASE  WHEN p.tiene_ventana = 1 THEN 'Si' ELSE 'No' END AS varchar) [Tiene ventana?], CAST( CASE  WHEN a.tine_acceso_sala_reuniones = 1 THEN 'Si' ELSE 'No' END AS varchar) [Tiene acceso a sala de reuniones?], '$' + CONVERT(varchar,dbo.f_importe_alquiler(a.id_alquiler)) [Precio mensual], a.fecha [Fecha de alquiler]
	FROM Alquileres a join Puestos p on p.id_puesto = a.id_puesto
	WHERE a.id_cliente = @mIdCliente
	ORDER BY p.piso
END