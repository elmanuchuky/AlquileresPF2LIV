USE [master]
GO
/****** Object:  Database [TP_Alquileres_LabIV]    Script Date: 10/29/2017 12:05:45 PM ******/
CREATE DATABASE [TP_Alquileres_LabIV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TP_Alquileres_LabIV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TP_Alquileres_LabIV.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TP_Alquileres_LabIV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TP_Alquileres_LabIV_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TP_Alquileres_LabIV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET ARITHABORT OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET  MULTI_USER 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TP_Alquileres_LabIV]
GO
/****** Object:  UserDefinedFunction [dbo].[f_importe_alquiler]    Script Date: 10/29/2017 12:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create function [dbo].[f_importe_alquiler](@alquiler int=0)
returns float
begin
declare @importe float=0,
@piso int=0,
@ventana bit=0,
@computadoras int=0,
@sala bit=0,
@silla int=0

select @piso=p.piso, @ventana=p.tiene_ventana, @computadoras=a.cantidad_computadoras,
@sala=a.tine_acceso_sala_reuniones, @silla=a.cantidad_sillas_adicionales
from alquileres a join puestos p
on a.id_puesto=p.id_puesto
where a.id_alquiler=@alquiler

if(@piso between 1 and 3)
begin
set @importe=2000
end
else 
begin
set @importe=3000
end

if(@ventana=1)
begin
set @importe=@importe+500
end

if(@computadoras>0)
begin
set @importe=@importe+(@computadoras*800)
end

if(@sala=1)
begin
set @importe=@importe+1000
end

if(@silla>0)
begin
set @importe=@importe+(@silla*100)
end

return @importe
end






GO
/****** Object:  Table [dbo].[Alquileres]    Script Date: 10/29/2017 12:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alquileres](
	[id_alquiler] [int] IDENTITY(1,1) NOT NULL,
	[id_cliente] [int] NULL,
	[id_puesto] [int] NULL,
	[cantidad_computadoras] [int] NULL,
	[cantidad_sillas_adicionales] [int] NULL,
	[tine_acceso_sala_reuniones] [int] NULL,
	[fecha] [date] NOT NULL CONSTRAINT [DF_Alquileres_fecha]  DEFAULT (getdate()),
	[estado] [bit] NOT NULL CONSTRAINT [DF_Alquileres_estado]  DEFAULT ((1)),
 CONSTRAINT [pk_alquileres] PRIMARY KEY CLUSTERED 
(
	[id_alquiler] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 10/29/2017 12:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre_cliente] [varchar](50) NULL,
	[apellido_cliente] [varchar](50) NULL,
	[mail_cliente] [varchar](100) NULL,
	[telefono] [varchar](20) NULL,
	[documento] [int] NULL,
	[tipo_documento] [int] NULL,
 CONSTRAINT [pk_id_clientes] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Puestos]    Script Date: 10/29/2017 12:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puestos](
	[id_puesto] [int] IDENTITY(1,1) NOT NULL,
	[piso] [int] NULL,
	[cantidad_sillas] [int] NULL,
	[tiene_ventana] [bit] NULL,
	[disponible] [bit] NOT NULL CONSTRAINT [DF_Puestos_disponible]  DEFAULT ((1)),
 CONSTRAINT [pk_puestos] PRIMARY KEY CLUSTERED 
(
	[id_puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipos_documento]    Script Date: 10/29/2017 12:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipos_documento](
	[id_tipo_documento] [int] IDENTITY(1,1) NOT NULL,
	[documento] [varchar](20) NULL,
 CONSTRAINT [pk_tipo_documento] PRIMARY KEY CLUSTERED 
(
	[id_tipo_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[vw_listado_clientes]    Script Date: 10/29/2017 12:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Este listado debe mostrar todos los clientes indicando por cada uno de ellos la cantidad
-- total de puestos que alquilan y el importe total de sus alquileres. 
create view [dbo].[vw_listado_clientes]
as
select c.documento, c.nombre_cliente, c.apellido_cliente, count(a.id_puesto) as 'total de puestos',
sum(dbo.f_importe_alquiler(a.id_alquiler)) as 'importe total' 
from clientes c join alquileres a on a.id_cliente=c.id_cliente
group by c.id_cliente, c.documento, c.nombre_cliente, c.apellido_cliente
GO
/****** Object:  View [dbo].[vw_listado_completo_puestos]    Script Date: 10/29/2017 12:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--El listado debe mostrar todos los puestos, indicando con claridad cuáles están ocupados 
--y cuáles libres. 
create view [dbo].[vw_listado_completo_puestos]
as
select p.id_puesto as 'puesto', p.piso, 'ocupado' as 'estado'
from puestos p join alquileres a on p.id_puesto=a.id_puesto
union
select pu.id_puesto as 'puesto', pu.piso, 'libre' as 'estado'
from puestos pu left join alquileres al on pu.id_puesto=al.id_puesto
where al.id_alquiler is null
GO
/****** Object:  View [dbo].[vw_total_alquiles_por_piso]    Script Date: 10/29/2017 12:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Por cada piso del edificio debe indicarse el total recaudado. 
create view [dbo].[vw_total_alquiles_por_piso]
as
select p.piso, sum(dbo.f_importe_alquiler(a.id_alquiler)) as 'total recaudado'
from Alquileres a join Puestos p on a.id_puesto=p.id_puesto
group by p.piso
GO
SET IDENTITY_INSERT [dbo].[Alquileres] ON 

GO
INSERT [dbo].[Alquileres] ([id_alquiler], [id_cliente], [id_puesto], [cantidad_computadoras], [cantidad_sillas_adicionales], [tine_acceso_sala_reuniones], [fecha], [estado]) VALUES (2, 6, 3, 4, 0, 0, CAST(N'2017-10-28' AS Date), 1)
GO
INSERT [dbo].[Alquileres] ([id_alquiler], [id_cliente], [id_puesto], [cantidad_computadoras], [cantidad_sillas_adicionales], [tine_acceso_sala_reuniones], [fecha], [estado]) VALUES (3, 8, 5, 10, 2, 0, CAST(N'2017-10-28' AS Date), 1)
GO
INSERT [dbo].[Alquileres] ([id_alquiler], [id_cliente], [id_puesto], [cantidad_computadoras], [cantidad_sillas_adicionales], [tine_acceso_sala_reuniones], [fecha], [estado]) VALUES (4, 5, 9, 20, 5, 0, CAST(N'2017-10-28' AS Date), 1)
GO
INSERT [dbo].[Alquileres] ([id_alquiler], [id_cliente], [id_puesto], [cantidad_computadoras], [cantidad_sillas_adicionales], [tine_acceso_sala_reuniones], [fecha], [estado]) VALUES (5, 6, 6, 10, 0, 1, CAST(N'2017-10-28' AS Date), 1)
GO
INSERT [dbo].[Alquileres] ([id_alquiler], [id_cliente], [id_puesto], [cantidad_computadoras], [cantidad_sillas_adicionales], [tine_acceso_sala_reuniones], [fecha], [estado]) VALUES (7, 4, 20, 25, 5, 1, CAST(N'2017-10-28' AS Date), 1)
GO
INSERT [dbo].[Alquileres] ([id_alquiler], [id_cliente], [id_puesto], [cantidad_computadoras], [cantidad_sillas_adicionales], [tine_acceso_sala_reuniones], [fecha], [estado]) VALUES (8, 3, 18, 20, 0, 1, CAST(N'2017-10-28' AS Date), 1)
GO
INSERT [dbo].[Alquileres] ([id_alquiler], [id_cliente], [id_puesto], [cantidad_computadoras], [cantidad_sillas_adicionales], [tine_acceso_sala_reuniones], [fecha], [estado]) VALUES (9, 1, 15, 20, 0, 1, CAST(N'2017-10-28' AS Date), 1)
GO
INSERT [dbo].[Alquileres] ([id_alquiler], [id_cliente], [id_puesto], [cantidad_computadoras], [cantidad_sillas_adicionales], [tine_acceso_sala_reuniones], [fecha], [estado]) VALUES (10, 12, 2, 12, 2, 0, CAST(N'2017-10-28' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[Alquileres] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

GO
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [apellido_cliente], [mail_cliente], [telefono], [documento], [tipo_documento]) VALUES (1, N'Fernando', N'de Lima', N'fernandomanuel.delimaarguello@gmail.com', N'0351-3703624', 3444878, 2)
GO
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [apellido_cliente], [mail_cliente], [telefono], [documento], [tipo_documento]) VALUES (3, N'Gonzalo', N'Ricotti', N'gonzalo.ricotti@gmail.com', N'0351-5736485', 35735485, 2)
GO
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [apellido_cliente], [mail_cliente], [telefono], [documento], [tipo_documento]) VALUES (4, N'Ignacio', N'Constable', N'ignacio.constable@gmail.com', N'0351-7581567', 36784522, 2)
GO
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [apellido_cliente], [mail_cliente], [telefono], [documento], [tipo_documento]) VALUES (5, N'Marcos', N'Sanchez', N'marcos.sanchez@gmail.com', N'0351-6767174', 33485771, 2)
GO
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [apellido_cliente], [mail_cliente], [telefono], [documento], [tipo_documento]) VALUES (6, N'Eugenio', N'Contreras', N'eugenio.contreras@gmail.com', N'0351-6343466', 30421557, 2)
GO
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [apellido_cliente], [mail_cliente], [telefono], [documento], [tipo_documento]) VALUES (7, N'Gabriel', N'Del Monte', N'montegabriel@gmail.com', N'0351-9254522', 34689525, 2)
GO
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [apellido_cliente], [mail_cliente], [telefono], [documento], [tipo_documento]) VALUES (8, N'Maria', N'Tejeda', N'teje91maria@gmail.com', N'0351-3626826', 34885752, 2)
GO
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [apellido_cliente], [mail_cliente], [telefono], [documento], [tipo_documento]) VALUES (9, N'Laura', N'Sconne', N'ingsconne@yahoo.com.ar', N'0351-5665253', 7232584, 3)
GO
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [apellido_cliente], [mail_cliente], [telefono], [documento], [tipo_documento]) VALUES (10, N'Irene', N'Schild', N'irenitaschild@gmail.com', N'0351-4755232', 8156285, 3)
GO
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [apellido_cliente], [mail_cliente], [telefono], [documento], [tipo_documento]) VALUES (11, N'Alfredo', N'Robles', N'roblesalfredo@yahoo.com.ar', N'0351-6883321', 9426858, 4)
GO
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [apellido_cliente], [mail_cliente], [telefono], [documento], [tipo_documento]) VALUES (12, N'Esteban', N'Almiron', N'almironesteban52@yahoo.com', N'0351-6635646', 8545283, 1)
GO
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Puestos] ON 

GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (2, 1, 12, 1, 0)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (3, 1, 10, 1, 0)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (4, 1, 5, 0, 1)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (5, 1, 20, 1, 0)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (6, 1, 15, 1, 0)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (7, 2, 4, 0, 1)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (8, 2, 14, 1, 1)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (9, 2, 15, 1, 0)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (10, 2, 8, 0, 1)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (11, 3, 10, 0, 1)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (12, 3, 10, 1, 1)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (13, 3, 15, 1, 1)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (14, 3, 10, 0, 1)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (15, 4, 20, 1, 0)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (16, 4, 12, 1, 1)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (17, 4, 10, 1, 1)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (18, 4, 6, 0, 0)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (19, 5, 20, 1, 1)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (20, 5, 25, 1, 0)
GO
INSERT [dbo].[Puestos] ([id_puesto], [piso], [cantidad_sillas], [tiene_ventana], [disponible]) VALUES (21, 5, 25, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Puestos] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipos_documento] ON 

GO
INSERT [dbo].[Tipos_documento] ([id_tipo_documento], [documento]) VALUES (1, N'CI')
GO
INSERT [dbo].[Tipos_documento] ([id_tipo_documento], [documento]) VALUES (2, N'DNI')
GO
INSERT [dbo].[Tipos_documento] ([id_tipo_documento], [documento]) VALUES (3, N'LC')
GO
INSERT [dbo].[Tipos_documento] ([id_tipo_documento], [documento]) VALUES (4, N'LE')
GO
SET IDENTITY_INSERT [dbo].[Tipos_documento] OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Clientes__828A56757CD3E65F]    Script Date: 10/29/2017 12:05:45 PM ******/
ALTER TABLE [dbo].[Clientes] ADD UNIQUE NONCLUSTERED 
(
	[mail_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alquileres]  WITH CHECK ADD  CONSTRAINT [fk_cliente_alquileres] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[Alquileres] CHECK CONSTRAINT [fk_cliente_alquileres]
GO
ALTER TABLE [dbo].[Alquileres]  WITH CHECK ADD  CONSTRAINT [fk_puesto_alquileres] FOREIGN KEY([id_puesto])
REFERENCES [dbo].[Puestos] ([id_puesto])
GO
ALTER TABLE [dbo].[Alquileres] CHECK CONSTRAINT [fk_puesto_alquileres]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [fk_tiposDocumento_cliente] FOREIGN KEY([tipo_documento])
REFERENCES [dbo].[Tipos_documento] ([id_tipo_documento])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [fk_tiposDocumento_cliente]
GO
ALTER TABLE [dbo].[Puestos]  WITH CHECK ADD CHECK  (([piso]>=(1) AND [piso]<=(5)))
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_alquiler]    Script Date: 10/29/2017 12:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- SP Insert de Alquileres
CREATE PROCEDURE [dbo].[sp_insert_alquiler]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_cliente]    Script Date: 10/29/2017 12:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- SP Insert de Clientes
CREATE PROCEDURE [dbo].[sp_insert_cliente]
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
/****** Object:  StoredProcedure [dbo].[sp_insert_puesto]    Script Date: 10/29/2017 12:05:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- SP Insert de Puestos
CREATE PROCEDURE [dbo].[sp_insert_puesto]
@mPiso int,
@mCantidadSillas int,
@mTieneVentana bit
AS
BEGIN
	INSERT INTO Puestos (piso, cantidad_sillas, tiene_ventana)
	VALUES (@mPiso, @mCantidadSillas, @mTieneVentana)
END
GO
USE [master]
GO
ALTER DATABASE [TP_Alquileres_LabIV] SET  READ_WRITE 
GO

USE [TP_Alquileres_LabIV]
GO
/****** Object:  Trigger [dbo].[tg_actualizar_disponibilidad_puesto]    Script Date: 10/29/2017 12:09:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- TG actualizar puesto en nuevo Alquiler
ALTER TRIGGER [dbo].[tg_actualizar_disponibilidad_puesto]
ON [dbo].[Alquileres]
AFTER INSERT
AS
BEGIN
	DECLARE @mIdPuesto int
	SELECT @mIdPuesto = i.id_puesto
	FROM inserted i
	UPDATE Puestos
	SET disponible = 0
	WHERE id_puesto = @mIdPuesto
END