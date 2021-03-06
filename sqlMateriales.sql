USE [master]
GO
/****** Object:  Database [BDproductos]    Script Date: 20/06/2016 17:30:33 ******/
CREATE DATABASE [BDproductos] ON  PRIMARY 
( NAME = N'BDproductos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\BDproductos.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BDproductos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\BDproductos_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BDproductos] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDproductos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDproductos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDproductos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDproductos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDproductos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDproductos] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDproductos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDproductos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDproductos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDproductos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDproductos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDproductos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDproductos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDproductos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDproductos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDproductos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDproductos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDproductos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDproductos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDproductos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDproductos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDproductos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDproductos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDproductos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDproductos] SET  MULTI_USER 
GO
ALTER DATABASE [BDproductos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDproductos] SET DB_CHAINING OFF 
GO
USE [BDproductos]
GO
/****** Object:  Table [dbo].[Centros_Costo]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Centros_Costo](
	[Gerente] [nvarchar](255) NULL,
	[CD] [nvarchar](255) NULL,
	[descripcion] [nvarchar](255) NULL,
	[codigo] [nvarchar](255) NULL,
	[Responsable Area] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CC ]    Script Date: 20/06/2016 17:30:33 ******/
CREATE CLUSTERED INDEX [CC ] ON [dbo].[Centros_Costo]
(
	[descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[id_estado] [int] IDENTITY(1,1) NOT NULL,
	[Estados] [nvarchar](50) NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Materiales]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materiales](
	[REFERENCIA] [nvarchar](50) NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[Valor Unitario] [decimal](18, 0) NULL,
	[Unidad Empaque] [nvarchar](50) NULL,
	[Unidad Transferencia] [nvarchar](255) NULL,
	[Proveedor] [nvarchar](255) NULL,
	[Por bulto] [nvarchar](50) NULL,
	[Unidad Transferencia/bulto] [nvarchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [materiales]    Script Date: 20/06/2016 17:30:33 ******/
CREATE CLUSTERED INDEX [materiales] ON [dbo].[Materiales]
(
	[DESCRIPCION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materiales_Precio]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materiales_Precio](
	[REFERENCIA] [nvarchar](50) NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[MPRECIO] [nvarchar](50) NULL,
	[MCOSTO_RPSC] [nvarchar](50) NULL,
	[MCOSTO_PRMD] [nvarchar](50) NULL,
	[UnidadTranferencia] [nvarchar](50) NULL,
	[CUNI_MEDD] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Solicitud_m]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Solicitud_m](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Solicitud] [int] NULL,
	[codigo] [nvarchar](50) NULL,
	[descripcionCC] [nvarchar](50) NULL,
	[Usuario] [nvarchar](50) NULL,
	[REFERENCIA] [nvarchar](50) NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[Cantidad] [int] NULL,
	[Estado] [nvarchar](10) NULL,
	[Fecha_Ingreso] [nvarchar](50) NULL,
	[Precio] [int] NULL,
 CONSTRAINT [PK_Solicitud_m] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Solicitud_Resumen]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Solicitud_Resumen](
	[id_Solicitud] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nvarchar](255) NULL,
	[CC] [nvarchar](255) NULL,
	[Estado] [nvarchar](255) NULL,
	[Fecha] [nvarchar](255) NULL,
	[PrecioTotal] [nvarchar](255) NULL,
 CONSTRAINT [PK_Solicitud_Resumen] PRIMARY KEY CLUSTERED 
(
	[id_Solicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[Pass] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Tipo] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[PrecioMaterialesPendiente]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PrecioMaterialesPendiente]
AS
SELECT        dbo.Solicitud_m.REFERENCIA, dbo.Solicitud_m.DESCRIPCION, dbo.Solicitud_m.Estado, dbo.Solicitud_m.Usuario, dbo.Solicitud_m.Precio, dbo.Materiales.[Valor Unitario]
FROM            dbo.Solicitud_m INNER JOIN
                         dbo.Materiales ON dbo.Solicitud_m.DESCRIPCION = dbo.Materiales.DESCRIPCION
WHERE        (dbo.Solicitud_m.Estado = N'En Proceso')

GO
/****** Object:  View [dbo].[SumaPrecio]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SumaPrecio]
AS
SELECT        SUM(Precio) AS Total, Estado, Usuario
FROM            dbo.PrecioMaterialesPendiente
GROUP BY Estado, Usuario

GO
/****** Object:  View [dbo].[CentroCosto]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CentroCosto]
AS
SELECT        CAST(codigo AS VARCHAR) + ' - ' + CAST(descripcion AS VARCHAR) AS CentroCosto, descripcion, codigo
FROM            dbo.Centros_Costo

GO
/****** Object:  View [dbo].[EstadoAprobado]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EstadoAprobado]
AS
SELECT        id_Solicitud, codigo, descripcionCC, Usuario, REFERENCIA, DESCRIPCION, Cantidad, Estado, Fecha_Ingreso, Precio
FROM            dbo.Solicitud_m
WHERE        (Estado = N'Aprobado')

GO
/****** Object:  View [dbo].[EstadoPendiente]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EstadoPendiente]
AS
SELECT        id_Solicitud, codigo, descripcionCC, Usuario, REFERENCIA, DESCRIPCION, Cantidad, Estado, Fecha_Ingreso, Precio
FROM            dbo.Solicitud_m
WHERE        (Estado = N'Pendiente')

GO
/****** Object:  View [dbo].[Gerente]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Gerente]
AS
SELECT        nombre, Tipo, Email
FROM            dbo.Usuario
WHERE        (Tipo = N'Gerente')

GO
/****** Object:  View [dbo].[GrillaGerente]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[GrillaGerente]
AS
SELECT        dbo.Solicitud_Resumen.id_Solicitud, dbo.Solicitud_Resumen.Usuario, dbo.Solicitud_Resumen.CC, dbo.Solicitud_Resumen.Estado, dbo.Solicitud_Resumen.Fecha, dbo.Solicitud_Resumen.PrecioTotal, 
                         dbo.Usuario.nombre
FROM            dbo.Usuario INNER JOIN
                         dbo.Centros_Costo ON dbo.Usuario.nombre = dbo.Centros_Costo.Gerente INNER JOIN
                         dbo.Solicitud_Resumen ON dbo.Centros_Costo.codigo = dbo.Solicitud_Resumen.CC

GO
/****** Object:  View [dbo].[GrillaGerentePendiente]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[GrillaGerentePendiente]
AS
SELECT        dbo.Solicitud_Resumen.id_Solicitud, dbo.Solicitud_Resumen.Usuario, dbo.Solicitud_Resumen.CC, dbo.Solicitud_Resumen.Estado, dbo.Solicitud_Resumen.Fecha, dbo.Solicitud_Resumen.PrecioTotal, 
                         dbo.Usuario.nombre
FROM            dbo.Usuario INNER JOIN
                         dbo.Centros_Costo ON dbo.Usuario.nombre = dbo.Centros_Costo.Gerente INNER JOIN
                         dbo.Solicitud_Resumen ON dbo.Centros_Costo.codigo = dbo.Solicitud_Resumen.CC
WHERE        (dbo.Solicitud_Resumen.Estado = N'Pendiente')

GO
/****** Object:  View [dbo].[Listado Materiales]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Listado Materiales]
AS
SELECT        CAST(REFERENCIA AS VARCHAR) + ' - ' + CAST(DESCRIPCION AS VARCHAR) AS Materiales, REFERENCIA, DESCRIPCION, [Por bulto]
FROM            dbo.Materiales

GO
/****** Object:  View [dbo].[PrecioMaterialesVacios]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PrecioMaterialesVacios]
AS
SELECT        dbo.Solicitud_m.REFERENCIA, dbo.Solicitud_m.DESCRIPCION, dbo.Solicitud_m.Estado, dbo.Solicitud_m.Usuario, dbo.Solicitud_m.Precio, dbo.Materiales.[Valor Unitario]
FROM            dbo.Solicitud_m INNER JOIN
                         dbo.Materiales ON dbo.Solicitud_m.DESCRIPCION = dbo.Materiales.DESCRIPCION
WHERE        (dbo.Solicitud_m.Precio IS NULL)

GO
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'DNuñez', N'Overhead', N'Administracion Central CDA', N'8398', N'D. Nuñez', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Overhead', N'Administracion de Cotas', N'8468', N'J. Nazarala', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Almacenamiento y Sorters', N'Almacenamiento Cantilever', N'8432', N'A. Prat', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Almacenamiento y Sorters', N'Almacenamiento Colgado', N'8433', N'A. Prat', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Almacenamiento CT Antofagasta', N'8298', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Big Tickets', N'Almacenamiento CT Bicicletas', N'9940', N'R. Rocha', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Almacenamiento CT Calama', N'9563', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Almacenamiento CT Copiapo', N'9573', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Almacenamiento CT Curico', N'9588', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Almacenamiento CT Iquique', N'9583', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Almacenamiento CT La Serena', N'9568', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Almacenamiento CT Osorno', N'9608', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Almacenamiento CT Puerto Montt', N'9613', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Almacenamiento CT Rancagua', N'9623', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Almacenamiento CT Talca', N'9578', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Almacenamiento CT Temuco', N'9598', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Almacenamiento CT Valdivia', N'9603', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'DVD', N'Almacenamiento Internet', N'8436', N'J. Nazarala', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Almacenamiento y Sorters', N'Almacenamiento Mesanine 944', N'8437', N'A. Prat', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Almacenamiento y Sorters', N'Almacenamiento Mesanine 945', N'8438', N'A. Prat', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Procesos Externos', N'Almacenamiento Perfumería', N'8348', N'P. Daza', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Almacenamiento y Sorters', N'Almacenamiento Perfumeria Omnicanal', N'8403', N'A. Prat', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Almacenamiento y Sorters', N'Almacenamiento Rack 944', N'8441', N'A. Prat', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Almacenamiento y Sorters', N'Almacenamiento Rack 945', N'8442', N'A. Prat', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Big Tickets', N'Almacenamiento Rack San Francisco', N'8443', N'R. Rocha', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Big Tickets', N'Almacenamiento Rack San Pedro', N'8444', N'R. Rocha', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Logistica Inversa', N'Almacenamiento San Juan', N'8344', N'R. Luna', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Almacenamiento y Sorters', N'Carton Sorter', N'8445', N'A. Prat', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'MPucheta', N'Omnicanal', N'CD Omnicanal.', N'9556', N'M. Pucheta', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Recepcion y Produccion', N'Consolidación de Recepción', N'8339', N'P. Daza', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Almacenamiento y Sorters', N'Consolidación Sorter', N'8359', N'A. Prat', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ingSistema', N'Overhead', N'Consultoria CDA', N'8369', N'JE. Cespedes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'GMarambio', N'Overhead', N'Contabilidad y Procesos', N'8389', N'D. Beltran', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Overhead', N'Control de Calidad', N'8357', N'R. Luna', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Overhead', N'Control de Discrepancias', N'8419', N'L. Valenzuela', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Overhead', N'Control de Existencias', N'8387', N'D. Mendez', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'GMarambio', N'Overhead', N'Control de Gestion CDA', N'8397', N'D. Beltran', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Overhead', N'Control Interno CDA', N'8418', N'D. Salinas', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Logistica Inversa', N'CT San Bernardo Bodega 1 y 2', N'8301', N'R. Luna', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Logistica Inversa', N'CT San Bernardo Bodega 3 y 4', N'8302', N'R. Luna', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ingSistema', N'Overhead', N'Departamento UCP', N'8454', N'L. Lopez', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Almacenamiento y Sorters', N'Flat Sorter', N'8455', N'A. Prat', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'DVD', N'Forwarding', N'8456', N'J. Nazarala', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ingSistema', N'Importaciones', N'Gerencia Logistica de Importaciones.124', N'1490', N'P. Vega', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ingSistema', N'Overhead', N'Ingenieria', N'8485', N'L. Lopez', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ingSistema', N'Overhead', N'Ingenieria de Procesos', N'8368', N'L. Laudanski', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'FUrrutia', N'Overhead', N'Logistica de proveedores B2B', N'8449', N'A. Silva', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Overhead', N'Logistica TRLs', N'8453', N'J. Schorr', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'FUrrutia', N'Venta en Verde', N'Logistica VT Verde', N'8450', N'P. Toledo', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Overhead', N'Mantencion', N'8446', N'R. Apariz', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Overhead', N'Materiales CDA', N'8451', N'J. Schorr', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'MPucheta', N'Omnicanal', N'OMS Tradis', N'9558', N'L. Lopez', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Otros DVD', N'Overhead B2C', N'8390', N'P. Diaz', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Otros CD Big Ticket', N'Overhead CD Big Ticket', N'8360', N'P. Diaz', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Otros CD Vestuario', N'Overhead CD Vestuario', N'8350', N'P. Diaz', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Overhead CT Antofagasta', N'8295', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Overhead CT Calama', N'9560', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Overhead CT Copiapo', N'9570', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Overhead CT Curico', N'9585', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Overhead CT Iquique', N'9580', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Overhead CT La Serena', N'9565', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Overhead CT Osorno', N'9605', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Overhead CT Puerto Montt', N'9610', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Overhead CT Rancagua', N'9620', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Big Tickets', N'Overhead CT San Francisco', N'8370', N'R. Rocha', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Big Tickets', N'Overhead CT San Pedro', N'8316', N'R. Rocha', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Overhead CT Talca', N'9575', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Overhead CT Temuco', N'9595', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Overhead CT Valdivia', N'9600', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Procesos Externos', N'Overhead Perfumería', N'8346', N'P. Daza', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Overhead', N'Overhead Red Troncal', N'8402', N'R. Valenzuela', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Logistica Inversa', N'Overhead San Juan', N'8342', N'R. Luna', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ingSistema', N'Overhead', N'Planificacion de la produccion', N'8367', N'L. Perez', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'DVD', N'Preparación F12', N'8457', N'J. Nazarala', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Recepcion y Produccion', N'Proceso Marcas', N'8358', N'P. Daza', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Overhead', N'Procesos post-venta', N'8481', N'J. Nazarala', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Recepcion y Produccion', N'Producción', N'8458', N'P. Daza', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Logistica Inversa', N'Recepcion CD San Bernardo', N'8328', N'R. Luna', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Recepcion CT Antofagasta', N'8297', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Recepcion CT Calama', N'9562', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Recepcion CT Copiapo', N'9572', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Recepcion CT Curico', N'9587', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Recepcion CT Iquique', N'9582', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Recepcion CT La Serena', N'9567', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Recepcion CT Osorno', N'9607', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Recepcion CT Puerto Montt', N'9612', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Recepcion CT Rancagua', N'9622', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Recepcion CT Talca', N'9577', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Recepcion CT Temuco', N'9597', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Recepcion CT Valdivia', N'9602', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Reparto', N'Recepción CT Verde 945', N'8460', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Big Tickets', N'Recepción Importado San Francisco', N'8464', N'R. Rocha', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Big Tickets', N'Recepción Importado San Pedro', N'8483', N'R. Rocha', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Recepcion y Produccion', N'Recepción Local 945', N'8466', N'P. Daza', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Recepcion y Produccion', N'Recepción Nacional', N'8469', N'P. Daza', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Procesos Externos', N'Recepción Perfumería', N'8347', N'P. Daza', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Logistica Inversa', N'Recepción San Juan', N'8343', N'R. Luna', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Overhead', N'Recuento Ciclico', N'8470', N'J. Diaz', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Overhead', N'Recuperacion de sensores', N'8338', N'J. Schorr', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'DNuñez', N'Overhead', N'Recursos Humanos CDA', N'8388', N'D. Nuñez', N'rcidj@falabella.cl')
GO
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Reparto', N'Reparto', N'8471', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Procesos Externos', N'Reproceso Vestuario', N'1413', N'P. Daza', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Overhead', N'Ruteo y tracking', N'8407', N'J. Strube', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Logistica Inversa', N'Salida CD San Bernardo', N'8329', N'R. Luna', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Salida CT Antofagasta', N'8299', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Big Tickets', N'Salida CT Bicicletas', N'9943', N'R. Rocha', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Salida CT Calama', N'9564', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Salida CT Copiapo', N'9574', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Salida CT Curico', N'9589', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Salida CT Iquique', N'9584', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Salida CT La Serena', N'9569', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Salida CT Osorno', N'9609', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Salida CT Puerto Montt', N'9614', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Salida CT Rancagua', N'9624', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Salida CT Talca', N'9579', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Salida CT Temuco', N'9599', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Salida CT Valdivia', N'9604', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Reparto', N'Salida CT Verde 945', N'8473', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Despacho', N'Salida Despacho', N'8477', N'J. Schorr', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Big Tickets', N'Salida Despacho San Pedro', N'8476', N'R. Rocha', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'DVD', N'Salida Internet', N'8479', N'J. Nazarala', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Procesos Externos', N'Salida Perfumería', N'8349', N'P. Daza', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Big Tickets', N'Salida San Francisco.', N'8480', N'R. Rocha', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Logistica Inversa', N'Salida San Juan', N'8345', N'R. Luna', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Overhead', N'Seguridad CD Big Ticket', N'8304', N'R. Apariz', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Overhead', N'Seguridad CD Multicanal', N'8305', N'R. Apariz', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Overhead', N'Seguridad CD Vestuario', N'8447', N'R. Apariz', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Seguridad CT Antofagasta', N'8296', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Seguridad CT Calama', N'9561', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Seguridad CT Copiapo', N'9571', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Seguridad CT Curico', N'9586', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Seguridad CT Iquique', N'9581', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Norte', N'Seguridad CT La Serena', N'9566', N'T. Kappes', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Seguridad CT Osorno', N'9606', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Seguridad CT Puerto Montt', N'9611', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Seguridad CT Rancagua', N'9621', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Seguridad CT Talca', N'9576', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Seguridad CT Temuco', N'9596', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'RValenzuela', N'Troncal Sur', N'Seguridad CT Valdivia', N'9601', N'L. Mancilla', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Overhead', N'Seguridad San Bernardo', N'8303', N'R. Apariz', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Overhead', N'Seguridad San Francisco', N'8306', N'R. Apariz', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Overhead', N'Seguridad San Juan', N'8308', N'R. Apariz', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Overhead', N'Seguridad San Pedro', N'8307', N'R. Apariz', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ADuran', N'Overhead', N'Servicio Tecnico CDA', N'8448', N'R. Luna', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Almacenamiento y Sorters', N'Shoe Sorter', N'8341', N'A. Prat', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ingSistema', N'Overhead', N'Slotting CD Big Ticket', N'8332', N'A. Aguilera', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ingSistema', N'Overhead', N'Slotting CD Multicanal', N'8335', N'A. Aguilera', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ingSistema', N'Overhead', N'Slotting CD Vestuario', N'8331', N'A. Aguilera', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ingSistema', N'Overhead', N'Slotting San Francisco', N'8333', N'A. Aguilera', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ingSistema', N'Overhead', N'Slotting San Juan', N'8337', N'A. Aguilera', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ingSistema', N'Overhead', N'Slotting San Pedro', N'8334', N'A. Aguilera', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'FUrrutia', N'Venta en Verde', N'Soporte B2B', N'8406', N'P. Toledo', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'ingSistema', N'Overhead', N'Soporte sistemico', N'8484', N'L. Lopez', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'PDiaz', N'Overhead', N'Suministros CDA', N'8465', N'P. Daza', N'rcidj@falabella.cl')
INSERT [dbo].[Centros_Costo] ([Gerente], [CD], [descripcion], [codigo], [Responsable Area], [Email]) VALUES (N'MPucheta', N'Omnicanal', N'WMS Tradis', N'9559', N'R. Zuñiga', N'rcidj@falabella.cl')
SET IDENTITY_INSERT [dbo].[Estados] ON 

INSERT [dbo].[Estados] ([id_estado], [Estados]) VALUES (1, N'Aprobado')
INSERT [dbo].[Estados] ([id_estado], [Estados]) VALUES (2, N'Pendiente')
INSERT [dbo].[Estados] ([id_estado], [Estados]) VALUES (3, N'En Proceso')
INSERT [dbo].[Estados] ([id_estado], [Estados]) VALUES (4, N'En Compra')
INSERT [dbo].[Estados] ([id_estado], [Estados]) VALUES (5, N'Para Retirar')
INSERT [dbo].[Estados] ([id_estado], [Estados]) VALUES (6, N'Rechazado')
SET IDENTITY_INSERT [dbo].[Estados] OFF
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697636', N'ACCOCLIP METALICO CAJA 50UN DORADO', CAST(974 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'5097613', N'ANOTADOR C/APRETADOR MADERA OFICIO', CAST(1965 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697644', N'ARCHIVADOR OF. ANCHO BURDEO', CAST(651 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1953614', N'AZUCAR GRANULADA PQTE. 1KG', CAST(538 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697648', N'BLOCK CARTA PREP 7MM/80HJ BLANCO', CAST(653 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697997', N'BOLSA BASURA 80   120', CAST(71 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIA DE PLASTICOS SERPLAS S.A.', N'100', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697833', N'BOLSA BIG BAG 60X140', CAST(102 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIA DE PLASTICOS SERPLAS S.A.', N'200', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697834', N'BOLSA BIG BAG 60X90', CAST(65 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIA DE PLASTICOS SERPLAS S.A.', N'300', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1750894', N'BOLSA CAMISA', CAST(44 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIA DE PLASTICOS SERPLAS S.A.', N'100', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'4058822', N'BOLSA ESTANTERIA 44X55', CAST(33 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIA DE PLASTICOS SERPLAS S.A.', N'1000', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'4058825', N'BOLSA ESTANTERIA 50X70', CAST(45 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIA DE PLASTICOS SERPLAS S.A.', N'1000', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697864', N'BOLSA HIPER GIGANTE', CAST(528 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIA DE PLASTICOS SERPLAS S.A.', N'40', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'4166157', N'BOLSA LOCKER 20X30', CAST(41 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIA DE PLASTICOS SERPLAS S.A.', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'4166158', N'BOLSA LOCKER 35X40', CAST(69 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIA DE PLASTICOS SERPLAS S.A.', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'4169303', N'BOLSA LOCKER 40X60', CAST(129 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIA DE PLASTICOS SERPLAS S.A.', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'4929760', N'BOLSA LOCKER 50X70', CAST(274 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIA DE PLASTICOS SERPLAS S.A.', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3483103', N'BOLSA PLASTICA 50X30 TRADIS', CAST(17 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIA DE PLASTICOS SERPLAS S.A.', N'1500', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697865', N'BOLSA SACO', CAST(61 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIA DE PLASTICOS SERPLAS S.A.', N'150', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697866', N'BOLSA SUPER GIGANTE', CAST(117 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIA DE PLASTICOS SERPLAS S.A.', N'150', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697867', N'BOLSA USO INTERNO 25X50', CAST(26 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIA DE PLASTICOS SERPLAS S.A.', N'800', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3853132', N'BORRADOR PIZARRA 40X130X15MM', CAST(3195 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'5064216', N'BURBUJAS INFLADAS', CAST(135000 AS Decimal(18, 0)), N'1', N'Unidad', N'SANDIMAN S A', N'1', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1953616', N'CAFE INST. DESCAFEINADO DECAF 170GR', CAST(3462 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1953618', N'CAFE TRADICION GRAN TARRO 400GR', CAST(7185 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3167294', N'CAJA 1 XS', CAST(151 AS Decimal(18, 0)), N'1', N'Unidad', N'CORRUPAC S.A.', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3167295', N'CAJA 2 S', CAST(197 AS Decimal(18, 0)), N'1', N'Unidad', N'CORRUPAC S.A.', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3167296', N'CAJA 3 M', CAST(229 AS Decimal(18, 0)), N'1', N'Unidad', N'CORRUPAC S.A.', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3167297', N'CAJA 4 L', CAST(311 AS Decimal(18, 0)), N'1', N'Unidad', N'CORRUPAC S.A.', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3167298', N'CAJA 5 XL', CAST(466 AS Decimal(18, 0)), N'1', N'Unidad', N'CORRUPAC S.A.', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697654', N'CAJA ARCHIVO CARTON ESTANDAR', CAST(194 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'25', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'4370623', N'CAJA CARTON 40X30X30', CAST(381 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697818', N'CAJA CARTON N 3', CAST(443 AS Decimal(18, 0)), N'1', N'Unidad', N'CARTONPACK S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697821', N'CAJA CARTON N 6', CAST(255 AS Decimal(18, 0)), N'1', N'Unidad', N'CARTONPACK S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697826', N'CAJA EMBALAJE POS', CAST(736 AS Decimal(18, 0)), N'1', N'Unidad', N'CARTONPACK S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3183242', N'CAJA MAT AIRPOUCH', CAST(112500 AS Decimal(18, 0)), N'1', N'Unidad', N'SANDIMAN S A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697727', N'CALCULADORA ESCRITORIO 12DIG D 000', CAST(3157 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697657', N'CARPETA COLGANTE FLEJE PLA KRAF', CAST(129 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697658', N'CARPETA PLASTIFICADA OFICIO AZUL', CAST(107 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697730', N'CARPETAS OFICIO LOGO', CAST(230 AS Decimal(18, 0)), N'1', N'Unidad', N'COMERCIAL TYPOS S.A.', N'50', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3000189', N'CINTA ADH. ECO 12MMX30MT TRANSP', CAST(60 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2684648', N'CINTA OKIDATA ML 3410 ORIGINAL', CAST(28460 AS Decimal(18, 0)), N'1', N'Unidad', N'MIRANDA SELLE COMPUTACION', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2941054', N'Cinta TransfTérmica (Zebra)102x450', CAST(3774 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'24', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697789', N'CINTAS OKIDATA 420', CAST(11000 AS Decimal(18, 0)), N'1', N'Unidad', N'MIRANDA SELLE COMPUTACION', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'4590815', N'CINTAS OKIDATA 620', CAST(14875 AS Decimal(18, 0)), N'1', N'Unidad', N'MIRANDA SELLE COMPUTACION', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697660', N'CLIPS N1 REDONDO 100UN 30MM', CAST(139 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697661', N'CLIPS N50 REDONDO 50UN 50MM', CAST(184 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697662', N'CLIPS N80 REDONDO 50UN 80MM', CAST(592 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697665', N'CORCHETE ESTANDAR 26/06 1000UN', CAST(80 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1989202', N'CORCHETERA METALICA MEDIA STAND', CAST(2755 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'4058878', N'CORCHETERA SEMI IND B 310 BOSTITCH', CAST(25626 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3703165', N'CORRECTOR LIQUIDO LAPIZ BLANCO', CAST(537 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697670', N'CUAD.INDICE 100HJ MAT.7MM IND. ALFA', CAST(1067 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1921001', N'CUADERNO AUCA UNIVERSAL 100 HOJAS', CAST(335 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697672', N'CUCHILLO CART. GRANDE PLASTICO', CAST(151 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697673', N'DEDO DE GOMA N11 IMPORTADO ROJO', CAST(39 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3671411', N'DESINFECTANTE AMB. 360CC', CAST(1702 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697674', N'DESTACADOR BOLSILLO AMARILLO', CAST(109 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'4176305', N'DISPENSADOR  SELLADOR TRANSP ACR', CAST(4150 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697827', N'DISPENSADOR SCOTCH', CAST(1751 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697676', N'ELASTICO 1KILO IMPORTADO BLANCO', CAST(2849 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1953613', N'END ASPARTAMO 150UN NATURALIST', CAST(907 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1953623', N'END ASPARTAMO 400 TAB NATURALIST', CAST(2211 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3825016', N'ESCOBILLON TRAD VERDE C/MANGO MAD', CAST(1078 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1736112', N'ETI BLAN 30X30ZEBR TRAD ROL/8000', CAST(6458 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'1', N'Rollo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'4194844', N'ETI. POLITICA DEVOLUCION', CAST(57150 AS Decimal(18, 0)), N'1', N'Caja', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'1', N'Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2695136', N'ETIQ AMARILLA 84mmx70mm', CAST(4 AS Decimal(18, 0)), N'1', N'Etiqueta', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'6000', N'Etiqueta/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2695139', N'ETIQ BEIGE 84MMX70MM', CAST(4 AS Decimal(18, 0)), N'1', N'Etiqueta', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'6000', N'Etiqueta/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1736113', N'ETIQ BLAN 48X25TRADIS ROLL/5000', CAST(5319 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'1', N'Rollo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2680864', N'ETIQ CELESTE 80MMX45MM', CAST(1800000 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2680864', N'ETIQ CELESTE 80MMX45MM', CAST(1800000 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2695138', N'ETIQ CELESTE 84mmx70mm', CAST(4 AS Decimal(18, 0)), N'1', N'Etiqueta', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'6000', N'Etiqueta/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697846', N'ETIQ METO AMARILLA ROLLO', CAST(340 AS Decimal(18, 0)), N'1', N'Rollo', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'100', N'Rollo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697848', N'ETIQ METO BLANCO ROLLO', CAST(340 AS Decimal(18, 0)), N'1', N'Rollo', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'100', N'Rollo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697849', N'ETIQ METO ROJA ROLLO', CAST(340 AS Decimal(18, 0)), N'1', N'Rollo', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'100', N'Rollo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697854', N'ETIQ METO VERDE ROLLO', CAST(330 AS Decimal(18, 0)), N'1', N'Rollo', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'100', N'Rollo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2695137', N'ETIQ NARANJA 80MMX70MM', CAST(4 AS Decimal(18, 0)), N'1', N'Etiqueta', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'2000', N'Etiqueta/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'4301503', N'ETIQ PRECIO SATEADORA SA', CAST(4225 AS Decimal(18, 0)), N'1', N'Unidad', N'SOUTHERN TECHNOLOGY GROUP S.A.', N'1', N'Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2695163', N'ETIQ ROSADO 84MMX70MM', CAST(4 AS Decimal(18, 0)), N'1', N'Etiqueta', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'6000', N'Etiqueta/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2695155', N'ETIQ VERDE 84MMX70MM', CAST(5 AS Decimal(18, 0)), N'1', N'Etiqueta', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'2000', N'Etiqueta/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2680861', N'ETIQ VERDE AGUA 80MMX45MM', CAST(3 AS Decimal(18, 0)), N'1', N'Etiqueta', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'1800', N'Etiqueta/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697850', N'ETIQ.ADHES  F12', CAST(11 AS Decimal(18, 0)), N'1', N'Etiqueta', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'1000', N'Etiqueta/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3455634', N'ETIQUETA 80X45 ROLLO 2000', CAST(17102 AS Decimal(18, 0)), N'1', N'Rollo', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'7', N'Rollo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3452145', N'ETIQUETA BLA 100X100 MM ROLL 1500', CAST(8159 AS Decimal(18, 0)), N'1', N'Rollo', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'4', N'Rollo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2195034', N'ETIQUETA METO NEGRO', CAST(340 AS Decimal(18, 0)), N'1', N'Rollo', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'100', N'Rollo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697678', N'FUNDA POLIPROPILENO CARTA 10UNI', CAST(215 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697680', N'GOMA DE BORRAR MEDIANA 7085', CAST(226 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2242608', N'GUIA DESPACHO INTERNA F.RETAIL', CAST(53 AS Decimal(18, 0)), N'1', N'Unidad', N'IMP. ALFREDO MOLINA FLORES S.A.', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2242607', N'GUIAS DE DESPACHO PARA F12 F.RETAIL', CAST(53 AS Decimal(18, 0)), N'1', N'Unidad', N'IMP. ALFREDO MOLINA FLORES S.A.', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3673950', N'JABON BASE GEL ALCOHOL', CAST(3067 AS Decimal(18, 0)), N'1', N'Unidad', N'SCA CHILE S.A.', N'12', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2645502', N'JABÓN BIDÓN 10 L', CAST(4982 AS Decimal(18, 0)), N'1', N'Unidad', N'SCA CHILE S.A.', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697835', N'KILO STRECH FILM', CAST(1577 AS Decimal(18, 0)), N'1', N'Kilo', N'WINPACK S.A', N'12', N'Kilo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3624926', N'KILO STRECH FILM ROJO', CAST(1919 AS Decimal(18, 0)), N'1', N'Kilo', N'WINPACK S.A', N'9', N'Kilo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697844', N'KIT BIG TICKET BCO 84X70mm', CAST(4 AS Decimal(18, 0)), N'1', N'Etiqueta', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'6000', N'Etiqueta/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1698159', N'KIT ETI30X30 ZEBRA(rollo8200)', CAST(5732 AS Decimal(18, 0)), N'1', N'Rollo', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'5', N'Rollo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697843', N'KIT ETIQ BIG TICKET 80mmX45mm', CAST(2 AS Decimal(18, 0)), N'1', N'Etiqueta', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'9000', N'Etiqueta/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2448375', N'KIT ETIQ NARANJA 80mx45mm', CAST(2 AS Decimal(18, 0)), N'1', N'Etiqueta', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'9000', N'Etiqueta/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697684', N'LAPIZ PASTA P/MEDIA 1UN AZUL', CAST(45 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'50', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697686', N'LAPIZ PASTA P/MEDIA 1UN ROJO', CAST(45 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'50', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1736219', N'LAZOS PLASTICOS', CAST(5 AS Decimal(18, 0)), N'1', N'Unidad', N'INVERSIONES DO-IT CHILE SPA', N'5000', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697689', N'LIBRETA CORRESPONDENCIA 100HJ', CAST(849 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
GO
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697692', N'LIBRO ADM.ACTA 100HJ LINEAL FOLIADO', CAST(1271 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697726', N'MAGIC CLIP DISPENSADOR MEDIANO 1126', CAST(577 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697694', N'MAGIC CLIP REPTO. CAJA 50UN 16MM', CAST(658 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697832', N'MANGA PLASTICA', CAST(1900 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIA DE PLASTICOS SERPLAS S.A.', N'1', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1736409', N'MARCADOR PERM. DESECH. NEGRO P/RED', CAST(221 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'12', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2196348', N'MARCADOR PERM. P/CD NEGRO P/FINA', CAST(229 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'12', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1736432', N'MARCADOR PIZARRA DESECH P/RED NEGRO', CAST(186 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'12', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1736423', N'MARCADOR PIZARRA DESECH. P/RED AZUL', CAST(186 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'12', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697722', N'MINAS 0.7MM HB', CAST(175 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3497022', N'MOUSE OPTICO USB CON LUZ', CAST(1472 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697701', N'NOTA ADH 654 100HJ AMARILLO 76X76MM', CAST(197 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697700', N'NOTA ADH. 653 BLOCK 100HJ AMARILLO', CAST(94 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3825033', N'PALA C/MANGO ECONOMICA NEGRA', CAST(804 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2862400', N'PAÑO SACUDIR AMARILLO 30X40', CAST(137 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3070337', N'PAPEL ENGOMADO 60mm x 180mts', CAST(1985 AS Decimal(18, 0)), N'1', N'Unidad', N'COMERCIALIZADORA ROLLPACK', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697724', N'PAPEL FOTOCOPIA CARTA  500HJ', CAST(1728 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'10', N'Resmas/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697725', N'PAPEL FOTOCOPIA OFICIO 500HJ', CAST(2096 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'10', N'Resmas/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3619767', N'PAPELERO METAL REJ NEGRO 28ALX26AN', CAST(3195 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3619767', N'PAPELERO METAL REJ NEGRO 28ALX26AN', CAST(3195 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697696', N'PERFORADORA MEDIANA METAL.L25 NEGRO', CAST(2320 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1953600', N'PILA ALCALINA AA 4UN DURACELL', CAST(1790 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1953599', N'PILA ALCALINA AAA 4UN DURACELL', CAST(1846 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3509794', N'PIZARRA BLANCA 90X120 M/ALUMINIO', CAST(21573 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'4067994', N'PIZARRA CORCHO 60x90', CAST(6458 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1715234', N'PLASTICO BURBUJA ROLLO', CAST(21000 AS Decimal(18, 0)), N'1', N'Unidad', N'ANDAUR INDUSTRIAL GLOBAL PACK LTDA', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3536316', N'PLUMERO MULTICOLOR FIBRA', CAST(1555 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697687', N'PORTAMINA 0.5MM PLASTICO C/GOMA', CAST(100 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697702', N'PUNCH PIN C/SURTIDOS 50UN', CAST(156 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697704', N'REGLA 30CM BISELADA', CAST(158 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1989203', N'REPTO. CUCHILLO CART.GRANDE 10UN', CAST(289 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1962131', N'REVOLVEDOR PLASTICO BOMBILLA 1000UN', CAST(4052 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697769', N'ROLL 80mx40mm TERM CONTROL ASIST', CAST(212 AS Decimal(18, 0)), N'1', N'Unidad', N'NCR CHILE S.A.', N'100', N'Rollo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3546720', N'ROLL ET.CIRCULAR 50MM MORADO 1000U', CAST(3291 AS Decimal(18, 0)), N'1', N'Caja', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'1', N'Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3546721', N'ROLL ET.CIRCULAR 50MM VERDE 1000U', CAST(3900 AS Decimal(18, 0)), N'1', N'Caja', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'1', N'Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3417092', N'ROLLO (1000) ETIQ BCA 100MMX150MM', CAST(7284 AS Decimal(18, 0)), N'1', N'Rollo', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'5', N'Rollo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697815', N'ROLLO CARTON CORRUGADO', CAST(26100 AS Decimal(18, 0)), N'1', N'Unidad', N'CARTONPACK S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'4070772', N'ROLLO ET AMARILLA 100X100(1000 UND)', CAST(6890 AS Decimal(18, 0)), N'1', N'Rollo', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'1', N'Rollo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3467117', N'ROLLO GUIA DE DESPACHO ELECTRONICA', CAST(1240 AS Decimal(18, 0)), N'1', N'Rollo', N'NCR CHILE S.A.', N'30', N'Rollo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'4371145', N'ROLLO STRECH FILM NEGRO MANUAL', CAST(2970 AS Decimal(18, 0)), N'1', N'Kilo', N'WINPACK S.A', N'6', N'Kilo/caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697706', N'SACACORCHETE PALANCA METALICO', CAST(157 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697707', N'SACACORCHETE PINZA', CAST(197 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1814514', N'SACO 30X40 (BLANCO) LOGO', CAST(71 AS Decimal(18, 0)), N'1', N'Unidad', N'EMPRESAS JORDAN S A', N'500', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697737', N'SACO EXTRAOFICIO 30X40 (KRAFT)LOGO', CAST(70 AS Decimal(18, 0)), N'1', N'Unidad', N'EMPRESAS JORDAN S A', N'500', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'3288694', N'SELL TRADIS NARANJO', CAST(363 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'72', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697859', N'SELLADOR FRAGIL', CAST(321 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'72', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697856', N'SELLADOR TRANSPARENTE  ACRÍLICO', CAST(181 AS Decimal(18, 0)), N'1', N'Unidad', N'INDUSTRIAL Y COMERCIAL SOLUCORP LIMITADA', N'72', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2986823', N'Sensor adhesivo DR', CAST(13 AS Decimal(18, 0)), N'1', N'Unidad', N'GL GROUP', N'5000', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697709', N'SEPARADOR CARTA 6 POSIC CART COLOR', CAST(290 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697710', N'SEPARADOR OFICIO 6 POSIC COLOR', CAST(312 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1968155', N'SERVILLETA COCKTAIL BLANCA 50UN', CAST(220 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697734', N'SOBRE 1 1 OFICIO LOGO', CAST(36 AS Decimal(18, 0)), N'1', N'Unidad', N'EMPRESAS JORDAN S A', N'500', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697735', N'SOBRE 1 2 OFICIO LOGO', CAST(28 AS Decimal(18, 0)), N'1', N'Unidad', N'EMPRESAS JORDAN S A', N'500', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697736', N'SOBRE AMERICANOS LOGO', CAST(15 AS Decimal(18, 0)), N'1', N'Unidad', N'EMPRESAS JORDAN S A', N'500', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'4822571', N'STRETCH FILM NEGRO AUTOMATICO', CAST(25500 AS Decimal(18, 0)), N'1', N'Unidad', N'WINPACK S.A', N'1', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'5109522', N'STRETCH FILM VERDE AUTOMATICO', CAST(30600 AS Decimal(18, 0)), N'1', N'Unidad', N'WINPACK S.A', N'1', N'Unidad/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697783', N'TARJETAS DE VISITA', CAST(4 AS Decimal(18, 0)), N'1', N'Unidad', N'JORGE ARNOLDO BAIER MUÑOZ', N'2000', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1953621', N'TÉ LIPTON HIERBAS SILVESTRES', CAST(574 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1953619', N'TE ROYAL CEYLAN CAJA 100UN', CAST(2891 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697717', N'TIJERA 7 PLASTOMETAL OFICINA', CAST(349 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697720', N'TINTA P/TAMPON 30CC NEGRA AL AGUA', CAST(547 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2645490', N'TORK ADVANCED HIG JUMBO 6x600 MT', CAST(1189 AS Decimal(18, 0)), N'1', N'Unidad', N'SCA CHILE S.A.', N'6', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2645489', N'TORK ADVANCED TOALLA JUMBO 2x280 MT', CAST(2611 AS Decimal(18, 0)), N'1', N'Unidad', N'SCA CHILE S.A.', N'2', N'Unidad/Paquete')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'2008124', N'VASO PLASTICO 200CC BLANCO 200UN', CAST(3748 AS Decimal(18, 0)), N'1', N'Unidad', N'Dimerc S.A', N'1', N'Unidad')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1953597', N'VASO PLUMAVIT 180CC X 20UN', CAST(274 AS Decimal(18, 0)), N'1', N'Manga', N'Dimerc S.A', N'100', N'Manga/Caja')
INSERT [dbo].[Materiales] ([REFERENCIA], [DESCRIPCION], [Valor Unitario], [Unidad Empaque], [Unidad Transferencia], [Proveedor], [Por bulto], [Unidad Transferencia/bulto]) VALUES (N'1697837', N'VENTANAS AUTOADHESIVAS', CAST(26 AS Decimal(18, 0)), N'1', N'Unidad', N'IMPORT. Y EXPORTA. PAMACHI LTDA.', N'1000', N'Unidad/Caja')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697864', N'BOLSA HIPER GIGANTE', N'628', N'528', N'527,702', N'10', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3467117', N'ROLLO GUIA DE DESPACHO ELECTRONICA', N'1475,6', N'1390', N'1304,114', N'30', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697856', N'SELLADOR TRANSPARENTE  ACRÍLICO', N'163', N'181,2', N'180,899', N'72', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3288694', N'SELL TRADIS NARANJO', N'393', N'363,2', N'363,189', N'72', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697859', N'SELLADOR FRAGIL', N'339', N'320,5', N'314,141', N'72', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697997', N'BOLSA BASURA 80   120', N'85', N'71,21', N'71,205', N'100', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1750894', N'BOLSA CAMISA', N'52', N'43,5', N'43,524', N'100', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697846', N'ETIQ METO AMARILLA ROLLO', N'173', N'339,8', N'330', N'100', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697849', N'ETIQ METO ROJA ROLLO', N'175', N'339,8', N'338,909', N'100', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2195034', N'ETIQUETA METO NEGRO', N'179', N'339,8', N'330', N'100', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697854', N'ETIQ METO VERDE ROLLO', N'174', N'330', N'330', N'100', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697848', N'ETIQ METO BLANCO ROLLO', N'176', N'339,8', N'330,763', N'100', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697769', N'ROLL 80mx40mm TERM CONTROL ASIST', N'437,92', N'368', N'239,891', N'100', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697832', N'MANGA PLASTICA', N'1633', N'1900', N'1503,166', N'180', N'KGM   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697865', N'BOLSA SACO', N'73', N'61,19', N'61,2', N'200', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697833', N'BOLSA BIG BAG 60X140', N'121', N'101,77', N'101,769', N'300', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697834', N'BOLSA BIG BAG 60X90', N'77', N'65,4', N'65,601', N'300', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697735', N'SOBRE 1 2 OFICIO LOGO', N'32', N'28', N'21,922', N'500', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697734', N'SOBRE 1 1 OFICIO LOGO', N'45', N'36', N'31,243', N'500', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1814514', N'SACO 30X40 (BLANCO) LOGO', N'82', N'70,9', N'47,919', N'500', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697737', N'SACO EXTRAOFICIO 30X40 (KRAFT)LOGO', N'83', N'69,5', N'56,325', N'500', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697736', N'SOBRE AMERICANOS LOGO', N'16', N'14,5', N'12,177', N'500', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3483103', N'BOLSA PLASTICA 50X30 TRADIS', N'17', N'16,7', N'16,7', N'500', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697866', N'BOLSA SUPER GIGANTE', N'140', N'117,21', N'117,089', N'650', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697686', N'LAPIZ PASTA P/MEDIA 1UN ROJO', N'84', N'46', N'46,016', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1921001', N'CUADERNO AUCA UNIVERSAL 100 HOJAS', N'311', N'332', N'335,858', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697662', N'CLIPS N80 REDONDO 50UN 80MM', N'668,78', N'601', N'581,175', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697676', N'ELASTICO 1KILO IMPORTADO BLANCO', N'2290', N'2894', N'2682,105', N'1', N'KGM   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2196348', N'MARCADOR PERM. P/CD NEGRO P/FINA', N'253,47', N'233', N'229,984', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697658', N'CARPETA PLASTIFICADA OFICIO AZUL', N'92', N'128', N'111,02', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697644', N'ARCHIVADOR OF. ANCHO BURDEO', N'1008', N'661', N'665,932', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697665', N'CORCHETE ESTANDAR 26/06 1000UN', N'302', N'81', N'80,17', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697672', N'CUCHILLO CART. GRANDE PLASTICO', N'100', N'153', N'151,707', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3497022', N'MOUSE OPTICO USB CON LUZ', N'5819', N'1472', N'1472', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697710', N'SEPARADOR OFICIO 6 POSIC COLOR', N'90', N'317', N'246,528', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697717', N'TIJERA 7 PLASTOMETAL OFICINA', N'386,75', N'355', N'349,357', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697696', N'PERFORADORA MEDIANA METAL.L25 NEGRO', N'1522,01', N'2090', N'2257,514', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697673', N'DEDO DE GOMA N11 IMPORTADO ROJO', N'48', N'40', N'38,961', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697661', N'CLIPS N50 REDONDO 50UN 50MM', N'203,49', N'187', N'183,284', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3509794', N'PIZARRA BLANCA 90X120 M/ALUMINIO', N'23874,97', N'21915', N'21696,12', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3619767', N'PAPELERO METAL REJ NEGRO 28ALX26AN', N'4182', N'3489', N'3285,703', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697704', N'REGLA 30CM BISELADA', N'58', N'161', N'157,744', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697689', N'LIBRETA CORRESPONDENCIA 100HJ', N'715', N'862', N'824,592', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3000189', N'CINTA ADHESIVA 12MM TRANSP', N'130', N'61', N'60,515', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697678', N'FUNDA POLIPROPILENO CARTA 10UNI', N'21', N'218', N'197,838', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697636', N'ACCOCLIP METALICO CAJA 50UN DORADO', N'610', N'989', N'763,226', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'4176305', N'DISPENSADOR  SELLADOR TRANSP ACR', N'3796', N'4150', N'4150', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697709', N'SEPARADOR CARTA 6 POSIC CART COLOR', N'111', N'295', N'285,868', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2684648', N'CINTA OKIDATA ML 3410 ORIGINAL', N'25537', N'28460', N'28460', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697789', N'CINTAS OKIDATA 420', N'9282', N'11000', N'9980,986', N'3', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3183242', N'CAJA MAT AIRPOUCH', N'133875', N'112500', N'112500', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2645502', N'JABÓN BIDÓN 10 L', N'10448', N'4982', N'4955,26', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'4301503', N'ETIQ PRECIO SATEADORA SA', N'5027', N'4225', N'4096,523', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'4822571', N'STRETCH FILM NEGRO AUTOMATICO', N'30345', N'25500', N'25500', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2645489', N'TORK ADVANCED TOALLA JUMBO 2x280 MT', N'3035', N'2611', N'2610,818', N'2', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1989203', N'REPTO. CUCHILLO CART.GRANDE 10UN', N'327,25', N'294', N'279,475', N'5', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3452145', N'ETIQUETA BLA 100X100 MM ROLL 1500', N'4725', N'8158,7', N'8158,7', N'5', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1698159', N'KIT ETI30X30 ZEBRA(rollo8200)', N'5941', N'5732', N'7385,761', N'5', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3417092', N'ROLLO (1000) ETIQ BCA 100MMX150MM', N'4391', N'7284', N'7284', N'5', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'4070772', N'ROLLO ET AMARILLA 100X100(1000 UND)', N'8268', N'6890', N'6890', N'5', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697701', N'NOTA ADH 654 100HJ AMARILLO 76X76MM', N'502', N'200', N'197,468', N'6', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2645490', N'TORK ADVANCED HIG JUMBO 6x600 MT', N'1347', N'1132', N'1166,86', N'6', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'4371145', N'ROLLO STRECH FILM NEGRO MANUAL', N'3534,3', N'2970', N'2970', N'6', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3455634', N'ETIQUETA 80X45 ROLLO 2000', N'18802', N'17101,5', N'17101,5', N'7', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3624926', N'KILO STRECH FILM ROJO', N'1904', N'1919', N'1919', N'9', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697724', N'PAPEL FOTOCOPIA CARTA  500HJ', N'1904', N'1743', N'1735,41', N'10', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697684', N'LAPIZ PASTA P/MEDIA 1UN AZUL', N'49,98', N'46', N'45,722', N'10', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1953597', N'VASO PLUMAVIT 180CC X 20UN', N'338', N'278', N'276,633', N'10', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697725', N'PAPEL FOTOCOPIA OFICIO 500HJ', N'2285', N'2114', N'2019,58', N'10', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3673950', N'JABON BASE GEL ALCOHOL', N'3650', N'3066,7', N'3066,745', N'12', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697835', N' KILO STRECH FILM', N'1877', N'1577', N'1577', N'12', N'KGM   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697654', N'CAJA ARCHIVO CARTON ESTANDAR', N'229', N'197', N'196,306', N'25', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1715234', N'PLASTICO BURBUJA ROLLO', N'21908', N'21000', N'20999,997', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697818', N'CAJA CARTON N 3', N'527', N'443', N'431,558', N'50', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697821', N'CAJA CARTON N 6', N'211', N'255', N'255,026', N'25', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697815', N'ROLLO CARTON CORRUGADO', N'24990', N'26100', N'26072,329', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697826', N'CAJA EMBALAJE POS', N'772', N'813', N'749,869', N'50', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697730', N'CARPETAS OFICIO LOGO', N'140', N'390', N'358,762', N'50', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3070337', N'PAPEL ENGOMADO 60mm x 180mts', N'2362', N'1985', N'1985', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3167294', N'CAJA 1 XS', N'180', N'151', N'151', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3167297', N'CAJA 4 L', N'368', N'311', N'311', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3167298', N'CAJA 5 XL', N'525', N'466', N'466', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3167296', N'CAJA 3 M', N'240', N'229', N'229', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3167295', N'CAJA 2 S', N'189', N'197', N'197', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3825033', N'PALA C/MANGO ECONOMICA NEGRA', N'890,12', N'817', N'789,205', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3825016', N'ESCOBILLON TRAD VERDE C/MANGO MAD', N'1193,57', N'1095', N'1074,136', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1953618', N'CAFE TRADICION GRAN TARRO 400GR', N'7865,9', N'7299', N'7225,87', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1953614', N'AZUCAR GRANULADA PQTE. 1KG', N'595', N'547', N'541,337', N'1', N'KGM   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2862400', N'PAÑO SACUDIR AMARILLO 30X40', N'151,13', N'139', N'137,684', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1736409', N'MARCADOR PERM. DESECH. NEGRO P/RED', N'126,14', N'141', N'177,883', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1989202', N'CORCHETERA METALICA MEDIA STAND', N'4677', N'1736', N'2437,4', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1736432', N'MARCADOR PIZARRA DESECH P/RED NEGRO', N'178,5', N'189', N'183,648', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697720', N'TINTA P/TAMPON 30CC NEGRA AL AGUA', N'605,71', N'547', N'544,178', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1953623', N'END ASPARTAMO 400 TAB NATURALIST', N'2499', N'2211', N'2210,81', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697660', N'CLIPS N1 REDONDO 100UN 30MM', N'70', N'141', N'132,891', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1736423', N'MARCADOR PIZARRA DESECH. P/RED AZUL', N'205,87', N'189', N'186,138', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3703165', N'CORRECTOR LIQUIDO LAPIZ BLANCO', N'617', N'620', N'546,449', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'4058878', N'CORCHETERA SEMI IND B 310 BOSTITCH', N'3802,05', N'26032', N'17320,376', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2008124', N'VASO PLASTICO 200CC BLANCO 200UN', N'4148,34', N'3807', N'3589,221', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1968155', N'SERVILLETA COCKTAIL BLANCA 50UN', N'216', N'229', N'220,906', N'1', N'UNI   ')
GO
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1953616', N'CAFE INST. DESCAFEINADO DECAF 170GR', N'3487', N'3517', N'3490,274', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697680', N'GOMA DE BORRAR MEDIANA 7085', N'56', N'267', N'225,777', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2242607', N'GUIAS DE DESPACHO PARA F12 F.RETAIL', N'50', N'53,2', N'53,2', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2242608', N'GUIA DESPACHO INTERNA F.RETAIL', N'50', N'53,2', N'53,183', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'4058822', N'BOLSA ESTANTERIA 44X55', N'39', N'33', N'33', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'4058825', N'BOLSA ESTANTERIA 50X70', N'54', N'45', N'45', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'4929760', N'BOLSA LOCKER 50X70', N'326', N'274', N'274', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'4166157', N'BOLSA LOCKER 20X30', N'49', N'41', N'41', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'4166158', N'BOLSA LOCKER 35X40', N'82', N'69', N'68,966', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'4169303', N'BOLSA LOCKER 40X60', N'154', N'129', N'129', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1736112', N'ETI BLAN 30X30ZEBR TRAD ROL/8000', N'7797', N'6457,9', N'6457,9', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2941054', N'Cinta TransfTérmica (Zebra)102x450', N'4153', N'3773,7', N'3773,7', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2695163', N'ETIQ ROSADO 84MMX70MM', N'4', N'4,2', N'3,595', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2695136', N'ETIQ AMARILLA 84MMX70MM', N'42', N'4,2', N'3,588', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1736113', N'ETIQ BLAN 48X25TRADIS ROLL/5000', N'6239', N'5318,7', N'5318,7', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2695138', N'ETIQ CELESTE 84MMX70MM', N'42', N'3,84', N'3,323', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697827', N'DISPENSADOR SCOTCH', N'2023', N'1751', N'1750,989', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'4194844', N'ETI. POLITICA DEVOLUCION', N'63000', N'57149,7', N'57149,7', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3546721', N'ROLL ET.CIRCULAR 50MM VERDE 1000U', N'4641', N'3900', N'3900', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3546720', N'ROLL ET.CIRCULAR 50MM MORADO 1000U', N'3808', N'3291', N'3291', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697867', N'BOLSA USO INTERNO 25X50', N'31', N'25,91', N'25,908', N'800', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697837', N'VENTANAS AUTOADHESIVAS', N'26', N'26', N'26', N'1000', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697850', N'ETIQ.ADHES  F12', N'9', N'10,7', N'9,613', N'1000', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2680861', N'ETIQ VERDE AGUA 80MMX45MM', N'3', N'2,7', N'2,682', N'1800', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2695137', N'ETIQ NARANJA 80MMX70MM', N'42', N'3,84', N'3,526', N'2000', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2695155', N'ETIQ VERDE 84MMX70MM', N'4', N'4,8', N'3,875', N'2000', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697783', N'TARJETAS DE VISITA', N'4', N'4,2', N'3,785', N'2000', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2986823', N'Sensor adhesivo DR', N'21', N'13', N'13,036', N'5000', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1736219', N'LAZOS PLASTICOS', N'6', N'5', N'5', N'5000', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697844', N'KIT BIG TICKET BCO 84X70mm', N'4', N'4', N'3,531', N'6000', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2695139', N'ETIQ BEIGE 84MMX70MM', N'42', N'3,84', N'3,516', N'6000', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697843', N'KIT ETIQ BIG TICKET 80mmX45mm', N'2', N'2,2', N'2,019', N'9000', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2448375', N'KIT ETIQ NARANJA 80mx45mm', N'3', N'2,45', N'2', N'9000', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'5064216', N'BURBUJAS INFLADAS', N'135000', N'112500', N'112500', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'4370623', N'CAJA CARTON 40X30X30', N'381', N'326', N'319,068', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3619767', N'PAPELERO METAL REJ NEGRO 28ALX26AN', N'4182', N'3489', N'3285,703', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'4590815', N'CINTAS OKIDATA620', N'14875', N'12500', N'12500', N'3', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2680864', N'ETIQ CELESTE 80MMX45MM', N'3', N'2,45', N'2,45', N'1800', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'2680864', N'ETIQ CELESTE 80MMX45MM', N'3', N'2,45', N'2,45', N'1800', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'5097613', N'ANOTADOR C/APRETADOR MADERA OFICIO', N'1965', N'1965', N'1692', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'5109522', N'STRETCH FILM VERDE AUTOMATICO', N'30600', N'25500', N'25500', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697706', N'SACACORCHETE PALANCA METALICO', N'117', N'159', N'155,322', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1962131', N'REVOLVEDOR PLASTICO BOMBILLA 1000UN', N'11043', N'4116', N'4058,163', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697674', N'DESTACADOR BOLSILLO AMARILLO', N'95', N'111', N'109,092', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697670', N'CUAD.INDICE 100HJ MAT.7MM IND. ALFA', N'1079,33', N'1084', N'1069,364', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3536316', N'PLUMERO MULTICOLOR FIBRA', N'1757,63', N'1580', N'1544,716', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3671411', N'DESINFECTANTE AMB. 360CC', N'1924,23', N'1729', N'1707,319', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697726', N'MAGIC CLIP DISPENSADOR MEDIANO 1126', N'690', N'586', N'576,816', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697648', N'BLOCK CARTA PREP 7MM/80HJ BLANCO', N'561', N'663', N'638,557', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697722', N'MINAS 0.7MM HB', N'244', N'178', N'175,114', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697707', N'SACACORCHETE PINZA', N'217,77', N'200', N'196,092', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697700', N'NOTA ADH. 653 BLOCK 100HJ AMARILLO', N'103,53', N'95', N'98,708', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697694', N'MAGIC CLIP REPTO. CAJA 50UN 16MM', N'700', N'668', N'651,486', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697687', N'PORTAMINA 0.5MM PLASTICO C/GOMA', N'294', N'102', N'100,906', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697727', N'CALCULADORA ESCRITORIO 12DIG D 000', N'10923', N'3207', N'3123,634', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1953600', N'PILA ALCALINA AA 4UN DURACELL', N'1678', N'1818', N'1763,514', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1953599', N'PILA ALCALINA AAA 4UN DURACELL', N'117,81', N'1875', N'1839,018', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1953621', N'TÉ LIPTON HIERBAS SILVESTRES', N'648,55', N'595', N'576,65', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1953619', N'TE ROYAL CEYLAN CAJA 100UN', N'3267,74', N'2937', N'2906,614', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697657', N'CARPETA COLGANTE FLEJE PLA KRAF', N'141', N'131', N'126,272', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'3853132', N'BORRADOR PIZARRA 40X130X15MM', N'3802,05', N'665', N'1194,642', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'4067994', N'PIZARRA CORCHO 60x90', N'3802,05', N'15731', N'14724,455', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1953613', N'END ASPARTAMO 150UN NATURALIST', N'887', N'921', N'863,525', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697692', N'LIBRO ADM.ACTA 100HJ LINEAL FOLIADO', N'1406,58', N'1291', N'1257,789', N'1', N'UNI   ')
INSERT [dbo].[Materiales_Precio] ([REFERENCIA], [DESCRIPCION], [MPRECIO], [MCOSTO_RPSC], [MCOSTO_PRMD], [UnidadTranferencia], [CUNI_MEDD]) VALUES (N'1697702', N'PUNCH PIN C/SURTIDOS 50UN', N'95', N'158', N'159,98', N'1', N'UNI   ')
SET IDENTITY_INSERT [dbo].[Solicitud_m] ON 

INSERT [dbo].[Solicitud_m] ([id], [id_Solicitud], [codigo], [descripcionCC], [Usuario], [REFERENCIA], [DESCRIPCION], [Cantidad], [Estado], [Fecha_Ingreso], [Precio]) VALUES (645, 241, N'8484', N'Soporte sistemico', N'rcid', N'4166157', N'BOLSA LOCKER 20X30', 1, N'Pendiente', N'20-06-2016', 41)
INSERT [dbo].[Solicitud_m] ([id], [id_Solicitud], [codigo], [descripcionCC], [Usuario], [REFERENCIA], [DESCRIPCION], [Cantidad], [Estado], [Fecha_Ingreso], [Precio]) VALUES (646, 241, N'8484', N'Soporte sistemico', N'rcid', N'4166157', N'BOLSA LOCKER 20X30', 2, N'Pendiente', N'20-06-2016', 82)
INSERT [dbo].[Solicitud_m] ([id], [id_Solicitud], [codigo], [descripcionCC], [Usuario], [REFERENCIA], [DESCRIPCION], [Cantidad], [Estado], [Fecha_Ingreso], [Precio]) VALUES (647, 241, N'8484', N'Soporte sistemico', N'rcid', N'4166157', N'BOLSA LOCKER 20X30', 3, N'Pendiente', N'20-06-2016', 123)
INSERT [dbo].[Solicitud_m] ([id], [id_Solicitud], [codigo], [descripcionCC], [Usuario], [REFERENCIA], [DESCRIPCION], [Cantidad], [Estado], [Fecha_Ingreso], [Precio]) VALUES (648, 244, N'8398', N'Administracion Central CDA', N'rcid', N'4929760', N'BOLSA LOCKER 50X70', 1, N'En Proceso', N'20-06-2016', 274)
INSERT [dbo].[Solicitud_m] ([id], [id_Solicitud], [codigo], [descripcionCC], [Usuario], [REFERENCIA], [DESCRIPCION], [Cantidad], [Estado], [Fecha_Ingreso], [Precio]) VALUES (649, 244, N'8398', N'Administracion Central CDA', N'rcid', N'1953616', N'CAFE INST. DESCAFEINADO DECAF 170GR', 3, N'En Proceso', N'20-06-2016', 10386)
INSERT [dbo].[Solicitud_m] ([id], [id_Solicitud], [codigo], [descripcionCC], [Usuario], [REFERENCIA], [DESCRIPCION], [Cantidad], [Estado], [Fecha_Ingreso], [Precio]) VALUES (650, 244, N'8398', N'Administracion Central CDA', N'rcid', N'1697636', N'ACCOCLIP METALICO CAJA 50UN DORADO', 1, N'En Proceso', N'20-06-2016', 974)
SET IDENTITY_INSERT [dbo].[Solicitud_m] OFF
SET IDENTITY_INSERT [dbo].[Solicitud_Resumen] ON 

INSERT [dbo].[Solicitud_Resumen] ([id_Solicitud], [Usuario], [CC], [Estado], [Fecha], [PrecioTotal]) VALUES (241, N'rcid', N'8484', N'Pendiente', N'20-06-2016', N'246')
INSERT [dbo].[Solicitud_Resumen] ([id_Solicitud], [Usuario], [CC], [Estado], [Fecha], [PrecioTotal]) VALUES (242, N'rcid', N'8484', N'Pendiente', N'20-06-2016', N'246')
INSERT [dbo].[Solicitud_Resumen] ([id_Solicitud], [Usuario], [CC], [Estado], [Fecha], [PrecioTotal]) VALUES (243, N'rcid', N'8484', N'Pendiente', N'20-06-2016', N'246')
INSERT [dbo].[Solicitud_Resumen] ([id_Solicitud], [Usuario], [CC], [Estado], [Fecha], [PrecioTotal]) VALUES (244, N'rcid', NULL, NULL, NULL, NULL)
INSERT [dbo].[Solicitud_Resumen] ([id_Solicitud], [Usuario], [CC], [Estado], [Fecha], [PrecioTotal]) VALUES (245, N'rcid', NULL, NULL, NULL, NULL)
INSERT [dbo].[Solicitud_Resumen] ([id_Solicitud], [Usuario], [CC], [Estado], [Fecha], [PrecioTotal]) VALUES (246, N'rcid', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Solicitud_Resumen] OFF
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [Pass], [Email], [Tipo]) VALUES (5, N'Contabilidad', N'123', N' Contabilidad@falabella.cl', N'Contabilidad')
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [Pass], [Email], [Tipo]) VALUES (5, N'jpilcol', N'123', N'jpilcol@falabella.cl', N'Solicitante')
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [Pass], [Email], [Tipo]) VALUES (6, N'PDiaz', N'123', N'rcidj@falabella.cl', N'Gerente')
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [Pass], [Email], [Tipo]) VALUES (7, N'RValenzuela', N'123', N'rcidj@falabella.cl', N'Gerente')
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [Pass], [Email], [Tipo]) VALUES (21, N'dbeltran', N'123', N'dabeltran@Falabella.cl', N'Solicitante')
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [Pass], [Email], [Tipo]) VALUES (22, N'dbeltran1', N'123', N'dabeltran@Falabella.cl', N'Gerente')
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [Pass], [Email], [Tipo]) VALUES (8, N'ADuran', N'123', N'rcidj@falabella.cl', N'Gerente')
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [Pass], [Email], [Tipo]) VALUES (9, N'FUrrutia', N'123', N'rcidj@falabella.cl', N'Gerente')
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [Pass], [Email], [Tipo]) VALUES (10, N'ingSistema', N'123', N'rcidj@falabella.cl', N'Gerente')
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [Pass], [Email], [Tipo]) VALUES (11, N'DNuñez', N'123', N'rcidj@falabella.cl', N'Gerente')
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [Pass], [Email], [Tipo]) VALUES (12, N'GMarambio', N'123', N'rcidj@falabella.cl', N'Gerente')
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [Pass], [Email], [Tipo]) VALUES (13, N'MPucheta', N'123', N'rcidj@falabella.cl', N'Gerente')
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [Pass], [Email], [Tipo]) VALUES (2, N'rcid', N'123', N'rcidj@falabella.cl', N'Solicitante')
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [Pass], [Email], [Tipo]) VALUES (4, N'hcastellon', N'123', N'hcastellon@falabella.cl', N'Solicitante')
/****** Object:  StoredProcedure [dbo].[eliminarTablaDetalleUsuario]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[eliminarTablaDetalleUsuario]
@id int
AS
	SET NOCOUNT OFF;
DELETE FROM [dbo].[Solicitud_m]
OUTPUT deleted.*
WHERE [id_Solicitud] = @id;
GO
/****** Object:  StoredProcedure [dbo].[GrillaGerenteResumen]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GrillaGerenteResumen]
@user nvarchar(50)
as
SELECT        dbo.GrillaGerente.*
FROM            dbo.GrillaGerente where (nombre = @user)
GO
/****** Object:  StoredProcedure [dbo].[GrillaGerenteResumenPendiente]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GrillaGerenteResumenPendiente]
@user nvarchar(50)
as
SELECT       dbo.GrillaGerentePendiente.*
FROM            dbo.GrillaGerentePendiente where (nombre = @user)
GO
/****** Object:  StoredProcedure [dbo].[GrillaMateriales]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GrillaMateriales]
@user nvarchar(50)
as
SELECT id, id_Solicitud, codigo, descripcionCC, Usuario, REFERENCIA, DESCRIPCION, Cantidad, Estado, Fecha_Ingreso, Precio FROM Solicitud_m WHERE (Usuario = @user) and (Estado = N'En Proceso')
GO
/****** Object:  StoredProcedure [dbo].[GrillaMaterialesDetalle]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GrillaMaterialesDetalle]
@user nvarchar(50)
as
SELECT        dbo.Solicitud_Resumen.*
FROM            dbo.Solicitud_Resumen where (Usuario = @user)
GO
/****** Object:  StoredProcedure [dbo].[GrillaMaterialesDetalleFinal]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GrillaMaterialesDetalleFinal]
@id nvarchar(50)
as
SELECT        dbo.Solicitud_m.*
FROM            dbo.Solicitud_m where (id_Solicitud = @id)
GO
/****** Object:  StoredProcedure [dbo].[GrillaMaterialesDetallePendiente]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GrillaMaterialesDetallePendiente]
@user nvarchar(50)
as
SELECT        dbo.Solicitud_Resumen.*
FROM            dbo.Solicitud_Resumen where (Usuario = @user) and  (Estado = N'Pendiente')
GO
/****** Object:  StoredProcedure [dbo].[GrillaMaterialesDetallePendienteAprobar]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GrillaMaterialesDetallePendienteAprobar]
@id nvarchar(50)
as
SELECT        dbo.Solicitud_m.*
FROM            dbo.Solicitud_m where (Estado = N'Pendiente') and (id_Solicitud = @id)
GO
/****** Object:  StoredProcedure [dbo].[Ingreso_mat]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ingreso_mat]
(
	@Material nvarchar(50)
)
AS
	SET NOCOUNT OFF;
UPDATE       Solicitud_m
SET                Material = @Material
GO
/****** Object:  StoredProcedure [dbo].[ingresoTipo]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ingresoTipo]
(
	@usu nvarchar(50)
)
AS
	SET NOCOUNT ON;
SELECT        Tipo
FROM            Usuario
WHERE        (nombre = @usu)

GO
/****** Object:  StoredProcedure [dbo].[InsertID]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertID]
(
	@Usuario nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO Solicitud_m
                         (Usuario)
VALUES        (@Usuario)
GO
/****** Object:  StoredProcedure [dbo].[InsertMaterial]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertMaterial]
(
	@id_Solicitud int,
	@codigo nvarchar(50),
	@descripcionCC nvarchar(50),
	@Usuario nvarchar(50),
	@REFERENCIA nvarchar(50),
	@DESCRIPCION nvarchar(50),
	@Cantidad int,
	@Estado nvarchar(50),
	@fecha nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO Solicitud_m
                         (id_Solicitud, codigo, descripcionCC, Usuario, REFERENCIA, DESCRIPCION, Cantidad, Estado, Fecha_Ingreso)
VALUES        (@id_Solicitud,@codigo,@descripcionCC,@Usuario,@REFERENCIA,@DESCRIPCION,@Cantidad,@Estado, @fecha)
GO
/****** Object:  StoredProcedure [dbo].[InsertResumenUser]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertResumenUser]
(
	@Usuario nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [dbo].[Solicitud_Resumen] ([Usuario]) VALUES (@Usuario)
GO
/****** Object:  StoredProcedure [dbo].[InsertUsuario]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertUsuario]
(
	@Usuario nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO Solicitud_m
                         (Usuario)
VALUES        (@Usuario)
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Login]
(
	@usu nvarchar(50),
	@pas nvarchar(50)
)
AS
	SET NOCOUNT ON;
select nombre from Usuario where @usu = nombre and @pas = Pass

GO
/****** Object:  StoredProcedure [dbo].[modificarCC]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[modificarCC]

 @CC nvarchar(255)
 as
SELECT codigo
FROM   CentroCosto
where CentroCosto = @CC;
GO
/****** Object:  StoredProcedure [dbo].[modificarDescCC]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[modificarDescCC]
 @desc nvarchar(255)
 as
SELECT descripcion
FROM   CentroCosto
where CentroCosto = @desc;
GO
/****** Object:  StoredProcedure [dbo].[modificarDescrp]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[modificarDescrp]
  @Materiales nvarchar(255)
 as
SELECT   DESCRIPCION
FROM    dbo.[Listado Materiales]
where Materiales = @Materiales;


GO
/****** Object:  StoredProcedure [dbo].[modificarRef]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[modificarRef]

 @Materiales nvarchar(255)
 as
SELECT   REFERENCIA
FROM    dbo.[Listado Materiales]
where Materiales = @Materiales;


GO
/****** Object:  StoredProcedure [dbo].[MuestraCantidaProd]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MuestraCantidaProd]

 @Material nvarchar(255)
 as
SELECT [Por bulto] 
FROM  [dbo].[Listado Materiales]
where Materiales = @Material;
GO
/****** Object:  StoredProcedure [dbo].[PrecioTotal]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[PrecioTotal]

 @nombre nvarchar(255)
 as
SELECT Total
FROM  [dbo].[SumaPrecio]
where @nombre = Usuario
GO
/****** Object:  StoredProcedure [dbo].[seleccionarID]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[seleccionarID]
 @user nvarchar(255)
 as
SELECT  id_Solicitud
FROM   [dbo].[Solicitud_Resumen]
WHERE  (cc IS NULL) and Usuario = @user

GO
/****** Object:  StoredProcedure [dbo].[SelectPrecio]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SelectPrecio]
@nombre nvarchar(20)

as
SELECT [Valor Unitario]
FROM [dbo].[PrecioMaterialesVacios]
where (@nombre = Usuario) and (Precio IS NULL);
GO
/****** Object:  StoredProcedure [dbo].[UpdateActuaEstado]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateActuaEstado]

@id int
AS
	SET NOCOUNT OFF;
UPDATE      [dbo].[Solicitud_m]

SET         Estado = 'Aprobado'
 OUTPUT deleted.*
WHERE       (id_Solicitud = @id) AND (Estado = N'Pendiente')

GO
/****** Object:  StoredProcedure [dbo].[UpdateActuaEstadoEn_Compra]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateActuaEstadoEn_Compra]

@id int

AS
	SET NOCOUNT OFF;
UPDATE      [dbo].[Solicitud_m]

SET         Estado = 'En Compra'
 OUTPUT deleted.*
WHERE       (id_Solicitud = @id)
GO
/****** Object:  StoredProcedure [dbo].[UpdateActuaEstadoPara_Retirar]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateActuaEstadoPara_Retirar]

@id int
AS
	SET NOCOUNT OFF;
UPDATE      [dbo].[Solicitud_m]

SET         Estado = 'Retirar'
 OUTPUT deleted.*
WHERE       (id_Solicitud = @id)
GO
/****** Object:  StoredProcedure [dbo].[UpdateActuaRechazado]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[UpdateActuaRechazado]

@id int
AS
	SET NOCOUNT OFF;
UPDATE      [dbo].[Solicitud_m]

SET         Estado = 'Rechazado'
 OUTPUT deleted.*
WHERE       (id_Solicitud = @id) AND (Estado = N'Pendiente')

GO
/****** Object:  StoredProcedure [dbo].[UpdatePendiente]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdatePendiente]

@user nvarchar(20)
AS
	SET NOCOUNT OFF;
UPDATE      [dbo].[Solicitud_m]

SET         Estado = 'Pendiente'
 OUTPUT deleted.*
WHERE       (Usuario = @user)


GO
/****** Object:  StoredProcedure [dbo].[UpdatePrecio]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdatePrecio]



	
@precio nvarchar(20)
AS
	SET NOCOUNT OFF;
UPDATE      [dbo].[Solicitud_m]

SET    [Precio] = @precio
 OUTPUT deleted.*
WHERE  ([Precio] IS NULL)


GO
/****** Object:  StoredProcedure [dbo].[UpdateSolicitud_Resu]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateSolicitud_Resu]
(
	@CC nvarchar(20),
	@Estado nvarchar(20),
	@Fecha nvarchar(20),
	@Precio nvarchar(255)
)
AS
	SET NOCOUNT OFF;
UPDATE [dbo].[Solicitud_Resumen] 
 SET [CC] = @CC, [Estado] = @Estado, [Fecha] = @Fecha, [PrecioTotal] = @Precio
 OUTPUT deleted.*
 WHERE  (Estado IS NULL)
GO
/****** Object:  StoredProcedure [dbo].[UsuarioCorreo]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UsuarioCorreo]
 @User nvarchar(255)
 as
SELECT Email
FROM   [dbo].[Usuario]
where nombre = @User;
GO
/****** Object:  StoredProcedure [dbo].[UsuarioCorreoGerente]    Script Date: 20/06/2016 17:30:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UsuarioCorreoGerente]
 @CC nvarchar(255)
 as
SELECT Email
FROM  [dbo].[Centros_Costo]
where codigo = @CC;
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[9] 4[37] 2[27] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Centros_Costo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 3630
         Width = 3735
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CentroCosto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CentroCosto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[22] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Solicitud_m"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstadoAprobado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstadoAprobado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Solicitud_m"
            Begin Extent = 
               Top = 3
               Left = 49
               Bottom = 133
               Right = 258
            End
            DisplayFlags = 280
            TopColumn = 7
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstadoPendiente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstadoPendiente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Usuario"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gerente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Gerente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[37] 4[30] 2[27] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Usuario"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Centros_Costo"
            Begin Extent = 
               Top = 0
               Left = 267
               Bottom = 130
               Right = 476
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Solicitud_Resumen"
            Begin Extent = 
               Top = 2
               Left = 478
               Bottom = 132
               Right = 687
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GrillaGerente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GrillaGerente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Usuario"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Centros_Costo"
            Begin Extent = 
               Top = 6
               Left = 285
               Bottom = 136
               Right = 494
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Solicitud_Resumen"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GrillaGerentePendiente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GrillaGerentePendiente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[5] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Materiales"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 218
               Right = 330
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 4605
         Width = 3195
         Width = 2175
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Listado Materiales'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Listado Materiales'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Solicitud_m"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 164
               Right = 258
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Materiales"
            Begin Extent = 
               Top = 6
               Left = 285
               Bottom = 136
               Right = 519
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrecioMaterialesPendiente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrecioMaterialesPendiente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[14] 2[22] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Solicitud_m"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "Materiales"
            Begin Extent = 
               Top = 7
               Left = 298
               Bottom = 137
               Right = 532
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrecioMaterialesVacios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrecioMaterialesVacios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PrecioMaterialesPendiente"
            Begin Extent = 
               Top = 5
               Left = 42
               Bottom = 145
               Right = 418
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SumaPrecio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SumaPrecio'
GO
USE [master]
GO
ALTER DATABASE [BDproductos] SET  READ_WRITE 
GO
