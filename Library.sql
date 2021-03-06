USE [master]
GO
/****** Object:  Database [Library]    Script Date: 20-Dec-17 12:22:11 AM ******/
CREATE DATABASE [Library]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Library', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Library.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Library_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Library_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Library] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Library].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Library] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Library] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Library] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Library] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Library] SET ARITHABORT OFF 
GO
ALTER DATABASE [Library] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Library] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Library] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Library] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Library] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Library] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Library] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Library] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Library] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Library] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Library] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Library] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Library] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Library] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Library] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Library] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Library] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Library] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Library] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Library] SET  MULTI_USER 
GO
ALTER DATABASE [Library] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Library] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Library] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Library] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Library]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 20-Dec-17 12:22:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](2000) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Writer] [nvarchar](50) NOT NULL,
	[ReleaseDate] [datetime] NOT NULL,
	[Rating] [tinyint] NOT NULL,
 CONSTRAINT [PK_dbo.Items] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 20-Dec-17 12:22:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Username] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[Password] [nvarchar](200) NOT NULL,
	[IsLocked] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([ID], [Title], [Description], [Image], [Writer], [ReleaseDate], [Rating]) VALUES (1, N'Data Structure', N'Data Structures Using C has been developed to provide a comprehensive and consistent coverage of both the abstract concepts of data structures as well as the implementation of these concepts using C language', N'Data-Structure.jpg', N'seymour lipschutz', CAST(0x0000A6DA00000000 AS DateTime), 3)
INSERT [dbo].[Items] ([ID], [Title], [Description], [Image], [Writer], [ReleaseDate], [Rating]) VALUES (4, N'An era of darkness', N'An era of darkness', N'An-era-of-darkness.jpg', N'Sashi tharoor', CAST(0x0000A84700000000 AS DateTime), 4)
INSERT [dbo].[Items] ([ID], [Title], [Description], [Image], [Writer], [ReleaseDate], [Rating]) VALUES (5, N'Attitude-is-Everything', N'Attitude-is-Everything', N'Attitude-is-Everything.jpg', N'Jeff Keller', CAST(0x0000A84700000000 AS DateTime), 3)
INSERT [dbo].[Items] ([ID], [Title], [Description], [Image], [Writer], [ReleaseDate], [Rating]) VALUES (7, N'c in depth', N'c in depth', N'cindepth.jpg', N'S K Srivastava', CAST(0x0000A6DA00000000 AS DateTime), 5)
INSERT [dbo].[Items] ([ID], [Title], [Description], [Image], [Writer], [ReleaseDate], [Rating]) VALUES (8, N'Davinci-code', N'Davinci-code', N'Davinci-code.jpg', N'Dann Brown', CAST(0x0000A6DA00000000 AS DateTime), 2)
INSERT [dbo].[Items] ([ID], [Title], [Description], [Image], [Writer], [ReleaseDate], [Rating]) VALUES (12, N'Hit-refresh', N'Hit-refresh', N'Hit-refresh.jpg', N'Satya Nadela', CAST(0x0000A84700000000 AS DateTime), 5)
INSERT [dbo].[Items] ([ID], [Title], [Description], [Image], [Writer], [ReleaseDate], [Rating]) VALUES (13, N'My-experiment-with-the-truth', N'My-experiment-with-the-truth', N'My-experiment-with-the-truth.jpg', N'Mahatma Gandhi', CAST(0x0000A56C00000000 AS DateTime), 2)
INSERT [dbo].[Items] ([ID], [Title], [Description], [Image], [Writer], [ReleaseDate], [Rating]) VALUES (14, N'the-Alchemist', N'the-Alchemist', N'the-Alchemist.jpg', N'the-Alchemist', CAST(0x0000A6DA00000000 AS DateTime), 4)
INSERT [dbo].[Items] ([ID], [Title], [Description], [Image], [Writer], [ReleaseDate], [Rating]) VALUES (15, N'the-miracle-morning', N'the-miracle-morning', N'the-miracle-morning.jpg', N'Hal Elrod', CAST(0x0000A84700000000 AS DateTime), 3)
INSERT [dbo].[Items] ([ID], [Title], [Description], [Image], [Writer], [ReleaseDate], [Rating]) VALUES (17, N'Selection day', N'Selection day', N'the-Selection-day.jpg', N'Arvind Adiga', CAST(0x0000A56C00000000 AS DateTime), 3)
INSERT [dbo].[Items] ([ID], [Title], [Description], [Image], [Writer], [ReleaseDate], [Rating]) VALUES (18, N'wings of fire', N'wings of fire', N'wings-of-fire.jpg', N'A.P.J Abdul Kalam', CAST(0x0000A56C00000000 AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[Items] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Name], [Username], [Email], [Password], [IsLocked], [DateCreated]) VALUES (1, NULL, N'admin', N'admin@gmail.com', N'123456', 0, CAST(0x0000A54B013C816A AS DateTime))
INSERT [dbo].[Users] ([ID], [Name], [Username], [Email], [Password], [IsLocked], [DateCreated]) VALUES (4, N'Cardinal', N'Tom B. Erichsen', N'Skagen 21', N'Stavanger', 0, CAST(0x0000A84E00BF441A AS DateTime))
INSERT [dbo].[Users] ([ID], [Name], [Username], [Email], [Password], [IsLocked], [DateCreated]) VALUES (5, N'Mohan Singh', N'sinwal92@gmail.com', N'sinwal92@gmail.com', N'123456', 0, CAST(0x0000A84E00BFB7DF AS DateTime))
INSERT [dbo].[Users] ([ID], [Name], [Username], [Email], [Password], [IsLocked], [DateCreated]) VALUES (6, N'', N'', N'', N'', 0, CAST(0x0000A84E016D3653 AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
USE [master]
GO
ALTER DATABASE [Library] SET  READ_WRITE 
GO
