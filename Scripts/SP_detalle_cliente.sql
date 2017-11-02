use tp_alquileres_labiv

--SP Detalle de Cliente
--Para un cliente en particular que el usuario seleccione mostrar todos sus datos,
-- los datos de todos sus puestos alquilados y el total que paga mensualmente
--Recibe como parametro el id_cliente 


--declare @totalPagar int

CREATE PROCEDURE sp_detalle_de_cliente
@mIdCliente int
AS
BEGIN
 SELECT c.apellido_cliente + ', ' + c.nombre_cliente Cliente, td.documento + ' ' + CONVERT(varchar(30),c.documento) Documento, c.mail_cliente Mail, c.telefono Telefono, SUM(dbo.f_importe_alquiler(a.id_alquiler)) [Importe mensual]
 FROM Clientes c JOIN Tipos_documento td ON td.id_tipo_documento = c.tipo_documento JOIN Alquileres a ON a.id_cliente = c.id_cliente
 WHERE c.id_cliente = 6--@mIdCliente
 GROUP BY c.apellido_cliente + ', ' + c.nombre_cliente, td.documento + ' ' + CONVERT(varchar(30),c.documento), c.mail_cliente, c.telefono
END

GO
CREATE PROCEDURE sp_detalles_de_puestos_alquilados_por_cliente
@mIdCliente int
AS
BEGIN
 SELECT p.piso Piso, p.cantidad_sillas [Cantidad de sillas], p.tiene_ventana [Tiene ventana]
 FROM Clientes c JOIN Alquileres a ON a.id_cliente = c.id_cliente JOIN Puestos p ON p.id_puesto = a.id_puesto
 WHERE c.id_cliente = 6--@mIdCliente
END