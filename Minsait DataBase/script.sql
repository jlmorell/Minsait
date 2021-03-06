USE [master]
GO
/****** Object:  Database [Minsait]    Script Date: 22/06/2021 01:44:17 p. m. ******/
CREATE DATABASE [Minsait]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Minsait', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Minsait.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Minsait_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Minsait_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Minsait] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Minsait].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Minsait] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Minsait] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Minsait] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Minsait] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Minsait] SET ARITHABORT OFF 
GO
ALTER DATABASE [Minsait] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Minsait] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Minsait] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Minsait] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Minsait] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Minsait] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Minsait] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Minsait] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Minsait] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Minsait] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Minsait] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Minsait] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Minsait] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Minsait] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Minsait] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Minsait] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Minsait] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Minsait] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Minsait] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Minsait] SET  MULTI_USER 
GO
ALTER DATABASE [Minsait] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Minsait] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Minsait] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Minsait] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Minsait]
GO
/****** Object:  Table [dbo].[CatalogoMercado]    Script Date: 22/06/2021 01:44:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatalogoMercado](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Mercado] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CatalogoPais]    Script Date: 22/06/2021 01:44:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatalogoPais](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 22/06/2021 01:44:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[IdPais] [int] NOT NULL,
	[RFC] [nvarchar](14) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[IdMercado] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacto]    Script Date: 22/06/2021 01:44:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[IdPuesto] [int] NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[TelefonoMovil] [nvarchar](50) NULL,
	[TelefonoOficina] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 22/06/2021 01:44:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[Calle] [nvarchar](50) NOT NULL,
	[Colonia] [nvarchar](50) NULL,
	[CodigoPostal] [nvarchar](50) NULL,
	[NumExt] [nvarchar](10) NOT NULL,
	[NumInt] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Telefono]    Script Date: 22/06/2021 01:44:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefono](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TelefonoOficina] [nvarchar](50) NOT NULL,
	[TelefonoOficina2] [nvarchar](50) NULL,
	[TelefonoMovil] [nvarchar](50) NULL,
	[IdDireccion] [int] NOT NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [Minsait] SET  READ_WRITE 
GO
