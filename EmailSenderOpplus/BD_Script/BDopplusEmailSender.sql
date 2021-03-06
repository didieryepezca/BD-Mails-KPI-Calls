USE [master]
GO
/****** Object:  Database [PruebaC]    Script Date: 6/09/2021 13:59:48 ******/
CREATE DATABASE [PruebaC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PruebaC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\PruebaC.mdf' , SIZE = 1316928KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PruebaC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\PruebaC_log.ldf' , SIZE = 4286528KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PruebaC] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PruebaC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PruebaC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PruebaC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PruebaC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PruebaC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PruebaC] SET ARITHABORT OFF 
GO
ALTER DATABASE [PruebaC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PruebaC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PruebaC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PruebaC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PruebaC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PruebaC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PruebaC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PruebaC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PruebaC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PruebaC] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PruebaC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PruebaC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PruebaC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PruebaC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PruebaC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PruebaC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PruebaC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PruebaC] SET RECOVERY FULL 
GO
ALTER DATABASE [PruebaC] SET  MULTI_USER 
GO
ALTER DATABASE [PruebaC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PruebaC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PruebaC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PruebaC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [PruebaC]
GO
/****** Object:  User [repl]    Script Date: 6/09/2021 13:59:48 ******/
CREATE USER [repl] FOR LOGIN [repl] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OPPLUS\tc1labs]    Script Date: 6/09/2021 13:59:48 ******/
CREATE USER [OPPLUS\tc1labs] FOR LOGIN [OPPLUS\tc1labs] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OPPLUS\repl_sql]    Script Date: 6/09/2021 13:59:48 ******/
CREATE USER [OPPLUS\repl_sql] FOR LOGIN [OPPLUS\repl_sql] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OPPLUS\P036028]    Script Date: 6/09/2021 13:59:48 ******/
CREATE USER [OPPLUS\P036028] FOR LOGIN [OPPLUS\P036028] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OPPLUS\P035991]    Script Date: 6/09/2021 13:59:48 ******/
CREATE USER [OPPLUS\P035991] FOR LOGIN [OPPLUS\P035991] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OPPLUS\P035935]    Script Date: 6/09/2021 13:59:48 ******/
CREATE USER [OPPLUS\P035935] FOR LOGIN [OPPLUS\P035935] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [repl]
GO
ALTER ROLE [db_owner] ADD MEMBER [OPPLUS\tc1labs]
GO
ALTER ROLE [db_owner] ADD MEMBER [OPPLUS\repl_sql]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALTAS_MAIL_HISTORIAL]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALTAS_MAIL_HISTORIAL](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[terminal] [varchar](50) NULL,
	[titular] [varchar](500) NULL,
	[fecha_hora_alta_envio] [datetime] NULL,
	[estado] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Apellidos] [nvarchar](max) NULL,
	[Codigo] [nvarchar](max) NULL,
	[Nombres] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CITAS_MAIL_HISTORIAL]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CITAS_MAIL_HISTORIAL](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[dni] [varchar](50) NULL,
	[nombres] [varchar](500) NULL,
	[fecha_cita] [varchar](40) NULL,
	[hora_cita] [varchar](40) NULL,
	[banco] [varchar](300) NULL,
	[fecha_hora_cita_envio] [datetime] NULL,
	[estado] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DESEMBOLSO_CONVENIOS]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DESEMBOLSO_CONVENIOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NRO_EXPEDIENTE] [varchar](6) NULL,
	[CLIENTE_DOI] [varchar](9) NULL,
	[APE_PATERNO] [varchar](50) NULL,
	[APE_MATERNO] [varchar](50) NULL,
	[NOMBRES] [varchar](60) NULL,
	[CONVENIO] [varchar](60) NULL,
	[PRESTAMO] [varchar](25) NULL,
	[CODIGO_OFICINA] [varchar](50) NULL,
	[NOMBRE_OFICINA] [varchar](100) NULL,
	[CORREO_GERENTE] [varchar](60) NULL,
	[CORREO_SUBGERENTE] [varchar](60) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ALTA]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ALTA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TERMINAL] [nvarchar](255) NULL,
	[TITULAR] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ATTO_ASESORES]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ATTO_ASESORES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DNI] [varchar](8) NULL,
	[NOMBRES] [varchar](50) NULL,
	[ESTADO] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ATTO_CONTROL1]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ATTO_CONTROL1](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CODIGO_CENTRAL] [varchar](30) NULL,
	[NRO_DOCUMENTO] [varchar](30) NULL,
	[OPERADOR] [varchar](30) NULL,
	[FECHA_H] [date] NULL,
	[DURACION_TOTAL] [int] NULL,
	[ID_CAMPO] [int] NULL,
	[TIPO_GESTION] [varchar](80) NULL,
	[NEGOCIO] [varchar](80) NULL,
	[PRODUCTO_SERVICIO] [varchar](80) NULL,
	[PRODUCTO_SERVICIO_DETALLE] [varchar](80) NULL,
	[ACCION] [varchar](100) NULL,
	[OBSERVACION] [varchar](100) NULL,
	[TELEFONO] [varchar](50) NULL,
	[TIPO_TELEFONO] [varchar](50) NULL,
	[NRO_INTENTOS] [int] NULL,
	[FECHA] [varchar](30) NULL,
	[HORA] [varchar](30) NULL,
	[ANIO] [int] NULL,
	[MES] [varchar](30) NULL,
	[GESTION_OP] [varchar](150) NULL,
	[ASESOR] [varchar](50) NULL,
	[ESTADO_ASESOR] [varchar](30) NULL,
	[CONTRATO] [varchar](30) NULL,
	[FEC_ALTA_CONTRATO] [date] NULL,
	[FEC_ACTIVACION] [date] NULL,
	[RESPONSABLE] [varchar](30) NULL,
	[FEC_ENVIO_CRM] [date] NULL,
	[GESTION_CRM] [varchar](45) NULL,
	[FEC_GESTION_CRM] [date] NULL,
	[FEC_1CONSUMO_TC] [date] NULL,
	[FEC_BAJA_TC] [date] NULL,
	[FEC_BAJA_CRM] [date] NULL,
	[MOTIVO_BAJA] [varchar](80) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ATTO_KPI_DIARIO]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ATTO_KPI_DIARIO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DIA] [date] NULL,
	[MES] [varchar](10) NULL,
	[ANIO] [int] NULL,
	[TMO_DIA] [decimal](15, 2) NULL,
	[TMO_CE_DIA] [decimal](15, 2) NULL,
	[TMO_CNE_DIA] [decimal](15, 2) NULL,
	[TMO_NC_DIA] [decimal](15, 2) NULL,
	[CE_DIA] [int] NULL,
	[CNE_DIA] [int] NULL,
	[NC_DIA] [int] NULL,
	[TOTAL_MARCACIONES_DIA] [int] NULL,
	[CONTACTABILIDAD_DIA] [decimal](15, 2) NULL,
	[EFECTIVIDAD_DIA] [decimal](15, 2) NULL,
	[BASE] [int] NULL,
	[INTENSIDAD_BASE] [decimal](15, 2) NULL,
	[Z_DURACION_DIA] [decimal](15, 2) NULL,
	[Z_DURACION_HORAS_DIA] [decimal](15, 2) NULL,
	[PRODUCTIVIDAD_DIA] [decimal](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ATTO_KPI_MENSUAL]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ATTO_KPI_MENSUAL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MES] [varchar](10) NULL,
	[ANIO] [int] NULL,
	[TMO_MES] [decimal](18, 2) NULL,
	[TMO_CE_MES] [decimal](18, 2) NULL,
	[TMO_CNE_MES] [decimal](18, 2) NULL,
	[TMO_NC_MES] [decimal](18, 2) NULL,
	[CE] [int] NULL,
	[CNE] [int] NULL,
	[NC] [int] NULL,
	[TOTAL_MARCACIONES] [int] NULL,
	[CONTACTABILIDAD] [decimal](18, 2) NULL,
	[EFECTIVIDAD] [decimal](18, 2) NULL,
	[BASE_MENSUAL] [int] NULL,
	[INTENSIDAD_BASE_MENSUAL] [decimal](18, 2) NULL,
	[Z_DURACION] [decimal](18, 2) NULL,
	[Z_DURACION_HORAS] [decimal](18, 2) NULL,
	[PRODUCTIVIDAD] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ATTO_PROGRESO]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ATTO_PROGRESO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[COD_CENTRAL] [varchar](10) NULL,
	[NRO_DOCUMENTO] [varchar](10) NULL,
	[CONTRATO] [varchar](25) NULL,
	[FECHA_ALTA_CONTRATO] [date] NULL,
	[FECHA_ACTIVACION] [date] NULL,
	[RESPONSABLE] [varchar](20) NULL,
	[FECHA_ENVIO_CRM] [date] NULL,
	[GESTION_CRM] [varchar](30) NULL,
	[FECHA_GESTION_CRM] [date] NULL,
	[FECHA_1CONSUMO_TC] [date] NULL,
	[FECHA_BAJA_TC] [date] NULL,
	[FECHA_BAJA_CRM] [date] NULL,
	[MOTIVO_BAJA] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ATTO_VOLCADOS]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ATTO_VOLCADOS](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[COD_CENTRAL] [varchar](10) NULL,
	[NRO_DOCUMENTO] [varchar](10) NULL,
	[OPERADOR] [varchar](10) NULL,
	[FECHA_HORA] [datetime] NULL,
	[DURACION] [int] NULL,
	[CAMPO_ID] [int] NULL,
	[TIPO_GESTION] [varchar](50) NULL,
	[NEGOCIO] [varchar](50) NULL,
	[PRODUCTO_SERVICIO] [varchar](50) NULL,
	[PRODUCTO_SERVICIO_DETALLE] [varchar](50) NULL,
	[ACCION] [varchar](100) NULL,
	[OBSERVACION] [varchar](100) NULL,
	[TELEFONO] [varchar](50) NULL,
	[TIPO_TELEFONO] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CITAS]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CITAS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PERIODO] [varchar](100) NULL,
	[FECHA_RECEPCION] [nvarchar](max) NULL,
	[DNI] [varchar](100) NULL,
	[NOMBRE_COMPLETO] [nvarchar](max) NULL,
	[TIPO] [varchar](100) NULL,
	[BANCO_ACREEDOR] [varchar](100) NULL,
	[NUMERO_PRESTAMO] [varchar](100) NULL,
	[MONEDA] [varchar](100) NULL,
	[MONTO_CANCELAR] [varchar](20) NULL,
	[CELULAR] [nvarchar](max) NULL,
	[FUVEX] [varchar](100) NULL,
	[CONVENIO] [nvarchar](100) NULL,
	[VENDEDOR] [nvarchar](100) NULL,
	[FECHA_CITA] [varchar](150) NULL,
	[HORA_CITA] [varchar](150) NULL,
	[DIRECCION_BANCO] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CITAS_ARCHIVOS]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CITAS_ARCHIVOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_ARCHIVO] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_HISTORIAL_CARGAS_ATTO]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_HISTORIAL_CARGAS_ATTO](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](50) NULL,
	[archivo] [varchar](max) NULL,
	[fecha] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_HISTORIAL_CARGAS_CSV]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_HISTORIAL_CARGAS_CSV](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](50) NULL,
	[archivo] [varchar](max) NULL,
	[fecha] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 6/09/2021 13:59:49 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/09/2021 13:59:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 6/09/2021 13:59:49 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 6/09/2021 13:59:49 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 6/09/2021 13:59:49 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 6/09/2021 13:59:49 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/09/2021 13:59:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[MAIL_DESEMBOLSOS_CONVENIOS]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===============================================================================
-- Author:		Didier Yépez Cabanillas
-- Create date: 01/07/2021
-- Description:	Procedure para enviar mails a gerente de oficinas por desembolso de convenios 
-- ===============================================================================
CREATE PROCEDURE [dbo].[MAIL_DESEMBOLSOS_CONVENIOS]
	
AS

BEGIN


DECLARE @MAX_OFCS int;
DECLARE @CONTADOR_OFCS int = 1;


DECLARE @CODIGO_OFICINA_DISTINTA varchar(4)


DECLARE @CORREO_GERENTE varchar(60);
DECLARE @CORREO_SUBGERENTE VARCHAR(60);
DECLARE @DESTINATARIOS NVARCHAR(200);



DECLARE @FECHA_HOY DATE = (SELECT CONVERT(DATE,GETDATE()))



if  DATENAME(dw, GETDATE())='Monday'
--if  DATENAME(dw, '2021-06-29')='Monday'
	begin 
	set @FECHA_HOY  = DATEADD(DD, -3, GETDATE());	
	--set @FECHA_A  = DATEADD(DD, -3, '2020/06/16');
	end 
else 
	begin 
	set @FECHA_HOY  = DATEADD(DD, -1, GETDATE());	
	--set @FECHA_A  = DATEADD(DD, -1, '2020/06/16');	
	end


----------------------------------- MAIL
DECLARE @body VARCHAR(max);
DECLARE @subject VARCHAR(max);
DECLARE @ERROR VARCHAR(max);
DECLARE @enlace varchar(255)

DECLARE @enlace_error varchar(255) = '';

CREATE TABLE #OFICINAS_UNICAS(
ID INT IDENTITY(1,1) NOT NULL,
CODIGO VARCHAR(50) NULL
)

CREATE TABLE #MAIL(	
	[ID] INT IDENTITY(1,1) NOT NULL,
	[NRO_EXP] [varchar](50) NULL,
	[CLI_DOI] [varchar](50) NULL,
	[APE_PAT] [varchar](50) NULL,
	[APE_MAT] [varchar](50) NULL,
	[NOMBRES] [varchar](50) NULL,
	[CONV] [varchar](60) NULL,
	[PREST] [varchar](50) NULL,
	[COD_OF] [varchar](50) NULL,
	[NOMB_OF] [varchar](100) NULL,
	[CORREO_GERENTE] [varchar](60) NULL,
	[CORREO_SUBGERENTE] [varchar](60) NULL
)

INSERT INTO #OFICINAS_UNICAS
SELECT DISTINCT LTRIM(RTRIM(CODIGO_OFICINA)) FROM DESEMBOLSO_CONVENIOS 
--WHERE CODIGO_OFICINA IN ('0130','0480')

SET @MAX_OFCS = (SELECT COUNT(ID) FROM #OFICINAS_UNICAS)
print '------------------------------------------------'
print  ' MAILS ENVIADOS: ' + CONVERT(VARCHAR,@MAX_OFCS) 
print '------------------------------------------------'

WHILE @CONTADOR_OFCS <= @MAX_OFCS
BEGIN

SET @CODIGO_OFICINA_DISTINTA = (SELECT CODIGO FROM #OFICINAS_UNICAS WHERE ID = @CONTADOR_OFCS)


DELETE FROM #MAIL



INSERT INTO #MAIL 
SELECT NRO_EXPEDIENTE, CLIENTE_DOI, APE_PATERNO, APE_MATERNO, NOMBRES, CONVENIO, PRESTAMO, CODIGO_OFICINA,
NOMBRE_OFICINA, CORREO_GERENTE, CORREO_SUBGERENTE
FROM DESEMBOLSO_CONVENIOS
WHERE CODIGO_OFICINA = @CODIGO_OFICINA_DISTINTA

-------------------------------------------------//

SET @CORREO_GERENTE = (SELECT TOP 1 CORREO_GERENTE FROM #MAIL WHERE COD_OF = @CODIGO_OFICINA_DISTINTA )
SET @CORREO_SUBGERENTE = (SELECT TOP 1 CORREO_SUBGERENTE FROM #MAIL WHERE COD_OF = @CODIGO_OFICINA_DISTINTA )


SET @DESTINATARIOS = (SELECT CONCAT(@CORREO_GERENTE, ';', @CORREO_SUBGERENTE))
------------------------------------------------------------------------------------------
set @Body = '
<html>

<head>
<style>
    table {
        border-collapse: collapse;
    }
    table, th, td {
        border: 1px solid black;
		width:auto;
    }
    td {
        border: solid black 1px;
        padding-left: 5px;
        padding-right: 5px;
        padding-top: 1px;
        padding-bottom: 1px;
        font-size: 11pt;
      }
	
</style>
</head>

<body>
<br />
Estimados,
<br />
<strong>Buenas días, a continuación adjuntamos listado de nuevos préstamos convenios para las acciones de vinculación.</strong>
<br />
<br />

<table border="1" style="table-layout:fixed;" width="100%;font-size:11pt;font-family:Calibri;width:0px;border-collapse:collapse;border:none">
  <thead>
    <tr style="height:19px">

        <td style="border-width:2px 1px;border-style:solid;border-color:rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:middle;background-color:rgb(27, 178, 31);font-weight:bold;color:rgb(255,255,255);text-align:center">
		Nro. Exp:
		</td>            

		<td style="border-width:2px 1px;border-style:solid;border-color:rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:middle;background-color:rgb(27, 178, 31);font-weight:bold;color:rgb(255,255,255);text-align:center">
		Cliente DOI:
		</td>
         
		<td style="border-width:2px 1px;border-style:solid;border-color:rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:middle;background-color:rgb(27, 178, 31);font-weight:bold;color:rgb(255,255,255);text-align:center">
		Nombres:
		</td> 
       
	   <td style="border-width:2px 1px;border-style:solid;border-color:rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:middle;background-color:rgb(27, 178, 31);font-weight:bold;color:rgb(255,255,255);text-align:center">
		Convenio:
		</td>	

		<td style="border-width:2px 1px;border-style:solid;border-color:rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:middle;background-color:rgb(27, 178, 31);font-weight:bold;color:rgb(255,255,255);text-align:center">
		Préstamo:
		</td>	
		<td style="border-width:2px 1px;border-style:solid;border-color:rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:middle;background-color:rgb(27, 178, 31);font-weight:bold;color:rgb(255,255,255);text-align:center">
		Código Oficina:
		</td>	
		<td style="border-width:2px 1px;border-style:solid;border-color:rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:middle;background-color:rgb(27, 178, 31);font-weight:bold;color:rgb(255,255,255);text-align:center">
		Nombre Oficina:
		</td>	
    </tr>
	</thead>

	<tbody>
	' +
CAST(
        (SELECT td = NRO_EXP, '',
                td = CLI_DOI, '',
                td = CONCAT(APE_PAT,' ',APE_MAT,' ', NOMBRES), '',
				td = CONV, '',
				td = PREST, '',
				td = COD_OF, '',
				td = NOMB_OF, ''
        FROM #MAIL		
        FOR XML PATH('tr'), TYPE   
        ) AS nvarchar(max)
    ) +
  N'
	</tbody>
</table>

</body>


<br />

Saludos,

	<div class="footer">
			<br />                        
            <br />                     
			<br />                       
            <img src="https://www.bbvatcomunico.pe/wp-content/uploads/2020/06/quedateencasa-1.jpg" width="230" height="80" />                                     
                                  
			<br />                               
            <font color="#2dcccd"face="Arial, sans-serif"> 
				<span style="font-size:14px"><b>Creando Oportunidades</b></span> 
			</font>

			<br />
			<br />
			<br />

			<font color="#2dcccd"face="Arial, sans-serif"> 
				<span style="font-size:14px"><b>Transformation & Data</b></span> 
			</font>

			<br />
            <span>Av. República de Panamá 3055 - Piso 5 Hall 1, San Isidro, Lima.</span>                                                     
            <br />                  
                                        
            <p>________________________________________________________</p>
										
            <span> Este correo electrónico fue enviado desde <strong> OPPLUS - Grupo BBVA</strong></span>					
			<br />
            <span>2021 OPPLUS Operaciones y Servicios Sucursal Perú.</span>
			<br />
            <span>Av. República de Panamá 3680. Of 101 - San Isidro, Lima.</span> 										
			<br />
			<span>Todos los Derechos Reservados.</span>
			<br />      
    </div>
</html>
';
--------------------------------------------------------------------------	
	
	SET @subject = 'Alertas Desembolsos Convenios - Sinergias Vinculación' + ' ' + CONVERT(VARCHAR, @FECHA_HOY);
	EXEC msdb.dbo.Sp_send_dbmail
		@profile_name =  'Soporte Opplus',					
		--@recipients = 'didier.yepez@opplus.bbva.com',
		--@recipients = 'bonnie.varela@opplus.bbva.com;didier.yepez@opplus.bbva.com;katherine.goicochea.bravo@opplus.bbva.com',
		@recipients = @DESTINATARIOS,			
		----@copy_recipients = 'henry.casanova@bbva.com;gbarreto@bbva.comc;katherine.goicochea.bravo@opplus.bbva.com',
		--@blind_copy_recipients = 'didier.yepez@opplus.bbva.com',
		@body = @body,
		@body_format ='HTML',
		@subject = @subject,
		@importance ='HIGH'
		--@file_attachments=@adjunto	

	--PRINT @CORREO_GERENTE
	--PRINT @CORREO_SUBGERENTE
	--PRINT @FECHA_HOY
			
	
	SET @CONTADOR_OFCS = @CONTADOR_OFCS+1;
END ----------- END WHILE OFICINAS


--select * from #MAIL

END
GO
/****** Object:  StoredProcedure [dbo].[SUBIR_DESEMBOLSOS_CONVENIO]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================================
-- Author:		didier yepez cabanillas
-- Create date: 01/07/2021
-- Description:	Procedure cargar data mails de desembolso convenios
-- ======================================================================

CREATE PROCEDURE [dbo].[SUBIR_DESEMBOLSOS_CONVENIO]
( 
@archivo varchar(150)
)

AS

BEGIN

DECLARE @path1 varchar(100) = 'C:\AFP\' +@archivo +'.csv';
DECLARE @SQL_BULK VARCHAR(MAX)

CREATE TABLE #DESEMBOLSOS(	
	[NRO_EXPEDIENTE] [varchar](6) NULL,
	[CLIENTE_DOI] [varchar](9) NULL,
	[APE_PATERNO] [varchar](50) NULL,
	[APE_MATERNO] [varchar](50) NULL,
	[NOMBRES] [varchar](50) NULL,
	[CONVENIO] [varchar](60) NULL,
	[PRESTAMO] [varchar](25) NULL,
	[CODIGO_OFICINA] [varchar](50) NULL,
	[NOMBRE_OFICINA] [varchar](100) NULL,
	[CORREO_GERENTE] [varchar](60) NULL,
	[CORREO_SUBGERENTE] [varchar](60) NULL
)

-------------------------
		SET @SQL_BULK = 'BULK INSERT #DESEMBOLSOS FROM ''' + @path1 + ''' WITH
				(
				FIRSTROW=2,
				FIELDTERMINATOR = '';'',
				ROWTERMINATOR = ''\n''  
				)'

		EXEC (@SQL_BULK) --¬
-------------------------


delete from DESEMBOLSO_CONVENIOS

insert into DESEMBOLSO_CONVENIOS
select * FROM #DESEMBOLSOS
WHERE NRO_EXPEDIENTE IS NOT NULL



SELECT * FROM DESEMBOLSO_CONVENIOS


END
GO
/****** Object:  StoredProcedure [dbo].[USP_ALTAS_ENVIAR]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Didier Yepez
-- Create date: 22/06/2021
-- Description:	Procedure para enviar las actas de los mails.
-- =============================================
CREATE PROCEDURE [dbo].[USP_ALTAS_ENVIAR]

AS 

BEGIN 


DECLARE @MAX INT;
DECLARE @CONTADOR INT = 1;

DECLARE @TITULAR VARCHAR (MAX)
DECLARE @TERMINAL VARCHAR (MAX)

DECLARE @adjunto varchar(max) = '';

DECLARE @body VARCHAR(max);
DECLARE @subject VARCHAR(max);


DECLARE @FICHA_COUNT INT
DECLARE @CERTI_COUNT INT
DECLARE @PLA_COUNT INT

DECLARE @FICHA VARCHAR(100)
DECLARE @CERTIFICADO VARCHAR(100)
DECLARE @PLA VARCHAR(100)





CREATE TABLE #FICHAS(
NOMBRE_FICHA VARCHAR(100)
)

INSERT INTO #FICHAS
EXEC XP_CMDSHELL 'dir /B "C:\afp\FICHAS\*.xlsx"'


CREATE TABLE #CERTIFICADO_BANCARIO(
NOMBRE_CERTIBANC VARCHAR(100)
)

INSERT INTO #CERTIFICADO_BANCARIO
EXEC XP_CMDSHELL 'dir /B "C:\afp\CERTIFICADO BANCARIO\*.pdf"'


CREATE TABLE #PLA(
NOMBRE_PLA VARCHAR(100)
)

INSERT INTO #PLA
EXEC XP_CMDSHELL 'dir /B "C:\afp\PLA\*.pdf"'



CREATE TABLE #MAIL
( Id int identity(1,1) PRIMARY KEY NOT NULL,
  TERMINAL varchar(255) NULL,
  TITULAR varchar(255) NULL
);


INSERT #MAIL 
SELECT TERMINAL, TITULAR
FROM  TB_ALTA


--SELECT NOMBRE_PLA FROM #PLA

SET @MAX = (SELECT COUNT(Id) FROM #MAIL)

-----------------------------// WHILE CORRECCION DATA
WHILE @CONTADOR <= @MAX
BEGIN
	
	SET @TERMINAL = (SELECT LTRIM(RTRIM(TERMINAL)) FROM #MAIL WHERE Id=@CONTADOR)
	SET @TITULAR = (SELECT LTRIM(RTRIM(TITULAR)) FROM #MAIL WHERE Id=@CONTADOR)
	---------------------------------//		

	SET @FICHA = (SELECT NOMBRE_FICHA FROM #FICHAS WHERE SUBSTRING(RIGHT(NOMBRE_FICHA,9),0,5) = @TERMINAL)	
	SET @CERTIFICADO = (SELECT NOMBRE_CERTIBANC FROM #CERTIFICADO_BANCARIO WHERE LEFT(NOMBRE_CERTIBANC,CHARINDEX('.', NOMBRE_CERTIBANC) - 1) = @TITULAR)
	SET @PLA = (SELECT NOMBRE_PLA FROM #PLA WHERE LEFT(NOMBRE_PLA,CHARINDEX('.', NOMBRE_PLA) - 1) = @TITULAR)

	

	--------------------------------------------------------------------------// COMPROBAR FICHAS
	SET @FICHA_COUNT = (SELECT COUNT(NOMBRE_FICHA) FROM #FICHAS WHERE SUBSTRING(RIGHT(NOMBRE_FICHA,9),0,5) = @TERMINAL)	
	IF(@FICHA_COUNT > 0)
	BEGIN	

	PRINT @FICHA		

	END
	ELSE
	BEGIN 	
	
		INSERT INTO ALTAS_MAIL_HISTORIAL
		VALUES(@TERMINAL,@TITULAR+ '.xlsx', GETDATE(), 'ERROR')  
		
		DELETE FROM #MAIL
		WHERE Id = @CONTADOR
		
	END


	--------------------------------------------------------------------------// COMPROBAR CERTIFICADOS BANCARIOS5

	SET @CERTI_COUNT = (SELECT COUNT(NOMBRE_CERTIBANC) FROM #CERTIFICADO_BANCARIO WHERE LEFT(NOMBRE_CERTIBANC,CHARINDEX('.', NOMBRE_CERTIBANC) - 1) = @TITULAR)	
	IF(@CERTI_COUNT > 0)
	BEGIN		
		
		PRINT @CERTIFICADO

	END
	ELSE
	BEGIN 

		INSERT INTO ALTAS_MAIL_HISTORIAL
		VALUES(@TERMINAL,@TITULAR + '.pdf // REVISAR CERTIFICADO BANCARIO', GETDATE(), 'ERROR')  
		
		DELETE FROM #MAIL
		WHERE Id = @CONTADOR
		

	END

	--------------------------------------------------------------------------// COMPROBAR PLA
	SET @PLA_COUNT = (SELECT COUNT(NOMBRE_PLA) FROM #PLA WHERE LEFT(NOMBRE_PLA,CHARINDEX('.', NOMBRE_PLA) - 1) = @TITULAR)
	IF(@PLA_COUNT > 0)
	BEGIN
		
		PRINT @PLA

	END
	ELSE
	BEGIN 

		INSERT INTO ALTAS_MAIL_HISTORIAL
		VALUES(@TERMINAL,@TITULAR + '.pdf // REVISAR PLA', GETDATE(), 'ERROR')  
		
		DELETE FROM #MAIL
		WHERE Id = @CONTADOR


	END



	SET @CONTADOR=@CONTADOR+1
END




SET @CONTADOR = 1;

-----------------------------// WHILE EMAIL
WHILE @CONTADOR <= @MAX
BEGIN


	SET @TITULAR = (SELECT LTRIM(RTRIM(TITULAR)) FROM #MAIL WHERE Id=@CONTADOR)
	SET @TERMINAL = (SELECT LTRIM(RTRIM(TERMINAL)) FROM #MAIL WHERE Id=@CONTADOR)
	
	SET @adjunto ='';
	SET @adjunto = @adjunto + 'C:\\afp\FICHAS\Alta - Modificacion Proveedores GPS - '+@TITULAR+ ' ' + RIGHT(@TERMINAL, 4)+'.xlsx;' + 'C:\\afp\PLA\'+@TITULAR+'.pdf;' + 'C:\\afp\CERTIFICADO BANCARIO\'+@TITULAR+'.pdf' ; 
	
	SET @subject = 'Alta de Proveedor - ' + @TITULAR + '-' + RIGHT(@TERMINAL, 4);
----			
------------------------------------------------------------------------------

set @Body = '
<html>
  <head>
    <meta name="viewport" content="width=device-width" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Simple Transactional Email</title>
    <style>
      /* -------------------------------------
          GLOBAL RESETS
      ------------------------------------- */
      img {
        border: none;
        -ms-interpolation-mode: bicubic;
        max-width: 100%; }

      body {
        background-color: #ffffff;  
        font-family: sans-serif;
        -webkit-font-smoothing: antialiased;
        font-size: 14px;
        line-height: 1.4;
        margin: 0;
        padding: 0;
        -ms-text-size-adjust: 100%;
        -webkit-text-size-adjust: 100%; }

      table {
        border-collapse: separate;
        mso-table-lspace: 0pt;
        mso-table-rspace: 0pt;
        width: 100%; }
        table td {
          font-family: sans-serif;
          font-size: 14px;
          vertical-align: top; }

      /* -------------------------------------
          BODY & CONTAINER
      ------------------------------------- */

      .body {
        background-color: #ffffff;
        width: 100%; }

      /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */
      .container {
        display: block;
        Margin: 0 auto !important;
        /* makes it centered */
        max-width: 580px;
        padding: 10px;
        width: 580px; }

      /* This should also be a block element, so that it will fill 100% of the .container */
      .content {
        box-sizing: border-box;
        display: block;
        Margin: 0 auto;
        max-width: 580px;
        padding: 10px; }

      /* -------------------------------------
          HEADER, FOOTER, MAIN
      ------------------------------------- */
      .main {
        background: #1f7a91;
        border-radius: 3px;
        width: 100%; }

      .wrapper {
        box-sizing: border-box;
        padding: 20px; }

      .content-block {
        padding-bottom: 10px;
        padding-top: 10px;
      }

      .footer {
        clear: both;
        Margin-top: 10px;
        text-align: center;
        width: 100%; }
        .footer td,
        .footer p,
        .footer span,
        .footer a {
          color: #999999;
          font-size: 12px;
          text-align: center; }

      /* -------------------------------------
          TYPOGRAPHY
      ------------------------------------- */
      h1,
      h2,
      h3,
      h4 {
        color: #ffffff;
        font-family: sans-serif;
        font-weight: 400;
        line-height: 1.4;
        margin: 0;
        Margin-bottom: 30px; }

      h1 {
        font-size: 35px;
        font-weight: 300;
       
        text-transform: capitalize; }

      p,
      ul,
      ol {
        font-family: sans-serif;
        font-size: 14px;
        font-weight: normal;
        margin: 0;
        Margin-bottom: 15px;
		 color: #ffffff;
		
		 }
        p li,
        ul li,
        ol li {
          list-style-position: inside;
          margin-left: 5px;
	
		   }

      a {
        color: #3498db;
        text-decoration: underline; }

      /* -------------------------------------
          BUTTONS
      ------------------------------------- */
      .btn {
        box-sizing: border-box;
        width: 100%; }
        .btn > tbody > tr > td {
          padding-bottom: 15px; }
        .btn table {
          width: auto; }
        .btn table td {
          background-color: #ffffff;
          border-radius: 5px;
          text-align: center; }
        .btn a {
          background-color: #ffffff;
          border: solid 1px #3498db;
          border-radius: 5px;
          box-sizing: border-box;
          color: #3498db;
          cursor: pointer;
          display: inline-block;
          font-size: 14px;
          font-weight: bold;
          margin: 0;
          padding: 12px 25px;
          text-decoration: none;
          text-transform: capitalize; }

      .btn-primary table td {
        background-color: #3498db; }

      .btn-primary a {
        background-color: #3498db;
        border-color: #3498db;
        color: #ffffff; }

      /* -------------------------------------
          OTHER STYLES THAT MIGHT BE USEFUL
      ------------------------------------- */
      .last {
        margin-bottom: 0; }

      .first {
        margin-top: 0; }

      .align-center {
        text-align: center; }

      .align-right {
        text-align: right; }

      .align-left {
        text-align: left; }

      .clear {
        clear: both; }

      .mt0 {
        margin-top: 0; }

      .mb0 {
        margin-bottom: 0; }

      .preheader {
        color: transparent;
        display: none;
        height: 0;
        max-height: 0;
        max-width: 0;
        opacity: 0;
        overflow: hidden;
        mso-hide: all;
        visibility: hidden;
        width: 0; }

      .powered-by a {
        text-decoration: none; }

      hr {
        border: 0;
        border-bottom: 1px solid #f6f6f6;
        Margin: 20px 0; }

      /* -------------------------------------
          RESPONSIVE AND MOBILE FRIENDLY STYLES
      ------------------------------------- */
      @media only screen and (max-width: 620px) {
        table[class=body] h1 {
          font-size: 28px !important;
          margin-bottom: 10px !important; }
        table[class=body] p,
        table[class=body] ul,
        table[class=body] ol,
        table[class=body] td,
        table[class=body] span,
        table[class=body] a {
          font-size: 16px !important; }
        table[class=body] .wrapper,
        table[class=body] .article {
          padding: 10px !important; }
        table[class=body] .content {
          padding: 0 !important; }
        table[class=body] .container {
          padding: 0 !important;
          width: 100% !important; }
        table[class=body] .main {
          border-left-width: 0 !important;
          border-radius: 0 !important;
          border-right-width: 0 !important; }
        table[class=body] .btn table {
          width: 100% !important; }
        table[class=body] .btn a {
          width: 100% !important; }
        table[class=body] .img-responsive {
          height: auto !important;
          max-width: 100% !important;
          width: auto !important; }}

      /* -------------------------------------
          PRESERVE THESE STYLES IN THE HEAD
      ------------------------------------- */
      @media all {
        .ExternalClass {
          width: 100%; }
        .ExternalClass,
        .ExternalClass p,
        .ExternalClass span,
        .ExternalClass font,
        .ExternalClass td,
        .ExternalClass div {
          line-height: 100%; }
        .apple-link a {
          color: inherit !important;
          font-family: inherit !important;
          font-size: inherit !important;
          font-weight: inherit !important;
          line-height: inherit !important;
          text-decoration: none !important; }
        .btn-primary table td:hover {
          background-color: #34495e !important; }
        .btn-primary a:hover {
          background-color: #34495e !important;
          border-color: #34495e !important; } }

    </style>
  </head>
  <body class="">
    <table border="0" cellpadding="0" cellspacing="0" class="body">
      <tr>
        <td>&nbsp;</td>
        <td class="container">
          <div class="content">

            <!-- START CENTERED WHITE CONTAINER -->
            <span class="preheader">Encuesta de Atención.</span>
            <table class="main">

              <!-- START MAIN CONTENT AREA -->
              <tr>
                <td class="wrapper">
                  <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td>
                       <h2>Estimados señores:</h2>
                        <p>
Agradeceremos su gentil apoyo con el alta del proveedor, para el pago de sus comisiones por el servicio de Cajeros Corresponsales. Se adjuntan certificado bancario, carta de solicitud y adjunto revisión de la agente por el área del cumplimiento normativo donde se encuentra el agente solicitado.
						</p>
							
					
						
						
                        <table border="0" cellpadding="0" cellspacing="0" class="btn btn-primary">
                          <tbody>
                            <tr>
                              <td align="left">
                                <table border="0" cellpadding="0" cellspacing="0">
                                  <tbody>
                                    <tr>
                                     
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      
                  
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>

            <!-- END MAIN CONTENT AREA -->
            </table>

            <!-- START FOOTER -->
            <div class="footer">
              <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td class="content-block">
                    <span class="apple-link">OPPLUS, Av. República de Panamá 3680, San Isidro</span>
                 
                  </td>
                </tr>
                <tr>
                  <td class="content-block powered-by">
                   Área de Controles
                  </td>
                </tr>
              </table>
            </div>
            <!-- END FOOTER -->

          <!-- END CENTERED WHITE CONTAINER -->
          </div>
        </td>
        <td>&nbsp;</td>
      </tr>
    </table>
  </body>
</html>



'    

--------------------------------------------------------------------------	

EXEC msdb.dbo.Sp_send_dbmail
	@profile_name =  'Soporte Opplus',		    
	--@recipients =  'didier.yepez@opplus.bbva.com',
	@recipients =  'hubamericadelsur.cl@bbva.com' ,
	@copy_recipients = 'atencionagentes@bbva.com;carlos.ruiz.alvarez@opplus.bbva.com;javier.ramos.rodriguez@opplus.bbva.com;jorge.parra.deromana@opplus.bbva.com;vanessa.alarcon@opplus.bbva.com;victor.simon@opplus.bbva.com',			
	@body = @body,
	@body_format ='HTML',
	@subject = @subject,
	@importance ='HIGH'
	,@file_attachments=@adjunto


	SET @CONTADOR=@CONTADOR+1	


END   

	DROP TABLE #MAIL
	DROP TABLE #FICHAS
	DROP TABLE #CERTIFICADO_BANCARIO
	DROP TABLE #PLA

END
GO
/****** Object:  StoredProcedure [dbo].[USP_ALTAS_SUBIR]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	DIDIER YEPEZ
-- Create date: 13/06/2021
-- Description:	PROCEDIMIENTO PARA CARGAR LA INFO DE LOS CSV CITAS
-- =============================================
CREATE PROCEDURE [dbo].[USP_ALTAS_SUBIR](@archivo varchar(50))

AS

BEGIN


CREATE TABLE #AltasTemp(	
	[TERMINAL] [nvarchar](255) NULL,
	[TITULAR] [nvarchar](255) NULL,	
)


DECLARE @FILA_BULK_COUNT INT; 


DECLARE @path varchar(50) = 'C:\AFP\' +@archivo +'.csv';
DECLARE @SQL_BULK VARCHAR(MAX);

SET @SQL_BULK = 'BULK INSERT #AltasTemp FROM ''' + @path + ''' WITH
        (
		FIRSTROW=2,
        FIELDTERMINATOR = ''¬'',
        ROWTERMINATOR = ''\n''  
        )'

EXEC (@SQL_BULK) --¬



DELETE FROM TB_ALTA

INSERT INTO TB_ALTA
SELECT * FROM #AltasTemp

END
GO
/****** Object:  StoredProcedure [dbo].[USP_ATTO_CONTROL_KPI]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Didier Yepez Cabanillas
-- Create date: 20/07/2021 - Ult. Actualizacion: 30/07/2021
-- Description:	Calcular indicadores KPI (Mensuales y Diarios) de Reporte Atento
-- =============================================
CREATE PROCEDURE [dbo].[USP_ATTO_CONTROL_KPI] 
	
AS

BEGIN


DELETE FROM TB_ATTO_KPI_MENSUAL
DELETE FROM TB_ATTO_KPI_DIARIO

-----------------------------------------------// DIARIOS
CREATE TABLE #DIARIO1(FECHA DATE NULL,TMO_DIA DECIMAL(10,2) NULL)
CREATE TABLE #DIARIO2(FECHA DATE NULL,TMO_CE_DIA DECIMAL(10,2) NULL)
CREATE TABLE #DIARIO3(FECHA DATE NULL,TMO_CNE_DIA DECIMAL(10,2) NULL)
CREATE TABLE #DIARIO4(FECHA DATE NULL,TMO_NC_DIA DECIMAL(10,2) NULL)
CREATE TABLE #DIARIO5(FECHA DATE NULL,CE_DIA INT NULL)
CREATE TABLE #DIARIO6(FECHA DATE NULL,CE_CNE_DIA INT NULL)
CREATE TABLE #DIARIO7(FECHA DATE NULL,CE_NC_DIA INT NULL)
CREATE TABLE #DIARIO8(FECHA DATE NULL,TOTAL_MARCACIONES INT NULL)

CREATE TABLE #CLIENTES_UNICOS(FECHA DATE NULL,BASE INT NULL)
CREATE TABLE #INTENSIDAD(FECHA DATE NULL,INTENSIDAD_BASE DECIMAL(10,2) NULL)

CREATE TABLE #DIARIO9(FECHA DATE NULL,CONTACTABILIDAD DECIMAL(10,2) NULL)
CREATE TABLE #DIARIO10(FECHA DATE NULL,EFECTIVIDAD DECIMAL(10,2) NULL)
CREATE TABLE #DIARIO11(FECHA DATE NULL,Z_DURACION INT NULL)
CREATE TABLE #DIARIO12(FECHA DATE NULL,Z_DURACION_HORAS DECIMAL(10,2) NULL)
CREATE TABLE #DIARIO13(FECHA DATE NULL,PRODUCTIVIDAD DECIMAL(10,2) NULL)

-------------------------------------------------------------------------// MES
DECLARE @MES INT = 0;

----------------------------------// to while meses...
DECLARE @COUNT_MES INT = 1;
DECLARE @COUNTMAX_MES INT = 0;

DECLARE @MES_NOMBRE VARCHAR(10) = '';

CREATE TABLE #MESES(
ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
MES INT NOT NULL,
)
----------------------------------//

DECLARE @TMO_MES DECIMAL(18,2);
DECLARE @TMO_CE_MES DECIMAL(18,2);
DECLARE @TMO_CNE_MES DECIMAL(18,2);
DECLARE @TMO_NC_MES DECIMAL(18,2);

DECLARE @CE INT;
DECLARE @CNE INT;
DECLARE @NC INT;

DECLARE @TOTAL_MARCACIONES INT;
DECLARE @CONTACTABILIDAD DECIMAL(18,2);
DECLARE @EFECTIVIDAD DECIMAL(18,2);

DECLARE @BASE INT = 0;
DECLARE @INTENSIDAD_BASE_MENSUAL DECIMAL(18,2);

DECLARE @Z_DURACION DECIMAL(18,2);
DECLARE @Z_DURACION_HORAS DECIMAL(18,2);
DECLARE @PRODUCTIVIDAD DECIMAL(18,2)
----------------------------------//

INSERT INTO #MESES
SELECT DISTINCT MONTH(FECHA_H)
FROM TB_ATTO_CONTROL1
ORDER BY MONTH(FECHA_H)


SET @COUNTMAX_MES = (SELECT COUNT(ID) FROM #MESES)
	WHILE @COUNT_MES <= @COUNTMAX_MES
	BEGIN

	SET @MES = (SELECT MES FROM #MESES WHERE ID = @COUNT_MES)
--	---------------//

	SET @MES_NOMBRE = (SELECT CASE WHEN @MES = 01 THEN 'ENERO'
						 WHEN @MES = 02 THEN 'FEBRERO' 
						 WHEN @MES = 03 THEN 'MARZO' 
						 WHEN @MES = 04 THEN 'ABRIL'
						 WHEN @MES = 05 THEN 'MAYO'
						 WHEN @MES = 06 THEN 'JUNIO'
						 WHEN @MES = 07 THEN 'JULIO'
						 WHEN @MES = 08 THEN 'AGOSTO'
						 WHEN @MES = 09 THEN 'SETIEMBRE'
						 WHEN @MES = 10 THEN 'OCTUBRE'
						 WHEN @MES = 11 THEN 'NOVIEMBRE'
						 WHEN @MES = 12 THEN 'DICIEMBRE' ELSE '' END )

	SET @TMO_MES = 	(SELECT ISNULL(SUM(DURACION_TOTAL)/CAST(NULLIF(COUNT(NRO_DOCUMENTO),0) AS DECIMAL(18,2)),0)
					FROM TB_ATTO_CONTROL1	
					WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE()))

	SET @TMO_CE_MES = (SELECT ISNULL(SUM(DURACION_TOTAL)/CAST(NULLIF(COUNT(NRO_DOCUMENTO),0) AS DECIMAL(18,2)),0)
					FROM TB_ATTO_CONTROL1	
					WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE())
					AND GESTION_OP = 'CEF (Contacto Efectivo)')
		
	SET @TMO_CNE_MES = (SELECT ISNULL(SUM(DURACION_TOTAL)/CAST(NULLIF(COUNT(NRO_DOCUMENTO),0) AS DECIMAL(18,2)),0)
					FROM TB_ATTO_CONTROL1	
					WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE())
					AND GESTION_OP = 'CNEF (Contacto No Efectivo)')

	SET @TMO_NC_MES = (SELECT ISNULL(SUM(DURACION_TOTAL)/CAST(NULLIF(COUNT(NRO_DOCUMENTO),0) AS DECIMAL(18,2)),0)
					FROM TB_ATTO_CONTROL1	
					WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE())
					AND GESTION_OP = 'No Contacto')
	
	SET @CE = (SELECT ISNULL(COUNT(NRO_DOCUMENTO),0)
					FROM TB_ATTO_CONTROL1	
					WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE())
					AND GESTION_OP = 'CEF (Contacto Efectivo)')

	SET @CNE = (SELECT ISNULL(COUNT(NRO_DOCUMENTO),0)
					FROM TB_ATTO_CONTROL1	
					WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE())
					AND GESTION_OP = 'CNEF (Contacto No Efectivo)')

	SET @NC = (SELECT ISNULL(COUNT(NRO_DOCUMENTO),0)
					FROM TB_ATTO_CONTROL1	
					WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE())
					AND GESTION_OP = 'No Contacto')

	SET @TOTAL_MARCACIONES = (SELECT ISNULL(NULLIF(COUNT(NRO_DOCUMENTO),0),0)
					FROM TB_ATTO_CONTROL1	
					WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE()))


	SET @BASE = (SELECT ISNULL(NULLIF(COUNT(DISTINCT NRO_DOCUMENTO),0),0) AS CLIENTES_UNICOS
					FROM TB_ATTO_CONTROL1 WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE()))


	SET @CONTACTABILIDAD = ISNULL((CAST(@CE + @CNE AS FLOAT) / NULLIF(CAST(@BASE AS FLOAT),0)),0) * 100	
	
	
	SET @EFECTIVIDAD = ISNULL(CAST(@CE AS FLOAT)/NULLIF(CAST(@BASE AS FLOAT),0),0) * 100


	SET @INTENSIDAD_BASE_MENSUAL = ISNULL(CAST(@TOTAL_MARCACIONES AS FLOAT)/NULLIF(CAST(@BASE AS FLOAT),0),0)
	

	SET @Z_DURACION = (SELECT ISNULL(NULLIF(SUM(DURACION_TOTAL),0),0)
					FROM TB_ATTO_CONTROL1	
					WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE()))

	SET @Z_DURACION_HORAS = (SELECT SUM(DURACION_TOTAL)/CAST(3600 AS DECIMAL(10,2))
					FROM TB_ATTO_CONTROL1	
					WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE()))

	SET @PRODUCTIVIDAD = (ISNULL(@CE /NULLIF( @Z_DURACION_HORAS,0),0))

	
	INSERT INTO TB_ATTO_KPI_MENSUAL
	VALUES(@MES_NOMBRE, YEAR(GETDATE()),@TMO_MES,@TMO_CE_MES,@TMO_CNE_MES,@TMO_NC_MES,@CE,@CNE,@NC, @TOTAL_MARCACIONES, @CONTACTABILIDAD, 
		   @EFECTIVIDAD,@BASE,@INTENSIDAD_BASE_MENSUAL ,@Z_DURACION,@Z_DURACION_HORAS, @PRODUCTIVIDAD)

	
	  --PRINT CONVERT(VARCHAR,@MES) + ' @MES'
	  --PRINT CONVERT(VARCHAR,@TMO_MES) + ' @TMO_MES'
	  --PRINT CONVERT(VARCHAR,@TMO_CE_MES)+ ' @TMO_CE_MES'
	  --PRINT CONVERT(VARCHAR,@TMO_CNE_MES) + ' @@TMO_CNE_MES'
	  --PRINT CONVERT(VARCHAR,@CE) + ' @CE'
	  --PRINT CONVERT(VARCHAR,@CNE) + ' @@CNE'
	  --PRINT CONVERT(VARCHAR,@NC) + ' @@NC'
	  --PRINT CONVERT(VARCHAR,@TOTAL_MARCACIONES) + ' @@TOTAL_MARCACIONES'
	  --PRINT CONVERT(VARCHAR,@CONTACTABILIDAD) + ' @@CONTACTABILIDAD'
	  --PRINT CONVERT(VARCHAR,@EFECTIVIDAD) + ' @@EFECTIVIDAD'
	  --PRINT CONVERT(VARCHAR,@Z_DURACION) + ' @@Z_DURACION'
	  --PRINT CONVERT(VARCHAR,@Z_DURACION_HORAS) + ' @@Z_DURACION_HORAS'
	  --PRINT CONVERT(VARCHAR,@PRODUCTIVIDAD) + ' @@PRODUCTIVIDAD'
	
---------------------------------------------------------------------------------------------------// KPIs DIARIO
-------------------------------------------------------------------------------------------------------------------
INSERT INTO #DIARIO1
SELECT FECHA_H,
CASE WHEN MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE()) 
	THEN ISNULL(SUM(DURACION_TOTAL)/CAST(NULLIF(COUNT(NRO_DOCUMENTO),0) AS DECIMAL(18,2)),0) ELSE 0 END AS TMO_DIA
FROM TB_ATTO_CONTROL1
GROUP BY FECHA_H
ORDER BY FECHA_H


INSERT INTO #DIARIO2
SELECT FECHA_H, ISNULL(SUM(DURACION_TOTAL)/CAST(NULLIF(COUNT(NRO_DOCUMENTO),0) AS DECIMAL(18,2)),0) 
FROM TB_ATTO_CONTROL1
WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE()) AND GESTION_OP = 'CEF (Contacto Efectivo)'
GROUP BY FECHA_H,GESTION_OP
ORDER BY FECHA_H


INSERT INTO #DIARIO3
SELECT FECHA_H, ISNULL(SUM(DURACION_TOTAL)/CAST(NULLIF(COUNT(NRO_DOCUMENTO),0) AS DECIMAL(18,2)),0) 
FROM TB_ATTO_CONTROL1
WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE()) AND GESTION_OP = 'CNEF (Contacto No Efectivo)'
GROUP BY FECHA_H,GESTION_OP
ORDER BY FECHA_H


INSERT INTO #DIARIO4
SELECT FECHA_H, ISNULL(SUM(DURACION_TOTAL)/CAST(NULLIF(COUNT(NRO_DOCUMENTO),0) AS DECIMAL(18,2)),0) 
FROM TB_ATTO_CONTROL1
WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE()) AND GESTION_OP = 'No Contacto'
GROUP BY FECHA_H,GESTION_OP
ORDER BY FECHA_H


INSERT INTO #DIARIO5
SELECT FECHA_H,ISNULL(NULLIF(COUNT(NRO_DOCUMENTO),0),0) AS CE_DIA
FROM TB_ATTO_CONTROL1
WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE()) AND GESTION_OP = 'CEF (Contacto Efectivo)'
GROUP BY FECHA_H,GESTION_OP
ORDER BY FECHA_H


INSERT INTO #DIARIO6
SELECT FECHA_H,ISNULL(NULLIF(COUNT(NRO_DOCUMENTO),0),0) AS CNE_DIA
FROM TB_ATTO_CONTROL1
WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE()) AND GESTION_OP = 'CNEF (Contacto No Efectivo)'
GROUP BY FECHA_H,GESTION_OP
ORDER BY FECHA_H


INSERT INTO #DIARIO7
SELECT FECHA_H,ISNULL(NULLIF(COUNT(NRO_DOCUMENTO),0),0) AS NC_DIA
FROM TB_ATTO_CONTROL1
WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE()) AND GESTION_OP = 'No Contacto'
GROUP BY FECHA_H,GESTION_OP
ORDER BY FECHA_H

INSERT INTO #DIARIO8
SELECT FECHA_H,ISNULL(NULLIF(COUNT(NRO_DOCUMENTO),0),0) AS TOTAL_MARCACIONES_DIA
FROM TB_ATTO_CONTROL1
WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE())
GROUP BY FECHA_H
ORDER BY FECHA_H
-------------------------------------------------------// CLIENTES UNICOS (BASE)
INSERT INTO #CLIENTES_UNICOS
SELECT FECHA_H,ISNULL(NULLIF(COUNT(DISTINCT NRO_DOCUMENTO),0),0) AS BASE
FROM TB_ATTO_CONTROL1
WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE())
GROUP BY FECHA_H
------------------------------------------------//
INSERT INTO #DIARIO9
SELECT D5.FECHA, ISNULL(CAST(D5.CE_DIA + D6.CE_CNE_DIA  AS DECIMAL(18,2))/NULLIF(CU.BASE,0),0) * 100
AS CONTACTABILIDAD_DIA
FROM #DIARIO5 D5 LEFT JOIN #DIARIO6 D6
ON D5.FECHA = D6.FECHA
LEFT JOIN #CLIENTES_UNICOS CU
ON D5.FECHA = CU.FECHA


INSERT INTO #DIARIO10
SELECT D5.FECHA, ISNULL(CAST(D5.CE_DIA  AS DECIMAL(18,2))/NULLIF(CU.BASE,0),0) * 100
AS EFECTIVIDAD_DIA
FROM #DIARIO5 D5 LEFT JOIN #CLIENTES_UNICOS CU
ON D5.FECHA = CU.FECHA


INSERT INTO #INTENSIDAD
SELECT D8.FECHA, ISNULL(CAST(D8.TOTAL_MARCACIONES AS FLOAT)/CAST(NULLIF(CU.BASE,0) AS FLOAT),0)
AS INTENSIDAD_BASE
FROM #DIARIO8 D8 LEFT JOIN #CLIENTES_UNICOS CU
ON D8.FECHA = CU.FECHA



INSERT INTO #DIARIO11
SELECT FECHA_H,ISNULL(NULLIF(SUM(DURACION_TOTAL),0),0)
FROM TB_ATTO_CONTROL1
WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE())
GROUP BY FECHA_H
ORDER BY FECHA_H


INSERT INTO #DIARIO12
SELECT FECHA_H,ISNULL(NULLIF(CAST(SUM(DURACION_TOTAL) AS DECIMAL(18,2))/ 3600,0),0)
FROM TB_ATTO_CONTROL1
WHERE MONTH(FECHA_H) = @MES AND YEAR(FECHA_H) = YEAR(GETDATE())
GROUP BY FECHA_H
ORDER BY FECHA_H


INSERT INTO #DIARIO13
SELECT D5.FECHA,ISNULL(CAST(D5.CE_DIA  AS DECIMAL(18,2))/NULLIF(CAST(D12.Z_DURACION_HORAS AS DECIMAL(18,2)),0),0)
FROM #DIARIO5 D5 LEFT JOIN #DIARIO12 D12
ON D5.FECHA = D12.FECHA


-----------------------------------------------//LEFTS JOIN FINAL DIARIO
INSERT INTO TB_ATTO_KPI_DIARIO
SELECT D1.FECHA, CASE WHEN FORMAT(D1.FECHA, 'MMMM') = 'January' THEN 'ENERO'
		 WHEN FORMAT(D1.FECHA, 'MMMM') = 'February' THEN 'FEBRERO' 
		 WHEN FORMAT(D1.FECHA, 'MMMM') = 'March' THEN 'MARZO' 
		 WHEN FORMAT(D1.FECHA, 'MMMM') = 'April' THEN 'ABRIL'
		 WHEN FORMAT(D1.FECHA, 'MMMM') = 'May' THEN 'MAYO'
		 WHEN FORMAT(D1.FECHA, 'MMMM') = 'June' THEN 'JUNIO'
		 WHEN FORMAT(D1.FECHA, 'MMMM') = 'July' THEN 'JULIO'
		 WHEN FORMAT(D1.FECHA, 'MMMM') = 'August' THEN 'AGOSTO'
		 WHEN FORMAT(D1.FECHA, 'MMMM') = 'September' THEN 'SETIEMBRE'
		 WHEN FORMAT(D1.FECHA, 'MMMM') = 'October' THEN 'OCTUBRE'
		 WHEN FORMAT(D1.FECHA, 'MMMM') = 'November' THEN 'NOVIEMBRE'
		 WHEN FORMAT(D1.FECHA, 'MMMM') = 'December' THEN 'DICIEMBRE'
	END AS MES, YEAR(D1.FECHA),
	ISNULL(D1.TMO_DIA,0), ISNULL(D2.TMO_CE_DIA,0), ISNULL(D3.TMO_CNE_DIA,0), ISNULL(D4.TMO_NC_DIA,0),ISNULL(D5.CE_DIA,0),
	ISNULL(D6.CE_CNE_DIA,0), ISNULL(D7.CE_NC_DIA,0), ISNULL(D8.TOTAL_MARCACIONES,0),ISNULL(D9.CONTACTABILIDAD,0), 
	ISNULL(D10.EFECTIVIDAD,0),ISNULL(CU.BASE,0),ISNULL(I.INTENSIDAD_BASE,0), ISNULL(D11.Z_DURACION,0),ISNULL(D12.Z_DURACION_HORAS,0),
	ISNULL(D13.PRODUCTIVIDAD,0)
FROM #DIARIO1 D1 LEFT JOIN #DIARIO2 D2
ON D1.FECHA = D2.FECHA LEFT JOIN #DIARIO3 D3 
ON D1.FECHA = D3.FECHA LEFT JOIN #DIARIO4 D4
ON D1.FECHA = D4.FECHA LEFT JOIN #DIARIO5 D5
ON D1.FECHA = D5.FECHA LEFT JOIN #DIARIO6 D6
ON D1.FECHA = D6.FECHA LEFT JOIN #DIARIO7 D7
ON D1.FECHA = D7.FECHA LEFT JOIN #DIARIO8 D8
ON D1.FECHA = D8.FECHA LEFT JOIN #DIARIO9 D9
ON D1.FECHA = D9.FECHA LEFT JOIN #DIARIO10 D10
ON D1.FECHA = D10.FECHA LEFT JOIN #CLIENTES_UNICOS CU
ON D1.FECHA = CU.FECHA LEFT JOIN #INTENSIDAD I
ON D1.FECHA = I.FECHA LEFT JOIN #DIARIO11 D11
ON D1.FECHA = D11.FECHA LEFT JOIN #DIARIO12 D12
ON D1.FECHA = D12.FECHA LEFT JOIN #DIARIO13 D13
ON D1.FECHA = D13.FECHA
ORDER BY D1.FECHA

	SET @COUNT_MES = @COUNT_MES + 1;
	END

-----------------------------------------------------------------------------
-----------------------------------------------------------------------------// DIARIO

DROP TABLE #MESES
DROP TABLE #DIARIO1
DROP TABLE #DIARIO2
DROP TABLE #DIARIO3
DROP TABLE #DIARIO4
DROP TABLE #DIARIO5
DROP TABLE #DIARIO6
DROP TABLE #DIARIO7
DROP TABLE #DIARIO8
DROP TABLE #CLIENTES_UNICOS
DROP TABLE #INTENSIDAD
DROP TABLE #DIARIO9
DROP TABLE #DIARIO10
DROP TABLE #DIARIO11
DROP TABLE #DIARIO12
DROP TABLE #DIARIO13


SELECT * FROM TB_ATTO_KPI_MENSUAL
SELECT * FROM TB_ATTO_KPI_DIARIO

END
GO
/****** Object:  StoredProcedure [dbo].[USP_ATTO_CONTROL1]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		DIDIER YEPEZ CABANILLAS
-- Create date: 16/07/2021
-- Description:	Procedure para sacar la primera tabla de resultados 
-- =============================================
CREATE PROCEDURE [dbo].[USP_ATTO_CONTROL1] 
	(@FECHA_INICIO DATE, @FECHA_FIN DATE)
AS
BEGIN
	

DELETE FROM TB_ATTO_CONTROL1


-------------//PARTE 1
CREATE TABLE #PARTE_1(	
	[COD_CENTRAL] [varchar](30) NULL,
	[NRO_DOCUMENTO] [varchar](30) NULL,
	[OPERADOR] [varchar](30) NULL,
	[FECHA_HORA] [date] NULL,
	[DURACION] [int] NULL,
	[CAMPO_ID] [int] NULL,
	[TIPO_GESTION] [varchar](80) NULL,
	[NEGOCIO] [varchar](80) NULL,
	[PRODUCTO_SERVICIO] [varchar](80) NULL,
	[PRODUCTO_SERVICIO_DETALLE] [varchar](80) NULL,
	[ACCION] [varchar](100) NULL,
	[OBSERVACION] [varchar](100) NULL,
	[TELEFONO] [varchar](50) NULL,
	[TIPO_TELEFONO] [varchar](50) NULL,
	[FECHA] [varchar](10) NULL,
	[HORA] [varchar](5) NULL,
	[ANIO] [varchar](5) NULL,
	[MES] [varchar](12) NULL,
	[GESTION_OPPLUS] [varchar](100) NULL,
	[ASESOR] [varchar](100) NULL,
	[ESTADO] [varchar](12) NULL)


	---------------------------------------------------------------------------------------------// BEGIN
	INSERT INTO #PARTE_1
	SELECT COD_CENTRAL,NRO_DOCUMENTO, OPERADOR,CONVERT(DATE,FECHA_HORA),DURACION,CAMPO_ID,TIPO_GESTION,NEGOCIO,PRODUCTO_SERVICIO,
	PRODUCTO_SERVICIO_DETALLE,ACCION,OBSERVACION,TELEFONO,TIPO_TELEFONO,FORMAT(FECHA_HORA, 'dd/MM/yyyy') AS FECHA, 
	FORMAT(FECHA_HORA, 'hh:mm') AS HORA, YEAR(FECHA_HORA) AS ANIO, 	
	CASE WHEN FORMAT(FECHA_HORA, 'MMMM') = 'January' THEN 'ENERO'
		 WHEN FORMAT(FECHA_HORA, 'MMMM') = 'February' THEN 'FEBRERO' 
		 WHEN FORMAT(FECHA_HORA, 'MMMM') = 'March' THEN 'MARZO' 
		 WHEN FORMAT(FECHA_HORA, 'MMMM') = 'April' THEN 'ABRIL'
		 WHEN FORMAT(FECHA_HORA, 'MMMM') = 'May' THEN 'MAYO'
		 WHEN FORMAT(FECHA_HORA, 'MMMM') = 'June' THEN 'JUNIO'
		 WHEN FORMAT(FECHA_HORA, 'MMMM') = 'July' THEN 'JULIO'
		 WHEN FORMAT(FECHA_HORA, 'MMMM') = 'August' THEN 'AGOSTO'
		 WHEN FORMAT(FECHA_HORA, 'MMMM') = 'September' THEN 'SETIEMBRE'
		 WHEN FORMAT(FECHA_HORA, 'MMMM') = 'October' THEN 'OCTUBRE'
		 WHEN FORMAT(FECHA_HORA, 'MMMM') = 'November' THEN 'NOVIEMBRE'
		 WHEN FORMAT(FECHA_HORA, 'MMMM') = 'December' THEN 'DICIEMBRE'
	END AS MES,
	CASE WHEN ACCION IN ('Entrega Gestionada','Realizará activación/primer uso','Cruce de Cargo Recurrente') 
	THEN 'CEF (Contacto Efectivo)'
		WHEN ACCION IN ('Cancelará tarjeta de Crédito','Volver a Llamar (Con Explicación)','Volver a Llamar (Sin Explicación)',
		'No Desea Información - No especifica motivo', 'NO REQUIERE TRABAJAR CON EL BBVA - RECLAMOS - MALA EXPERIENCIA',
		'Producto difiere del ofrecido', 'No Usa - No Necesita el Producto','CORTA LLAMADA', 'Cliente nunca contrató producto',
		'No desea recibir Llamadas o brindar información', 'No Acepta Tratamiento de Proteccion de Datos',
		'FALLECIÓ','Cliente Ocupado / Se dejó mensaje a tercero','Interferencia Llamada (Señal)','') 
		THEN 'CNEF (Contacto No Efectivo)' ELSE 'No Contacto' END AS GESTION_OPPLUS,
	A.NOMBRES AS ASESOR, A.ESTADO AS ESTADO
	
	FROM TB_ATTO_VOLCADOS V LEFT JOIN  TB_ATTO_ASESORES A
	ON V.OPERADOR = A.DNI
	WHERE CONVERT(DATE,FECHA_HORA) >= CONVERT(DATE,@FECHA_INICIO) AND CONVERT(DATE,FECHA_HORA) <= CONVERT(DATE,@FECHA_FIN)
	--WHERE CONVERT(DATE,FECHA_HORA) = CONVERT(DATE,@FECHA_INICIO) 	
	
	----SELECT * FROM #VOLCADO_1

	-----------------------------------------------------/

	INSERT INTO TB_ATTO_CONTROL1
	SELECT P1.COD_CENTRAL,P1.NRO_DOCUMENTO, OPERADOR, FECHA_HORA, DURACION, CAMPO_ID, TIPO_GESTION, NEGOCIO, PRODUCTO_SERVICIO,
	PRODUCTO_SERVICIO_DETALLE, ACCION, OBSERVACION, TELEFONO, TIPO_TELEFONO, COUNT(P1.NRO_DOCUMENTO) AS NRO_INTENTOS,FECHA, HORA, 
	ANIO, MES, GESTION_OPPLUS,

	ASESOR,ESTADO AS ESTADO,

	LTRIM(RTRIM(P.COD_CENTRAL)) AS CODIGO_CENTRAL, P.FECHA_ALTA_CONTRATO AS FECHA_ALTA_CONTRATO, P.FECHA_ACTIVACION AS FECHA_ACTIVACION, 
	LTRIM(RTRIM(P.RESPONSABLE)) AS RESPONSABLE, P.FECHA_ENVIO_CRM AS FECHA_ENVIO_CRM,
	LTRIM(RTRIM(P.GESTION_CRM)) AS GESTION_CRM, P.FECHA_GESTION_CRM AS FECHA_GESTION_CRM, P.FECHA_1CONSUMO_TC AS FECHA_1CONSUMO_TC, 
	P.FECHA_BAJA_TC AS FECHA_BAJA_TC, P.FECHA_BAJA_CRM AS  FECHA_BAJA_CRM, 
	LTRIM(RTRIM(P.MOTIVO_BAJA)) AS MOTIVO_BAJA
	
	FROM #PARTE_1 P1 LEFT JOIN TB_ATTO_PROGRESO P
	ON P1.NRO_DOCUMENTO = P.NRO_DOCUMENTO
	GROUP BY P1.COD_CENTRAL, P1.NRO_DOCUMENTO, OPERADOR, FECHA_HORA, DURACION, CAMPO_ID, TIPO_GESTION, NEGOCIO, PRODUCTO_SERVICIO,
	PRODUCTO_SERVICIO_DETALLE, ACCION, OBSERVACION, TELEFONO, TIPO_TELEFONO,FECHA, HORA, ANIO, MES, GESTION_OPPLUS,
	ASESOR,ESTADO, P.COD_CENTRAL, P.FECHA_ALTA_CONTRATO, P.FECHA_ACTIVACION, P.RESPONSABLE, P.FECHA_ENVIO_CRM, P.GESTION_CRM,
	P.FECHA_GESTION_CRM, P.FECHA_1CONSUMO_TC,P.FECHA_BAJA_TC,P.FECHA_BAJA_CRM,P.MOTIVO_BAJA
	ORDER BY P1.NRO_DOCUMENTO

	---------------------------------------------------/	
	DROP TABLE #PARTE_1	
	

	SELECT * FROM TB_ATTO_CONTROL1	

	----------------------------------------// Obtenemos los KPIs de TB_ATTO_CONTROL1
	EXEC USP_ATTO_CONTROL_KPI

END
GO
/****** Object:  StoredProcedure [dbo].[USP_ATTO_SUBIR_ASESORES]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		DIDIER YEPEZ CABANILLAS
-- Create date: 15/07/2021
-- Description:	Procedure para cargar y actualizar la base de Asesores 'ATENTO'
-- =============================================
CREATE PROCEDURE [dbo].[USP_ATTO_SUBIR_ASESORES](@archivo varchar(50))

AS

BEGIN

CREATE TABLE #ASESORES(	
	[DNI] [varchar](8) NULL,
	[NOMBRES] [varchar](50) NULL,
	[ESTADO] [varchar](6) NULL
	)

DECLARE @FILA_BULK_COUNT INT; 


DECLARE @path varchar(50) = 'C:\AFP\BASESCC\' +@archivo +'.csv';
DECLARE @SQL_BULK VARCHAR(MAX);

SET @SQL_BULK = 'BULK INSERT #ASESORES FROM ''' + @path + ''' WITH
        (
		FIRSTROW=2,
        FIELDTERMINATOR = ''¬'',
        ROWTERMINATOR = ''\n''  
        )'

EXEC (@SQL_BULK) --¬



DELETE FROM TB_ATTO_ASESORES

INSERT INTO TB_ATTO_ASESORES
SELECT * FROM #ASESORES

SET @FILA_BULK_COUNT =  (SELECT @@ROWCOUNT)

IF(@FILA_BULK_COUNT > 1)
	BEGIN
	
	----print CONVERT (VARCHAR,@FILA_BULK_COUNT) + ' FILAS INSERTADAS '
	INSERT INTO TB_HISTORIAL_CARGAS_ATTO VALUES ('CARGADO CON EXITO',@archivo,GETDATE())

	END
ELSE
	BEGIN

	----print 'NINGUNA  FILA INSERTADA'
	INSERT INTO TB_HISTORIAL_CARGAS_ATTO VALUES ('ERROR EN LA CARGA',@archivo,GETDATE())

	END


SELECT * FROM TB_ATTO_ASESORES

END
GO
/****** Object:  StoredProcedure [dbo].[USP_ATTO_SUBIR_PROGRESO]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		DIDIER YEPEZ CABANILLAS
-- Create date: 15/07/2021
-- Description:	Procedure para cargar y actualizar la base de progreso.
-- =============================================
CREATE PROCEDURE [dbo].[USP_ATTO_SUBIR_PROGRESO](@archivo varchar(50))

AS

BEGIN

CREATE TABLE #PROGRESO(	
	[COD_CENTRAL] [varchar](10) NULL,
	[NRO_DOCUMENTO] [varchar](10) NULL,
	[CONTRATO] [varchar](25) NULL,
	[FECHA_ALTA_CONTRATO] [varchar](10) NULL,
	[FECHA_ACTIVACION] [varchar](10) NULL,
	[RESPONSABLE] [varchar](12) NULL,
	[FECHA_ENVIO_CRM] [varchar](10) NULL,
	[GESTION_CRM] [varchar](30) NULL,
	[FECHA_GESTION_CRM] [varchar](10) NULL,
	[FECHA_1CONSUMO_TC] [varchar](10) NULL,
	[FECHA_BAJA_TC] [varchar](10) NULL,
	[FECHA_BAJA_CRM] [varchar](10) NULL,
	[MOTIVO_BAJA] [varchar](50) NULL
)

DECLARE @FILA_BULK_COUNT INT; 


DECLARE @path varchar(50) = 'C:\AFP\BASESCC\' +@archivo +'.csv';
DECLARE @SQL_BULK VARCHAR(MAX);

SET @SQL_BULK = 'BULK INSERT #PROGRESO FROM ''' + @path + ''' WITH
        (
		FIRSTROW=2,
        FIELDTERMINATOR = ''¬'',
        ROWTERMINATOR = ''\n''  
        )'

EXEC (@SQL_BULK) --¬


UPDATE #PROGRESO
SET FECHA_ACTIVACION = (CASE WHEN FECHA_ACTIVACION is null then NULL
						WHEN FECHA_ACTIVACION = '0/01/1900' THEN '01/01/1900' ELSE FECHA_ACTIVACION END)

-------------------------------------//
INSERT INTO TB_ATTO_PROGRESO
SELECT COD_CENTRAL,NRO_DOCUMENTO,CONTRATO, 
CASE WHEN FECHA_ALTA_CONTRATO IS NULL THEN NULL ELSE CONVERT(DATE,CONVERT(DATE, FECHA_ALTA_CONTRATO,103),23) END,
CASE WHEN FECHA_ACTIVACION IS NULL THEN NULL ELSE CONVERT(DATE,CONVERT(DATE, FECHA_ACTIVACION,103),23) END,
RESPONSABLE,
CASE WHEN FECHA_ENVIO_CRM IS NULL THEN NULL ELSE CONVERT(DATE,CONVERT(DATE, FECHA_ENVIO_CRM,103),23) END,
REPLACE(GESTION_CRM,'¾','ó'), 
CASE WHEN FECHA_GESTION_CRM IS NULL THEN NULL ELSE CONVERT(DATE,CONVERT(DATE, FECHA_GESTION_CRM,103),23) END,
CASE WHEN FECHA_1CONSUMO_TC IS NULL THEN NULL ELSE CONVERT(DATE,CONVERT(DATE, FECHA_1CONSUMO_TC,103),23) END,
CASE WHEN FECHA_BAJA_TC IS NULL THEN NULL ELSE CONVERT(DATE,CONVERT(DATE, FECHA_BAJA_TC,103),23) END,
CASE WHEN FECHA_BAJA_CRM IS NULL THEN NULL ELSE CONVERT(DATE,CONVERT(DATE, FECHA_BAJA_CRM,103),23) END,
REPLACE(MOTIVO_BAJA,'¾','ó')
FROM #PROGRESO


SET @FILA_BULK_COUNT =  (SELECT @@ROWCOUNT)

IF(@FILA_BULK_COUNT > 1)
	BEGIN
	
	----print CONVERT (VARCHAR,@FILA_BULK_COUNT) + ' FILAS INSERTADAS '
	INSERT INTO TB_HISTORIAL_CARGAS_ATTO VALUES ('CARGADO CON EXITO',@archivo,GETDATE())

	END
ELSE
	BEGIN

	----print 'NINGUNA  FILA INSERTADA'
	INSERT INTO TB_HISTORIAL_CARGAS_ATTO VALUES ('ERROR EN LA CARGA',@archivo,GETDATE())

	END



SELECT * FROM TB_ATTO_PROGRESO

DROP TABLE #PROGRESO

END
GO
/****** Object:  StoredProcedure [dbo].[USP_ATTO_SUBIR_VOLCADOS]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		DIDIER YEPEZ CABANILLAS
-- Create date: 15/07/2021
-- Description:	Procedure para cargar y actualizar la base de Volcados de Dias MARTES.
-- =============================================
CREATE PROCEDURE [dbo].[USP_ATTO_SUBIR_VOLCADOS] (@archivo varchar(50), @mes int, @anio int)

AS

BEGIN

CREATE TABLE #VOLCADO(	
	[COD_CENTRAL] [varchar](10) NULL,
	[NRO_DOCUMENTO] [varchar](15) NULL,
	[OPERADOR] [varchar](10) NULL,
	[FECHA_HORA] [varchar](20) NULL,
	[DURACION] [int] NULL,
	[CAMPO_ID] [int] NULL,
	[TIPO_GESTION] [varchar](50) NULL,
	[NEGOCIO] [varchar](50) NULL,
	[PRODUCTO_SERVICIO] [varchar](50) NULL,
	[PRODUCTO_SERVICIO_DETALLE] [varchar](50) NULL,
	[ACCION] [varchar](100) NULL,
	[OBSERVACION] [varchar](100) NULL,
	[TELEFONO] [varchar](50) NULL,
	[TIPO_TELEFONO] [varchar](50) NULL
)

DECLARE @FILA_BULK_COUNT INT; 


DECLARE @path varchar(50) = 'C:\AFP\BASESCC\' +@archivo +'.csv';
DECLARE @SQL_BULK VARCHAR(MAX);

SET @SQL_BULK = 'BULK INSERT #VOLCADO FROM ''' + @path + ''' WITH
        (
		FIRSTROW=2,
        FIELDTERMINATOR = ''¬'',
        ROWTERMINATOR = ''\n''  
        )'

EXEC (@SQL_BULK) --¬


---select * from #VOLCADO
---------------------------------------//ACTUALIZACION
DELETE FROM TB_ATTO_VOLCADOS
WHERE MONTH(FECHA_HORA) = @mes
AND YEAR(FECHA_HORA) = @anio

---------------------------------------// INSERCION
INSERT INTO TB_ATTO_VOLCADOS
SELECT COD_CENTRAL,LTRIM(RTRIM(NRO_DOCUMENTO)),OPERADOR, 
CASE WHEN FECHA_HORA IS NULL THEN NULL ELSE CONVERT(DATETIME,CONVERT(DATETIME, FECHA_HORA,103),23) END,
DURACION,CAMPO_ID,TIPO_GESTION,NEGOCIO, PRODUCTO_SERVICIO, PRODUCTO_SERVICIO_DETALLE,
CASE WHEN ACCION = 'Mßquina contestadora' THEN REPLACE(ACCION,'ß','á')
	 WHEN ACCION = 'El telÚfono no existe o esta inactivo' THEN REPLACE(ACCION,'Ú','é')
	 WHEN ACCION = 'Realizarß activaci¾n/primer uso' THEN 'Realizará activación/primer uso' 
	 WHEN ACCION = 'Cliente Ocupado / Se dej¾ mensaje a tercero' THEN REPLACE(ACCION,'¾','ó')
	 WHEN ACCION = 'TEL+FONO ERRADO / NO LE PERTENECE EL TEL+FONO' THEN REPLACE(ACCION,'+','É')
	 WHEN ACCION = 'TEL+FONO FUERA DE SERVICIO / SUSPENDIDO' THEN REPLACE(ACCION,'+','É')	 
	 WHEN ACCION = 'Cancelarß tarjeta de CrÚdito' THEN 'Cancelará tarjeta de Crédito'
	 WHEN ACCION = 'Cliente nunca contrat¾ producto' THEN REPLACE(ACCION,'¾','ó')
	 WHEN ACCION = 'Volver a Llamar (Con Explicaci¾n)' THEN REPLACE(ACCION,'¾','ó')
	 WHEN ACCION = 'Volver a Llamar (Sin Explicaci¾n)' THEN REPLACE(ACCION,'¾','ó')
	 WHEN ACCION = 'FALLECIË' THEN REPLACE(ACCION,'Ë','Ó')
	 WHEN ACCION = 'Interferencia Llamada (Se±al)' THEN REPLACE(ACCION,'±','ñ')
	 WHEN ACCION = 'Llamada cortada por anßlisis' THEN REPLACE(ACCION,'ß','á')
	 WHEN ACCION = 'No Desea Informaci¾n - No especifica motivo' THEN REPLACE(ACCION,'¾','ó')
	 WHEN ACCION = 'No desea recibir Llamadas o brindar informaci=n' THEN REPLACE(ACCION,'=','ó')
	 ELSE ACCION END,	 
OBSERVACION,
LTRIM(RTRIM(TELEFONO)), LTRIM(RTRIM(TIPO_TELEFONO))

FROM #VOLCADO



SET @FILA_BULK_COUNT =  (SELECT @@ROWCOUNT)

IF(@FILA_BULK_COUNT > 1)
	BEGIN
	
	--print CONVERT (VARCHAR,@FILA_BULK_COUNT) + ' FILAS INSERTADAS '
	INSERT INTO TB_HISTORIAL_CARGAS_ATTO VALUES ('CARGADO CON EXITO',@archivo,GETDATE())

	END
ELSE
	BEGIN

	--print 'NINGUNA  FILA INSERTADA'
	INSERT INTO TB_HISTORIAL_CARGAS_ATTO VALUES ('ERROR EN LA CARGA',@archivo,GETDATE())

	END



SELECT * FROM TB_ATTO_VOLCADOS

DROP TABLE #VOLCADO

END
GO
/****** Object:  StoredProcedure [dbo].[USP_CITAS_COORDINAR]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================

CREATE PROCEDURE [dbo].[USP_CITAS_COORDINAR]

AS 

BEGIN

DECLARE @MAX int;
DECLARE @CONTADOR int = 1;

DECLARE @DNI  varchar(20)
DECLARE @NOMBRE_COMPLETO varchar(800)
DECLARE @MONTO_CANCELAR varchar(20)
DECLARE @FUVEX varchar(50)
DECLARE @FECHA_CITA  varchar(20)
DECLARE @HORA_CITA varchar(20)
DECLARE @DIRECCION_BANCO varchar(100)
DECLARE @OBSERVACIONES varchar(800)
DECLARE @CELULAR varchar(200)
DECLARE @BANCO varchar(200)

DECLARE @adjunto varchar(max) = 'a';

DECLARE @body VARCHAR(max);
DECLARE @subject VARCHAR(max);
DECLARE @ERROR VARCHAR(max);
DECLARE @enlace varchar(255)

DECLARE @enlace_error varchar(255) = '';


CREATE TABLE #MAIL
( Id int identity(1,1) NOT NULL PRIMARY KEY,
DNI  varchar(max),
NOMBRE_COMPLETO varchar(max),
MONTO_CANCELAR varchar(max),
FUVEX varchar(max),
FECHA_CITA  varchar(max), 
HORA_CITA varchar(max),
DIRECCION_BANCO varchar(max),
OBSERVACIONES varchar(max),
CELULAR varchar(max),
BANCO  varchar(max)
);

INSERT #MAIL 
SELECT distinct DNI, NOMBRE_COMPLETO,MONTO_CANCELAR,FUVEX,FECHA_CITA,HORA_CITA,DIRECCION_BANCO,'', CELULAR, BANCO_ACREEDOR
FROM  TB_CITAS
WHERE DIRECCION_BANCO NOT IN ('Av. Venezuela cdra 34  - San Miguel. Bienestar de la Marina.')
AND DNI IN (SELECT SUBSTRING(DNI,0,9) 
			FROM CITAS_MAIL_HISTORIAL WHERE estado = 'ENVIADA'
			AND CONVERT(DATE,fecha_hora_cita_envio) = CONVERT(DATE,GETDATE()))

			UNION ALL
			
SELECT distinct DNI, NOMBRE_COMPLETO,MONTO_CANCELAR,FUVEX,FECHA_CITA,HORA_CITA,DIRECCION_BANCO,'', CELULAR, BANCO_ACREEDOR
FROM  TB_CITAS
WHERE DIRECCION_BANCO NOT IN ('Av. Venezuela cdra 34  - San Miguel. Bienestar de la Marina.')
AND DNI IN (SELECT SUBSTRING(DNI,0,8) 
			FROM CITAS_MAIL_HISTORIAL WHERE estado = 'ENVIADA'
			AND CONVERT(DATE,fecha_hora_cita_envio) = CONVERT(DATE,GETDATE()))



SET @MAX = (SELECT COUNT(Id) FROM #MAIL)
WHILE @CONTADOR <= @MAX

BEGIN

SET @DNI = (SELECT LTRIM(RTRIM(DNI)) FROM #MAIL WHERE Id=@CONTADOR)   
SET @NOMBRE_COMPLETO = (SELECT LTRIM(RTRIM(NOMBRE_COMPLETO)) FROM #MAIL WHERE Id=@CONTADOR) 
SET @MONTO_CANCELAR  = (SELECT LTRIM(RTRIM(MONTO_CANCELAR)) FROM #MAIL WHERE Id=@CONTADOR)
SET @FUVEX = (SELECT LTRIM(RTRIM(FUVEX)) FROM #MAIL WHERE Id=@CONTADOR)
SET @FECHA_CITA  = (SELECT LTRIM(RTRIM(FECHA_CITA)) FROM #MAIL WHERE Id=@CONTADOR)
SET @HORA_CITA  = (SELECT LTRIM(RTRIM(HORA_CITA)) FROM #MAIL WHERE Id=@CONTADOR)
SET @DIRECCION_BANCO  = (SELECT LTRIM(RTRIM(DIRECCION_BANCO)) FROM #MAIL WHERE Id=@CONTADOR)
SET @OBSERVACIONES = (SELECT LTRIM(RTRIM(BANCO)) FROM #MAIL WHERE Id=@CONTADOR)
SET @CELULAR = (SELECT LTRIM(RTRIM(CELULAR)) FROM #MAIL WHERE Id=@CONTADOR)
SET @BANCO = (SELECT LTRIM(RTRIM(BANCO)) FROM #MAIL WHERE Id=@CONTADOR)


SET @adjunto ='';
SET @adjunto = @adjunto + 'C:\\afp\Citas\'+@DNI+'.pdf'; 

------------------------------------------------------------------------------
SET @Body = '	
<html>
<head>
<style>

    table {
        border-collapse: collapse;
    }

    table, th, td {
        border: 1px solid black;
    }
    td {
     width:auto;
    
    }
</style>

</head>
<body>
<br />
Estimado,
<br />
Buenas tardes, se detalla la coordinación de pago de deuda en el banco '+@BANCO+', del cliente en mención para el dia.'+@FECHA_CITA+' 
<br />
<br />

<table>
	<tr>
        <td colspan="2">
            CITA COMPRA DEUDA PROSEGUR
            </td>
    </tr>
    <tr>
        <td>
            <strong>Cliente</strong>
        </td>
        <td>
            '+@NOMBRE_COMPLETO+'
        </td>
    </tr>
    <tr>
        <td>
            <strong>DNI</strong>
        </td>
        <td>
           '+@DNI+'
        </td>
    </tr>
    <tr>
        <td>
            <strong>Celular</strong>
        </td>
        <td>
          '+@CELULAR+'
        </td>
    </tr>
    <tr>
        <td>
            <strong>Fecha</strong>
        </td>
        <td>
             '+@FECHA_CITA+'
        </td>
    </tr>
    <tr>
        <td>
            <strong>Lugar de la cita</strong>
        </td>
        <td>
            '+@DIRECCION_BANCO+'
        </td>
    </tr>
    <tr>
        <td>
            <strong>Oficina</strong>
        </td>
        <td>
          '+@OBSERVACIONES+'
        </td>
    </tr>
    <tr>
        <td>
            <strong>Hora</strong>
        </td>
        <td>
          '+@HORA_CITA+'
        </td>
    </tr>
	    <tr>
        <td>
            <strong>Monto</strong>
        </td>
        <td>
          '+@MONTO_CANCELAR+'
        </td>
    </tr>

</body>
</table>
</html>

';
--------------------------------------------------------------------------	

SET @subject = 'COORDINACION DE CITAS' + ' ' + @NOMBRE_COMPLETO + ' ' + @DNI;	

EXEC msdb.dbo.Sp_send_dbmail
	@profile_name =  'Soporte Opplus',			
	@recipients = 'pago-deuda.peru@prosegur.com',		
	--@recipients = 'didier.yepez@opplus.bbva.com',		
	@copy_recipients = 'gino.narrea@bbva.com;csegura@bbva.com;elizabeth.taboada@bbva.com;carlos.ruiz.alvarez@opplus.bbva.com;christian.palomino@bbva.com; yaritza.medina@opplus.bbva.com;rafael.delcastillo@prosegur.com;miguel.vegas@opplus.bbva.com',			
	--@copy_recipients = 'didier.yepez@opplus.bbva.com',
	@body = @body,
	@body_format ='HTML',
	@subject = @subject,
	@importance ='HIGH'
	,@file_attachments=@adjunto	


SET @CONTADOR=@CONTADOR+1		

END  

END

GO
/****** Object:  StoredProcedure [dbo].[USP_CITAS_COORDINAR_VENEZUELA]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
CREATE PROCEDURE [dbo].[USP_CITAS_COORDINAR_VENEZUELA]

AS 

BEGIN

DECLARE @MAX int;
DECLARE @CONTADOR int = 1;

DECLARE @DNI  varchar(20)
DECLARE @NOMBRE_COMPLETO varchar(800)
DECLARE @MONTO_CANCELAR varchar(20)
DECLARE @FUVEX varchar(50)
DECLARE @FECHA_CITA  varchar(20)
DECLARE @HORA_CITA varchar(20)
DECLARE @DIRECCION_BANCO varchar(100)
DECLARE @OBSERVACIONES varchar(800)
DECLARE @CELULAR varchar(200)
DECLARE @BANCO varchar(200)

DECLARE @adjunto varchar(max) = 'a';

DECLARE @body VARCHAR(max);
DECLARE @subject VARCHAR(max);
DECLARE @ERROR VARCHAR(max);
DECLARE @enlace varchar(255)

DECLARE @enlace_error varchar(255) = '';


CREATE TABLE #MAIL
( Id int identity(1,1) NOT NULL PRIMARY KEY,
DNI  varchar(max),
NOMBRE_COMPLETO varchar(max),
MONTO_CANCELAR varchar(max),
FUVEX varchar(max),
FECHA_CITA  varchar(max), 
HORA_CITA varchar(max),
DIRECCION_BANCO varchar(max),
OBSERVACIONES varchar(max),
CELULAR varchar(max),
BANCO  varchar(max)
);

INSERT #MAIL 
SELECT distinct DNI, NOMBRE_COMPLETO,MONTO_CANCELAR,FUVEX,FECHA_CITA,HORA_CITA,DIRECCION_BANCO,'', CELULAR, BANCO_ACREEDOR
FROM  TB_CITAS
WHERE DIRECCION_BANCO IN ('Av. Venezuela cdra 34  - San Miguel. Bienestar de la Marina.')
AND DNI IN (SELECT SUBSTRING(DNI,0,9) 
			FROM CITAS_MAIL_HISTORIAL WHERE estado = 'ENVIADA' 
			AND CONVERT(DATE,fecha_hora_cita_envio) = CONVERT(DATE,GETDATE()))

			UNION ALL

			SELECT distinct DNI, NOMBRE_COMPLETO,MONTO_CANCELAR,FUVEX,FECHA_CITA,HORA_CITA,DIRECCION_BANCO,'', CELULAR, BANCO_ACREEDOR
FROM  TB_CITAS
WHERE DIRECCION_BANCO IN ('Av. Venezuela cdra 34  - San Miguel. Bienestar de la Marina.')
AND DNI IN (SELECT SUBSTRING(DNI,0,8) 
			FROM CITAS_MAIL_HISTORIAL WHERE estado = 'ENVIADA' 
			AND CONVERT(DATE,fecha_hora_cita_envio) = CONVERT(DATE,GETDATE()))

SET @MAX = (SELECT COUNT(Id) FROM #MAIL)


WHILE @CONTADOR <= @MAX
BEGIN

SET @DNI = (SELECT LTRIM(RTRIM(DNI)) FROM #MAIL WHERE Id=@CONTADOR)   
SET @NOMBRE_COMPLETO = (SELECT LTRIM(RTRIM(NOMBRE_COMPLETO)) FROM #MAIL WHERE Id=@CONTADOR) 
SET @MONTO_CANCELAR  = (SELECT LTRIM(RTRIM(MONTO_CANCELAR)) FROM #MAIL WHERE Id=@CONTADOR)
SET @FUVEX = (SELECT LTRIM(RTRIM(FUVEX)) FROM #MAIL WHERE Id=@CONTADOR)
SET @FECHA_CITA  = (SELECT LTRIM(RTRIM(FECHA_CITA)) FROM #MAIL WHERE Id=@CONTADOR)
SET @HORA_CITA  = (SELECT LTRIM(RTRIM(HORA_CITA)) FROM #MAIL WHERE Id=@CONTADOR)
SET @DIRECCION_BANCO  = (SELECT LTRIM(RTRIM(DIRECCION_BANCO)) FROM #MAIL WHERE Id=@CONTADOR)
SET @OBSERVACIONES = (SELECT LTRIM(RTRIM(BANCO)) FROM #MAIL WHERE Id=@CONTADOR)
SET @CELULAR = (SELECT LTRIM(RTRIM(CELULAR)) FROM #MAIL WHERE Id=@CONTADOR)
SET @BANCO = (SELECT LTRIM(RTRIM(BANCO)) FROM #MAIL WHERE Id=@CONTADOR)


SET @adjunto ='';

SET @adjunto = @adjunto + 'C:\\afp\Citas\'+@DNI+'.pdf'; 
------------------------------------------------------------------------------
SET @Body = '	
<html>
<head>
<style>

    table {
        border-collapse: collapse;
    }

    table, th, td {
        border: 1px solid black;
    }
    td {
     width:auto;
    
    }
</style>

</head>
<body>
<br />
Estimado,
<br />
Buenas tardes, se detalla la coordinación de pago de deuda en el banco '+@BANCO+', del cliente en mención para el dia.'+@FECHA_CITA+' 
<br />
<br />

<table>
	<tr>
        <td colspan="2">
            CITA COMPRA DEUDA PROSEGUR
            </td>
    </tr>
    <tr>
        <td>
            <strong>Cliente</strong>
        </td>
        <td>
            '+@NOMBRE_COMPLETO+'
        </td>
    </tr>
    <tr>
        <td>
            <strong>DNI</strong>
        </td>
        <td>
           '+@DNI+'
        </td>
    </tr>
    <tr>
        <td>
            <strong>Celular</strong>
        </td>
        <td>
          '+@CELULAR+'
        </td>
    </tr>
    <tr>
        <td>
            <strong>Fecha</strong>
        </td>
        <td>
             '+@FECHA_CITA+'
        </td>
    </tr>
    <tr>
        <td>
            <strong>Lugar de la cita</strong>
        </td>
        <td>
            '+@DIRECCION_BANCO+'
        </td>
    </tr>
    <tr>
        <td>
            <strong>Oficina</strong>
        </td>
        <td>
          '+@OBSERVACIONES+'
        </td>
    </tr>
    <tr>
        <td>
            <strong>Hora</strong>
        </td>
        <td>
          '+@HORA_CITA+'
        </td>
    </tr>
	    <tr>
        <td>
            <strong>Monto</strong>
        </td>
        <td>
          '+@MONTO_CANCELAR+'
        </td>
    </tr>

</body>
</table>
</html>

';
--------------------------------------------------------------------------

SET @subject = 'COORDINACION DE CITAS' + ' ' + @NOMBRE_COMPLETO + ' ' + @DNI;	

EXEC msdb.dbo.Sp_send_dbmail
	@profile_name =  'Soporte Opplus',			
	@recipients = 'pago-deuda.peru@prosegur.com',			
	--@recipients = 'didier.yepez@opplus.bbva.com',			
	@copy_recipients = 'gino.narrea@bbva.com;csegura@bbva.com;elizabeth.taboada@bbva.com;carlos.ruiz.alvarez@opplus.bbva.com;christian.palomino@bbva.com; yaritza.medina@opplus.bbva.com;rafael.delcastillo@prosegur.com;ebustios@bbva.com;miguel.vegas@opplus.bbva.com',
	--@copy_recipients = 'didier.yepez@opplus.bbva.com',
	@body = @body,
	@body_format ='HTML',
	@subject = @subject,
	@importance ='HIGH'
	,@file_attachments=@adjunto


SET @CONTADOR=@CONTADOR+1	
	

END       
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CITAS_ENVIAR]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		DIDIER YEPEZ C
-- Create date: 14.06.2021
-- Description:	Procedure Ejecucion de Citas
-- =============================================
CREATE PROCEDURE [dbo].[USP_CITAS_ENVIAR]
AS
BEGIN
	

DECLARE @countVenezuela int =  0;
DECLARE @countOtros int = 0;	


CREATE TABLE #encontradas(
DNI_ENCONTRADO VARCHAR(100) NULL)


CREATE TABLE #noencontradas(
DNI_NOENCONTRADO VARCHAR(100) NULL)




SET @countVenezuela = (SELECT COUNT(DNI) 
						FROM TB_CITAS 
						WHERE DIRECCION_BANCO = 'Av. Venezuela cdra 34  - San Miguel. Bienestar de la Marina.')

						
SET @countOtros = (SELECT COUNT(DNI) 
						FROM TB_CITAS 
						WHERE DIRECCION_BANCO != 'Av. Venezuela cdra 34  - San Miguel. Bienestar de la Marina.')


--------------------------------------//						
DELETE FROM TB_CITAS_ARCHIVOS


INSERT INTO TB_CITAS_ARCHIVOS
EXEC XP_CMDSHELL 'dir /B "C:\afp\Citas\*.pdf"'

DELETE FROM TB_CITAS_ARCHIVOS WHERE NOMBRE_ARCHIVO IS NULL
--------------------------------------//


-------------------------// Encontradas
INSERT INTO #encontradas
SELECT RTRIM(LTRIM(NOMBRE_ARCHIVO))
FROM TB_CITAS_ARCHIVOS 
WHERE SUBSTRING(NOMBRE_ARCHIVO,0,9) IN (SELECT DNI FROM TB_CITAS)
AND LEN(NOMBRE_ARCHIVO) = 12   -------// Para DNIs que contengan un 0 delante

UNION ALL

SELECT RTRIM(LTRIM(NOMBRE_ARCHIVO))
FROM TB_CITAS_ARCHIVOS 
WHERE SUBSTRING(NOMBRE_ARCHIVO,0,8) IN (SELECT DNI FROM TB_CITAS)
AND LEN(NOMBRE_ARCHIVO) = 11  -------// Para DNIs que NO contengan un 0 delante



-------------------------// NO Encontradas
INSERT INTO #noencontradas
SELECT RTRIM(LTRIM(NOMBRE_ARCHIVO))
FROM TB_CITAS_ARCHIVOS
WHERE SUBSTRING(NOMBRE_ARCHIVO,0,9) NOT IN (SELECT DNI FROM TB_CITAS)

----SELECT * FROM #encontradas
----SELECT * FROM #noencontradas

----------------------------------------------------------------------//
INSERT INTO CITAS_MAIL_HISTORIAL(dni,nombres,fecha_cita,hora_cita,banco, fecha_hora_cita_envio, estado)
SELECT e.DNI_ENCONTRADO, c.NOMBRE_COMPLETO, C.FECHA_CITA, C.HORA_CITA, C.BANCO_ACREEDOR, GETDATE(), 'ENVIADA'
FROM #encontradas e inner join TB_CITAS c
on SUBSTRING(e.DNI_ENCONTRADO,0,9) = C.DNI

UNION ALL 

SELECT e.DNI_ENCONTRADO, c.NOMBRE_COMPLETO, C.FECHA_CITA, C.HORA_CITA, C.BANCO_ACREEDOR, GETDATE(), 'ENVIADA'
FROM #encontradas e inner join TB_CITAS c
on SUBSTRING(e.DNI_ENCONTRADO,0,8) = C.DNI


INSERT INTO CITAS_MAIL_HISTORIAL(dni,nombres,fecha_cita,hora_cita,banco, fecha_hora_cita_envio, estado)
SELECT DNI_NOENCONTRADO, 'REVISAR ARCHIVO .PDF o DATA', ' ', '', ' ' , GETDATE(), 'ERROR'
FROM #noencontradas


IF(@countVenezuela > 0)
	BEGIN
	--PRINT 1
	EXEC [dbo].[USP_CITAS_COORDINAR_VENEZUELA]	

	END	

IF(@countOtros > 0) 
	BEGIN	
	--PRINT 2
	EXEC [dbo].[USP_CITAS_COORDINAR]	

	END


DROP TABLE #encontradas
DROP TABLE #noencontradas

END
GO
/****** Object:  StoredProcedure [dbo].[USP_CITAS_SUBIR]    Script Date: 6/09/2021 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	DIDIER YEPEZ
-- Create date: 13/06/2021
-- Description:	PROCEDIMIENTO PARA CARGAR LA INFO DE LOS CSV CITAS
-- =============================================
CREATE PROCEDURE [dbo].[USP_CITAS_SUBIR](@archivo varchar(50))

AS

BEGIN

--DECLARE @archivo varchar(30)
--SET @archivo = (SELECT CONVERT(VARCHAR,(CONVERT(DATE,GETDATE()))))

CREATE TABLE #tb_citas_coordinar(
	[PERIODO] [varchar](100) NULL,
	[FECHA_RECEPCION] [nvarchar](max) NULL,
	[DNI] [varchar](100) NULL,
	[NOMBRE_COMPLETO] [nvarchar](max) NULL,
	[TIPO] [varchar](100) NULL,
	[BANCO_ACREEDOR] [varchar](100) NULL,
	[NUMERO_PRESTAMO] [varchar](100) NULL,
	[MONEDA] [varchar](100) NULL,
	[MONTO_CANCELAR] [varchar](100) NULL,
	[CELULAR] [nvarchar](max) NULL,
	[FUVEX] [varchar](100) NULL,
	[CONVENIO] [nvarchar](100) NULL,
	[VENDEDOR] [nvarchar](100) NULL,
	[FECHA_CITA] [varchar](150) NULL,
	[HORA_CITA] [varchar](150) NULL,
	[DIRECCION_BANCO] [nvarchar](max) NULL
)


DECLARE @FILA_BULK_COUNT INT; 


DECLARE @path varchar(50) = 'C:\AFP\' +@archivo +'.csv';
DECLARE @SQL_BULK VARCHAR(MAX);

SET @SQL_BULK = 'BULK INSERT #tb_citas_coordinar FROM ''' + @path + ''' WITH
        (
		FIRSTROW=1,
        FIELDTERMINATOR = '';'',
        ROWTERMINATOR = ''\n''  
        )'

EXEC (@SQL_BULK) --¬


SET @FILA_BULK_COUNT =  (SELECT @@ROWCOUNT)

IF(@FILA_BULK_COUNT > 1)
	BEGIN
	
	--print CONVERT (VARCHAR,@FILA_BULK_COUNT) + ' FILAS INSERTADAS '
	INSERT INTO TB_HISTORIAL_CARGAS_CSV VALUES ('CARGADO CON EXITO',@archivo,GETDATE())

	END
ELSE
	BEGIN

	--print 'NINGUNA  FILA INSERTADA'
	INSERT INTO TB_HISTORIAL_CARGAS_CSV VALUES ('ERROR EN LA CARGA',@archivo,GETDATE())

	END

DELETE FROM TB_CITAS


INSERT INTO TB_CITAS
SELECT * FROM #tb_citas_coordinar

DELETE FROM TB_CITAS
WHERE DNI is null


UPDATE TB_CITAS
set DIRECCION_BANCO = 'Av. Venezuela cdra 34  - San Miguel. Bienestar de la Marina.'
where DIRECCION_BANCO LIKE '%Av. Venezuela%'

SELECT * FROM TB_CITAS

DROP TABLE #tb_citas_coordinar

END
GO
USE [master]
GO
ALTER DATABASE [PruebaC] SET  READ_WRITE 
GO
