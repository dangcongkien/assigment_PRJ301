USE [master]
GO
/****** Object:  Database [PRJ301]    Script Date: 3/16/2022 8:51:19 PM ******/
CREATE DATABASE [PRJ301]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301', FILENAME = N'D:\SQL Sever\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ301.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_log', FILENAME = N'D:\SQL Sever\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ301_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PRJ301] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJ301] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ301] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ301] SET QUERY_STORE = OFF
GO
USE [PRJ301]
GO
/****** Object:  UserDefinedFunction [dbo].[getNameStudent]    Script Date: 3/16/2022 8:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getNameStudent] ( @str NVARCHAR(4000) )
RETURNS NVARCHAR(2000)
AS
BEGIN
    DECLARE @retval NVARCHAR(2000);

    SET @str=RTRIM(LTRIM(@str));
    SET @retval=LEFT(@str,1);

    WHILE CHARINDEX(' ',@str,1)>0 BEGIN
        SET @str=LTRIM(RIGHT(@str,LEN(@str)-CHARINDEX(' ',@str,1)));
        SET @retval+=LEFT(@str,1);
    END

    RETURN @retval;
END
GO
/****** Object:  Table [dbo].[Academic_Campus]    Script Date: 3/16/2022 8:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Academic_Campus](
	[campusId] [int] NOT NULL,
	[accountId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Academic_Student]    Script Date: 3/16/2022 8:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Academic_Student](
	[int] [int] IDENTITY(1,1) NOT NULL,
	[rollNumber] [varchar](50) NOT NULL,
	[memberCode] [nvarchar](50) NOT NULL,
	[enrollDate] [date] NOT NULL,
	[mode] [nvarchar](50) NOT NULL,
	[studentId] [int] NOT NULL,
 CONSTRAINT [PK_Academic_Student] PRIMARY KEY CLUSTERED 
(
	[int] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/16/2022 8:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Campus]    Script Date: 3/16/2022 8:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Campus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parent]    Script Date: 3/16/2022 8:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[phoneNumber] [int] NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[job] [nvarchar](50) NOT NULL,
	[workPlace] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Parent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialized]    Script Date: 3/16/2022 8:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialized](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Specialized] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 3/16/2022 8:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](50) NOT NULL,
	[lastName] [nvarchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[gender] [bit] NOT NULL,
	[cardNo] [int] NULL,
	[cardDate] [date] NULL,
	[cardPlace] [nvarchar](50) NULL,
	[address] [nvarchar](50) NOT NULL,
	[phoneNumber] [int] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[specializedId] [int] NULL,
	[campusId] [int] NULL,
	[parentId] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Academic_Campus] ([campusId], [accountId]) VALUES (5, 5)
GO
SET IDENTITY_INSERT [dbo].[Academic_Student] ON 

INSERT [dbo].[Academic_Student] ([int], [rollNumber], [memberCode], [enrollDate], [mode], [studentId]) VALUES (5, N'null32', N'SE32', CAST(N'2022-03-29' AS Date), N'Chinh quy', 32)
INSERT [dbo].[Academic_Student] ([int], [rollNumber], [memberCode], [enrollDate], [mode], [studentId]) VALUES (6, N'null33', N'SE33', CAST(N'2022-03-11' AS Date), N'Chinh quy', 33)
INSERT [dbo].[Academic_Student] ([int], [rollNumber], [memberCode], [enrollDate], [mode], [studentId]) VALUES (7, N'null34', N'SE34', CAST(N'2022-03-11' AS Date), N'Chinh quy', 34)
INSERT [dbo].[Academic_Student] ([int], [rollNumber], [memberCode], [enrollDate], [mode], [studentId]) VALUES (9, N'null37', N'SE37', CAST(N'2022-03-17' AS Date), N'Chinh quy', 37)
INSERT [dbo].[Academic_Student] ([int], [rollNumber], [memberCode], [enrollDate], [mode], [studentId]) VALUES (10, N'null36', N'SE36', CAST(N'2022-03-16' AS Date), N'Chinh quy', 36)
INSERT [dbo].[Academic_Student] ([int], [rollNumber], [memberCode], [enrollDate], [mode], [studentId]) VALUES (11, N'null40', N'SE40', CAST(N'2022-03-30' AS Date), N'Chinh quy', 40)
INSERT [dbo].[Academic_Student] ([int], [rollNumber], [memberCode], [enrollDate], [mode], [studentId]) VALUES (12, N'null41', N'SE41', CAST(N'2022-03-25' AS Date), N'Chinh quy', 41)
INSERT [dbo].[Academic_Student] ([int], [rollNumber], [memberCode], [enrollDate], [mode], [studentId]) VALUES (13, N'null43', N'SE43', CAST(N'2022-03-19' AS Date), N'Chinh quy', 43)
SET IDENTITY_INSERT [dbo].[Academic_Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password]) VALUES (5, N'admin', N'1')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Campus] ON 

INSERT [dbo].[Campus] ([id], [name]) VALUES (5, N'FU-HL')
INSERT [dbo].[Campus] ([id], [name]) VALUES (6, N'FU-HCM')
INSERT [dbo].[Campus] ([id], [name]) VALUES (7, N'FU-DN')
INSERT [dbo].[Campus] ([id], [name]) VALUES (8, N'FU-CT')
SET IDENTITY_INSERT [dbo].[Campus] OFF
GO
SET IDENTITY_INSERT [dbo].[Specialized] ON 

INSERT [dbo].[Specialized] ([id], [name], [code]) VALUES (4, N'Software engineering', N'SE')
INSERT [dbo].[Specialized] ([id], [name], [code]) VALUES (5, N'Artificial intelligence', N'AI')
INSERT [dbo].[Specialized] ([id], [name], [code]) VALUES (6, N'Business administration', N'BA')
SET IDENTITY_INSERT [dbo].[Specialized] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([id], [firstName], [lastName], [dob], [gender], [cardNo], [cardDate], [cardPlace], [address], [phoneNumber], [email], [specializedId], [campusId], [parentId]) VALUES (32, N'Dang Cong ', N'Kien', CAST(N'2022-03-04' AS Date), 1, NULL, NULL, NULL, N'Phuc Dong Long Bien Ha Noi', 123456789, N'kiend1401@gmail.com', 4, 5, NULL)
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dob], [gender], [cardNo], [cardDate], [cardPlace], [address], [phoneNumber], [email], [specializedId], [campusId], [parentId]) VALUES (33, N'Dang Cong ', N'Kien', CAST(N'2022-03-14' AS Date), 1, NULL, NULL, NULL, N'Phuc Dong Long Bien Ha Noi', 123456789, N'kiend244@gmail.com', 4, 5, NULL)
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dob], [gender], [cardNo], [cardDate], [cardPlace], [address], [phoneNumber], [email], [specializedId], [campusId], [parentId]) VALUES (34, N'Nguyen Van  ', N'A', CAST(N'2022-03-25' AS Date), 1, NULL, NULL, NULL, N'Phuc Dong Long Bien Ha Noi', 123456789, N'kiendche151094@fpt.edu.vn', 4, 5, NULL)
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dob], [gender], [cardNo], [cardDate], [cardPlace], [address], [phoneNumber], [email], [specializedId], [campusId], [parentId]) VALUES (36, N'Dang Cong ', N'Kien', CAST(N'2022-03-11' AS Date), 1, NULL, NULL, NULL, N'Phuc Dong Long Bien Ha Noi', 123456789, N'kiendche151094@fpt.edu.vn', 4, 5, NULL)
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dob], [gender], [cardNo], [cardDate], [cardPlace], [address], [phoneNumber], [email], [specializedId], [campusId], [parentId]) VALUES (37, N'Nguyen Binh', N'Minh', CAST(N'2022-03-10' AS Date), 1, NULL, NULL, NULL, N'Phuc Dong Nai Long Bien Ha Noi', 123456789, N'kiend244@gmail.com', 4, 5, NULL)
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dob], [gender], [cardNo], [cardDate], [cardPlace], [address], [phoneNumber], [email], [specializedId], [campusId], [parentId]) VALUES (40, N'Dang Cong ', N'Kien', CAST(N'2022-03-03' AS Date), 1, NULL, NULL, NULL, N'Phuc Dong Long Bien Ha Noi', 123456789, N'kiend244@gmail.com', 4, 6, NULL)
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dob], [gender], [cardNo], [cardDate], [cardPlace], [address], [phoneNumber], [email], [specializedId], [campusId], [parentId]) VALUES (41, N'Nguyen Van  ', N'Minh', CAST(N'2022-03-04' AS Date), 1, NULL, NULL, NULL, N'Phuc Dong Nai Long Bien Ha Noi', 123456789, N'kiendche151094@fpt.edu.vn', 4, 6, NULL)
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dob], [gender], [cardNo], [cardDate], [cardPlace], [address], [phoneNumber], [email], [specializedId], [campusId], [parentId]) VALUES (42, N'Nguyen Van  ', N'Minh', CAST(N'2022-03-04' AS Date), 1, NULL, NULL, NULL, N'Phuc Dong Nai Long Bien Ha Noi', 123456789, N'kiendche151094@fpt.edu.vn', 4, 6, NULL)
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dob], [gender], [cardNo], [cardDate], [cardPlace], [address], [phoneNumber], [email], [specializedId], [campusId], [parentId]) VALUES (43, N'Dang Cong ', N'Kien', CAST(N'2022-03-16' AS Date), 1, NULL, NULL, NULL, N'Phuc Dong Long Bien Ha Noi', 123456789, N'kiend1401@gmail.com', 4, 5, NULL)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
ALTER TABLE [dbo].[Academic_Campus]  WITH CHECK ADD  CONSTRAINT [FK_Academic_Campus_Account] FOREIGN KEY([campusId])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Academic_Campus] CHECK CONSTRAINT [FK_Academic_Campus_Account]
GO
ALTER TABLE [dbo].[Academic_Campus]  WITH CHECK ADD  CONSTRAINT [FK_Academic_Campus_Campus] FOREIGN KEY([accountId])
REFERENCES [dbo].[Campus] ([id])
GO
ALTER TABLE [dbo].[Academic_Campus] CHECK CONSTRAINT [FK_Academic_Campus_Campus]
GO
ALTER TABLE [dbo].[Academic_Student]  WITH CHECK ADD  CONSTRAINT [FK_Academic_Student_Student] FOREIGN KEY([studentId])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Academic_Student] CHECK CONSTRAINT [FK_Academic_Student_Student]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Campus] FOREIGN KEY([campusId])
REFERENCES [dbo].[Campus] ([id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Campus]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Parent] FOREIGN KEY([parentId])
REFERENCES [dbo].[Parent] ([id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Parent]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Specialized] FOREIGN KEY([specializedId])
REFERENCES [dbo].[Specialized] ([id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Specialized]
GO
USE [master]
GO
ALTER DATABASE [PRJ301] SET  READ_WRITE 
GO
