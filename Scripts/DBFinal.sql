USE [TP_Alquileres_LabIV]
GO
/****** Object:  Table [dbo].[Alquileres]    Script Date: 10/28/2017 7:28:46 PM ******/
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
	[tene_acceso_sala_reuniones] [int] NULL,
	[fecha] [date] NOT NULL CONSTRAINT [DF_Alquileres_fecha]  DEFAULT (getdate()),
 CONSTRAINT [pk_alquileres] PRIMARY KEY CLUSTERED 
(
	[id_alquiler] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 10/28/2017 7:28:46 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[mail_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Puestos]    Script Date: 10/28/2017 7:28:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puestos](
	[id_puesto] [int] IDENTITY(1,1) NOT NULL,
	[piso] [int] NULL,
	[cantidad_sillas] [int] NULL,
	[tiene_ventana] [bit] NULL,
 CONSTRAINT [pk_puestos] PRIMARY KEY CLUSTERED 
(
	[id_puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipos_documento]    Script Date: 10/28/2017 7:28:46 PM ******/
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
