USE [mvcass]
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 12/15/2018 09:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](30) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[created_at] [timestamp] NULL,
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_user] ON
INSERT [dbo].[tbl_user] ([id], [username], [email], [password]) VALUES (1, N'Vannoch', N'admin@gmail.com', N'123abc')
INSERT [dbo].[tbl_user] ([id], [username], [email], [password]) VALUES (2, N'Dara', N'dara@gmail.com', N'lPKEQDyXGH4dLCMzBj+YFw==')
INSERT [dbo].[tbl_user] ([id], [username], [email], [password]) VALUES (3, N'Vannoch', N'vannoch@gmail.com', N'9s4DtnB4SI8tFyyD50/j2g==')
INSERT [dbo].[tbl_user] ([id], [username], [email], [password]) VALUES (4, N'kinal', N'kinal@gmail.com', N'123123')
INSERT [dbo].[tbl_user] ([id], [username], [email], [password]) VALUES (5, N'thany', N'thany@gmail.com', N'123123')
INSERT [dbo].[tbl_user] ([id], [username], [email], [password]) VALUES (6, N'buntha', N'buntha@gmail.com', N'123')
SET IDENTITY_INSERT [dbo].[tbl_user] OFF
/****** Object:  Table [dbo].[tbl_article]    Script Date: 12/15/2018 09:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[description] [nvarchar](300) NOT NULL,
	[created_at] [date] NULL,
	[author] [int] NOT NULL,
 CONSTRAINT [PK_tbl_article] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_article] ON
INSERT [dbo].[tbl_article] ([id], [title], [description], [created_at], [author]) VALUES (1, N'Article 1 Testing a', N'This is the description of Article 1.Pls Read ', CAST(0x103F0B00 AS Date), 6)
INSERT [dbo].[tbl_article] ([id], [title], [description], [created_at], [author]) VALUES (2, N'A2', N'hhg bgbg fff', CAST(0xF23E0B00 AS Date), 2)
INSERT [dbo].[tbl_article] ([id], [title], [description], [created_at], [author]) VALUES (3, N'Article 3', N'Here is the article 3', CAST(0xD33E0B00 AS Date), 2)
INSERT [dbo].[tbl_article] ([id], [title], [description], [created_at], [author]) VALUES (5, N'My new article', N'description dessl ksla ksk', CAST(0xB53E0B00 AS Date), 3)
INSERT [dbo].[tbl_article] ([id], [title], [description], [created_at], [author]) VALUES (6, N'My Testing', N'dkksal skals aksl', CAST(0xB53E0B00 AS Date), 4)
INSERT [dbo].[tbl_article] ([id], [title], [description], [created_at], [author]) VALUES (7, N'Hot News 1', N'Here is hot new aksla skals lask', CAST(0xB53E0B00 AS Date), 4)
INSERT [dbo].[tbl_article] ([id], [title], [description], [created_at], [author]) VALUES (8, N'Just Testing testing', N'just testign aksa laskdfja kfaieoweis', CAST(0xB53E0B00 AS Date), 4)
INSERT [dbo].[tbl_article] ([id], [title], [description], [created_at], [author]) VALUES (9, N'Maga Concert', N'kaldka lakdal ieowoa oqosi', CAST(0xB53E0B00 AS Date), 4)
INSERT [dbo].[tbl_article] ([id], [title], [description], [created_at], [author]) VALUES (10, N'Waiting for interviewing', N'aldakdlas  alsdk aint ado', CAST(0xB53E0B00 AS Date), 4)
INSERT [dbo].[tbl_article] ([id], [title], [description], [created_at], [author]) VALUES (11, N'Best keyword is here', N'lakdla alkdal ppwp9apa', CAST(0xB53E0B00 AS Date), 4)
INSERT [dbo].[tbl_article] ([id], [title], [description], [created_at], [author]) VALUES (12, N'Wow Amazingql', N'alaks 82828aao aldal', CAST(0xB53E0B00 AS Date), 4)
INSERT [dbo].[tbl_article] ([id], [title], [description], [created_at], [author]) VALUES (14, N'Really Love Okoone', N'Okoone is my place like home', CAST(0x113F0B00 AS Date), 6)
INSERT [dbo].[tbl_article] ([id], [title], [description], [created_at], [author]) VALUES (15, N'dads', N'ada', CAST(0x113F0B00 AS Date), 4)
INSERT [dbo].[tbl_article] ([id], [title], [description], [created_at], [author]) VALUES (17, N'My Title', N'Here is my description', CAST(0x113F0B00 AS Date), 4)
SET IDENTITY_INSERT [dbo].[tbl_article] OFF
/****** Object:  StoredProcedure [dbo].[AddNewUser]    Script Date: 12/15/2018 09:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[AddNewUser] 
(  
   @username nvarchar (30),  
   @email nvarchar (50),  
   @password nvarchar (50)
)  
as  
begin  
   Insert into tbl_user("username","email","password") values(@username,@email,@password)  ;;
End
GO
/****** Object:  StoredProcedure [dbo].[AddNewArticle]    Script Date: 12/15/2018 09:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AddNewArticle]
(  
   @title nvarchar (50),  
   @description nvarchar (400),  
   @created_at DATE,
   @author int 
)  
as  
begin  
   Insert into tbl_article(title,description,author) values(@title,@description,@author)  ;;
End
GO
