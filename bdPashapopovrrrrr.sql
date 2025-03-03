USE [master]
GO
/****** Object:  Database [Поликлиника_Попов_Павел_И_32]    Script Date: 13.04.2021 18:16:09 ******/
CREATE DATABASE [Поликлиника_Попов_Павел_И_32]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Поликлиника_Попов_Павел_И_32', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Поликлиника_Попов_Павел_И_32.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Поликлиника_Попов_Павел_И_32_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Поликлиника_Попов_Павел_И_32_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Поликлиника_Попов_Павел_И_32].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET ARITHABORT OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET RECOVERY FULL 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET  MULTI_USER 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Поликлиника_Попов_Павел_И_32', N'ON'
GO
USE [Поликлиника_Попов_Павел_И_32]
GO
/****** Object:  Table [dbo].[Админестратор]    Script Date: 13.04.2021 18:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Админестратор](
	[id_Админестратор] [int] IDENTITY(1,1) NOT NULL,
	[id_Приём] [int] NOT NULL,
	[Дата_И_Время] [datetime] NOT NULL,
 CONSTRAINT [PK_Админестратор] PRIMARY KEY CLUSTERED 
(
	[id_Админестратор] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Адрес]    Script Date: 13.04.2021 18:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Адрес](
	[id_Адрес] [int] IDENTITY(1,1) NOT NULL,
	[Регион] [nvarchar](50) NOT NULL,
	[Населённый_пункт] [nvarchar](30) NOT NULL,
	[Улица] [nvarchar](35) NOT NULL,
	[Дом] [int] NULL,
	[Квартира] [int] NULL,
 CONSTRAINT [PK_Адрес] PRIMARY KEY CLUSTERED 
(
	[id_Адрес] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Врач]    Script Date: 13.04.2021 18:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Врач](
	[id_Врач] [int] IDENTITY(1,1) NOT NULL,
	[id_Люди] [int] NOT NULL,
	[id_Должность] [int] NOT NULL,
	[id_Участок] [int] NOT NULL,
 CONSTRAINT [PK_Врач] PRIMARY KEY CLUSTERED 
(
	[id_Врач] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Диагноз]    Script Date: 13.04.2021 18:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Диагноз](
	[id_Диаогноз] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Диагноз] PRIMARY KEY CLUSTERED 
(
	[id_Диаогноз] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Должность]    Script Date: 13.04.2021 18:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Должность](
	[id_Должность] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_должность] PRIMARY KEY CLUSTERED 
(
	[id_Должность] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Люди]    Script Date: 13.04.2021 18:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Люди](
	[id_Люди] [int] IDENTITY(1,1) NOT NULL,
	[Фамилия] [nvarchar](35) NOT NULL,
	[Имя] [nvarchar](30) NOT NULL,
	[Отсчество] [nvarchar](35) NOT NULL,
	[id_Врач] [int] NULL,
	[id_Пациент] [int] NULL,
 CONSTRAINT [PK_Люди] PRIMARY KEY CLUSTERED 
(
	[id_Люди] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Пациенты]    Script Date: 13.04.2021 18:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пациенты](
	[id_Пациент] [int] IDENTITY(1,1) NOT NULL,
	[id_Люди] [int] NOT NULL,
	[id_Диагноз] [int] NOT NULL,
	[ИНН] [int] NOT NULL,
	[Медецинская_Карта] [nchar](20) NOT NULL,
	[Номер_Телефона] [nchar](11) NULL,
	[idАдрес] [int] NOT NULL,
 CONSTRAINT [PK_Пациенты] PRIMARY KEY CLUSTERED 
(
	[id_Пациент] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Приём]    Script Date: 13.04.2021 18:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Приём](
	[id_Приём] [int] IDENTITY(1,1) NOT NULL,
	[id_Участок] [int] NULL,
	[id_Врач] [int] NOT NULL,
	[id_Пациент] [int] NOT NULL,
	[Дата] [datetime] NOT NULL,
 CONSTRAINT [PK_Приём] PRIMARY KEY CLUSTERED 
(
	[id_Приём] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Участок]    Script Date: 13.04.2021 18:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Участок](
	[id_Участок] [int] IDENTITY(1,1) NOT NULL,
	[id_Адрес] [int] NOT NULL,
 CONSTRAINT [PK_Участок] PRIMARY KEY CLUSTERED 
(
	[id_Участок] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Админестратор]  WITH CHECK ADD  CONSTRAINT [FK_Админестратор_Приём] FOREIGN KEY([id_Приём])
REFERENCES [dbo].[Приём] ([id_Приём])
GO
ALTER TABLE [dbo].[Админестратор] CHECK CONSTRAINT [FK_Админестратор_Приём]
GO
ALTER TABLE [dbo].[Врач]  WITH CHECK ADD  CONSTRAINT [FK_Врач_Должность] FOREIGN KEY([id_Должность])
REFERENCES [dbo].[Должность] ([id_Должность])
GO
ALTER TABLE [dbo].[Врач] CHECK CONSTRAINT [FK_Врач_Должность]
GO
ALTER TABLE [dbo].[Врач]  WITH CHECK ADD  CONSTRAINT [FK_Врач_Люди] FOREIGN KEY([id_Люди])
REFERENCES [dbo].[Люди] ([id_Люди])
GO
ALTER TABLE [dbo].[Врач] CHECK CONSTRAINT [FK_Врач_Люди]
GO
ALTER TABLE [dbo].[Врач]  WITH CHECK ADD  CONSTRAINT [FK_Врач_Участок] FOREIGN KEY([id_Участок])
REFERENCES [dbo].[Участок] ([id_Участок])
GO
ALTER TABLE [dbo].[Врач] CHECK CONSTRAINT [FK_Врач_Участок]
GO
ALTER TABLE [dbo].[Люди]  WITH CHECK ADD  CONSTRAINT [FK_Люди_Врач] FOREIGN KEY([id_Врач])
REFERENCES [dbo].[Врач] ([id_Врач])
GO
ALTER TABLE [dbo].[Люди] CHECK CONSTRAINT [FK_Люди_Врач]
GO
ALTER TABLE [dbo].[Люди]  WITH CHECK ADD  CONSTRAINT [FK_Люди_Пациенты] FOREIGN KEY([id_Пациент])
REFERENCES [dbo].[Пациенты] ([id_Пациент])
GO
ALTER TABLE [dbo].[Люди] CHECK CONSTRAINT [FK_Люди_Пациенты]
GO
ALTER TABLE [dbo].[Пациенты]  WITH CHECK ADD  CONSTRAINT [FK_Пациенты_Адрес] FOREIGN KEY([idАдрес])
REFERENCES [dbo].[Адрес] ([id_Адрес])
GO
ALTER TABLE [dbo].[Пациенты] CHECK CONSTRAINT [FK_Пациенты_Адрес]
GO
ALTER TABLE [dbo].[Пациенты]  WITH CHECK ADD  CONSTRAINT [FK_Пациенты_Диагноз] FOREIGN KEY([id_Диагноз])
REFERENCES [dbo].[Диагноз] ([id_Диаогноз])
GO
ALTER TABLE [dbo].[Пациенты] CHECK CONSTRAINT [FK_Пациенты_Диагноз]
GO
ALTER TABLE [dbo].[Пациенты]  WITH CHECK ADD  CONSTRAINT [FK_Пациенты_Люди] FOREIGN KEY([id_Люди])
REFERENCES [dbo].[Люди] ([id_Люди])
GO
ALTER TABLE [dbo].[Пациенты] CHECK CONSTRAINT [FK_Пациенты_Люди]
GO
ALTER TABLE [dbo].[Приём]  WITH CHECK ADD  CONSTRAINT [FK_Приём_Врач] FOREIGN KEY([id_Врач])
REFERENCES [dbo].[Врач] ([id_Врач])
GO
ALTER TABLE [dbo].[Приём] CHECK CONSTRAINT [FK_Приём_Врач]
GO
ALTER TABLE [dbo].[Приём]  WITH CHECK ADD  CONSTRAINT [FK_Приём_Пациенты] FOREIGN KEY([id_Пациент])
REFERENCES [dbo].[Пациенты] ([id_Пациент])
GO
ALTER TABLE [dbo].[Приём] CHECK CONSTRAINT [FK_Приём_Пациенты]
GO
ALTER TABLE [dbo].[Приём]  WITH CHECK ADD  CONSTRAINT [FK_Приём_Участок] FOREIGN KEY([id_Участок])
REFERENCES [dbo].[Участок] ([id_Участок])
GO
ALTER TABLE [dbo].[Приём] CHECK CONSTRAINT [FK_Приём_Участок]
GO
ALTER TABLE [dbo].[Участок]  WITH CHECK ADD  CONSTRAINT [FK_Участок_Адрес] FOREIGN KEY([id_Адрес])
REFERENCES [dbo].[Адрес] ([id_Адрес])
GO
ALTER TABLE [dbo].[Участок] CHECK CONSTRAINT [FK_Участок_Адрес]
GO
USE [master]
GO
ALTER DATABASE [Поликлиника_Попов_Павел_И_32] SET  READ_WRITE 
GO
