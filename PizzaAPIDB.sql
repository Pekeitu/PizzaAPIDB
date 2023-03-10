USE [master]
GO
/****** Object:  Database [pizzaAPI]    Script Date: 10/3/2023 12:00:25 ******/
CREATE DATABASE [pizzaAPI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pizzaAPI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\pizzaAPI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pizzaAPI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\pizzaAPI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [pizzaAPI] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pizzaAPI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pizzaAPI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pizzaAPI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pizzaAPI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pizzaAPI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pizzaAPI] SET ARITHABORT OFF 
GO
ALTER DATABASE [pizzaAPI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pizzaAPI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pizzaAPI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pizzaAPI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pizzaAPI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pizzaAPI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pizzaAPI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pizzaAPI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pizzaAPI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pizzaAPI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pizzaAPI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pizzaAPI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pizzaAPI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pizzaAPI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pizzaAPI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pizzaAPI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pizzaAPI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pizzaAPI] SET RECOVERY FULL 
GO
ALTER DATABASE [pizzaAPI] SET  MULTI_USER 
GO
ALTER DATABASE [pizzaAPI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pizzaAPI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pizzaAPI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pizzaAPI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pizzaAPI] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'pizzaAPI', N'ON'
GO
ALTER DATABASE [pizzaAPI] SET QUERY_STORE = OFF
GO
USE [pizzaAPI]
GO
/****** Object:  User [alumno]    Script Date: 10/3/2023 12:00:25 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Pizza]    Script Date: 10/3/2023 12:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pizza](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [char](25) NOT NULL,
	[precio] [float] NOT NULL,
	[libreDeGluten] [bit] NOT NULL,
	[descripcion] [char](200) NOT NULL,
 CONSTRAINT [PK_Pizza] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pizza] ON 

INSERT [dbo].[Pizza] ([id], [nombre], [precio], [libreDeGluten], [descripcion]) VALUES (1, N'Muzzarella               ', 1800, 0, N'La clasica                                                                                                                                                                                              ')
INSERT [dbo].[Pizza] ([id], [nombre], [precio], [libreDeGluten], [descripcion]) VALUES (2, N'Muzzarella sin gluten    ', 2000, 1, N'La clasica sin gluten                                                                                                                                                                                   ')
SET IDENTITY_INSERT [dbo].[Pizza] OFF
GO
USE [master]
GO
ALTER DATABASE [pizzaAPI] SET  READ_WRITE 
GO
