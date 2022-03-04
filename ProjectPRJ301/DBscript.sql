USE [PRJ301]
GO
/****** Object:  Table [dbo].[Academic_Campus]    Script Date: 3/4/2022 10:09:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Academic_Campus](
	[campusId] [int] NOT NULL,
	[accountId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Academic_Student]    Script Date: 3/4/2022 10:09:35 PM ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 3/4/2022 10:09:35 PM ******/
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
/****** Object:  Table [dbo].[Campus]    Script Date: 3/4/2022 10:09:35 PM ******/
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
/****** Object:  Table [dbo].[Parent]    Script Date: 3/4/2022 10:09:35 PM ******/
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
/****** Object:  Table [dbo].[Specialized]    Script Date: 3/4/2022 10:09:35 PM ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 3/4/2022 10:09:35 PM ******/
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
