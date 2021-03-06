USE [master]
GO
/****** Object:  Database [Cowell1]    Script Date: 11/27/2016 1:29:46 AM ******/
CREATE DATABASE [Cowell1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cowell1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Cowell1.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Cowell1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Cowell1_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Cowell1] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cowell1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cowell1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cowell1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cowell1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cowell1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cowell1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cowell1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cowell1] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Cowell1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cowell1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cowell1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cowell1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cowell1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cowell1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cowell1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cowell1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cowell1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cowell1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cowell1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cowell1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cowell1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cowell1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cowell1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cowell1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cowell1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cowell1] SET  MULTI_USER 
GO
ALTER DATABASE [Cowell1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cowell1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cowell1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cowell1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Cowell1]
GO
/****** Object:  Table [dbo].[About]    Script Date: 11/27/2016 1:29:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[About](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](300) NOT NULL,
	[image] [varchar](200) NULL,
	[contents] [nvarchar](4000) NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/27/2016 1:29:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category_Rec]    Script Date: 11/27/2016 1:29:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Rec](
	[id] [int] NOT NULL,
	[name] [nvarchar](500) NULL,
 CONSTRAINT [PK_Category_Rec] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 11/27/2016 1:29:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[company] [nvarchar](500) NULL,
	[email] [varchar](200) NOT NULL,
	[phone] [int] NOT NULL,
	[branch] [nvarchar](500) NULL,
	[contents] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/27/2016 1:29:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] NOT NULL,
	[name] [nvarchar](400) NULL,
	[logo] [varchar](200) NULL,
	[address] [nvarchar](1000) NULL,
	[description] [nvarchar](500) NULL,
	[contents] [nvarchar](4000) NULL,
	[create_at] [date] NULL,
	[upadate_at] [date] NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[News]    Script Date: 11/27/2016 1:29:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[News](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_category] [int] NULL,
	[title] [nvarchar](1000) NULL,
	[image] [varchar](200) NULL,
	[description] [nvarchar](4000) NULL,
	[contents] [nvarchar](4000) NULL,
	[author] [nvarchar](150) NULL,
	[create_at] [date] NULL,
	[update_at] [date] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Recruitments]    Script Date: 11/27/2016 1:29:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recruitments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NULL,
	[summary] [nvarchar](500) NULL,
	[description] [nvarchar](4000) NULL,
	[requirement] [nvarchar](4000) NULL,
	[interest] [nvarchar](4000) NULL,
	[address] [nvarchar](250) NULL,
	[create_at] [date] NULL,
	[start_recruitment] [date] NULL,
	[end_recruitment] [date] NULL,
	[status] [int] NULL,
	[id_category] [int] NULL,
 CONSTRAINT [PK_recruitments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Slide]    Script Date: 11/27/2016 1:29:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Slide](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NULL,
	[img] [varchar](150) NULL,
	[url] [varchar](1000) NULL,
	[img1] [varchar](150) NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Status]    Script Date: 11/27/2016 1:29:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[id] [int] NOT NULL,
	[name] [nvarchar](150) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/27/2016 1:29:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[name] [nvarchar](100) NULL,
	[role] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([id], [title], [image], [contents], [created_at], [updated_at], [status]) VALUES (1, N'về about', N'img', N'được rồi', CAST(0xFA3A0B00 AS Date), CAST(0xFB3A0B00 AS Date), 1)
INSERT [dbo].[About] ([id], [title], [image], [contents], [created_at], [updated_at], [status]) VALUES (3, N'thử lần một', N'img', N'<p><span style="font-size: 14pt;">th&agrave;nh c&ocirc;ng rồi ok nh&eacute;&nbsp;</span></p>', CAST(0x0C3C0B00 AS Date), CAST(0x0C3C0B00 AS Date), 1)
INSERT [dbo].[About] ([id], [title], [image], [contents], [created_at], [updated_at], [status]) VALUES (4, N'thử lần một ok', N'img', N'<p><span style="font-size: 14pt;">th&agrave;nh c&ocirc;ng rồi</span></p>', CAST(0x0C3C0B00 AS Date), CAST(0x0C3C0B00 AS Date), 2)
INSERT [dbo].[About] ([id], [title], [image], [contents], [created_at], [updated_at], [status]) VALUES (5, N'thử lần một ok 1', N'img', N'<p><span style="font-size: 14pt;">th&agrave;nh c&ocirc;ng rồi ok nh&eacute;</span></p>', CAST(0x0C3C0B00 AS Date), CAST(0x0C3C0B00 AS Date), 2)
INSERT [dbo].[About] ([id], [title], [image], [contents], [created_at], [updated_at], [status]) VALUES (6, N'thử lần 2', N'img', N'<p>thử lần 2</p>', CAST(0x253C0B00 AS Date), CAST(0x253C0B00 AS Date), 2)
SET IDENTITY_INSERT [dbo].[About] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([id], [name]) VALUES (1, N'Sự Kiện')
INSERT [dbo].[Categories] ([id], [name]) VALUES (2, N'Thông Báo')
SET IDENTITY_INSERT [dbo].[Categories] OFF
INSERT [dbo].[Category_Rec] ([id], [name]) VALUES (1, N'java')
INSERT [dbo].[Category_Rec] ([id], [name]) VALUES (2, N'c#')
INSERT [dbo].[Category_Rec] ([id], [name]) VALUES (3, N'php')
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([id], [name], [company], [email], [phone], [branch], [contents]) VALUES (1, N'quyen', N'sdf', N'sdf@gmail.com', 123, N'2', N'sdf')
INSERT [dbo].[Contact] ([id], [name], [company], [email], [phone], [branch], [contents]) VALUES (9, N'', N'', N'', 0, N'Bộ phận sales', N'')
INSERT [dbo].[Contact] ([id], [name], [company], [email], [phone], [branch], [contents]) VALUES (10, N'quyen', N'', N'quyen@gmail.com', 123, N'Bộ phận tuyển dụng', N'code')
INSERT [dbo].[Contact] ([id], [name], [company], [email], [phone], [branch], [contents]) VALUES (12, N'quyen', N'', N'quyen@gmail.com', 1, N'Bộ phận sales', N'')
INSERT [dbo].[Contact] ([id], [name], [company], [email], [phone], [branch], [contents]) VALUES (13, N'quyen', N'', N'quyen03@gmail.com', 1, N'Bộ phận sales', N'')
INSERT [dbo].[Contact] ([id], [name], [company], [email], [phone], [branch], [contents]) VALUES (15, N'quyen', N'', N'quyen@gmail.com', 123, N'Bộ phận sales', N'')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([id], [id_category], [title], [image], [description], [contents], [author], [create_at], [update_at], [status]) VALUES (3, 2, N'quyền test', N'/baitap/resources/clients/images/Tang-4-office-315x189_6.jpg', N'quyền', N'<p>quyền</p>', N'quyền', CAST(0x253C0B00 AS Date), CAST(0x253C0B00 AS Date), 2)
INSERT [dbo].[News] ([id], [id_category], [title], [image], [description], [contents], [author], [create_at], [update_at], [status]) VALUES (6, 1, N'sơn', N'/baitap/resources/clients/images/Tang-4-office-315x189_6.jpg', N'sơn', N'<p>đang l&agrave;m g&igrave; đấy</p>', N'sơn', CAST(0x253C0B00 AS Date), CAST(0x253C0B00 AS Date), 2)
INSERT [dbo].[News] ([id], [id_category], [title], [image], [description], [contents], [author], [create_at], [update_at], [status]) VALUES (7, 1, N'Thông báo hoàn thành việc mở rộng và cải tạo tầng 6 trung tâm phát triển tại Hà Nội 4 ', N'/baitap/resources/clients/images/full20160812_152552.JPG', N'CO-WELL Asia chính thức đưa tầng 6 của tòa nhà 3D vào sử dụng, nâng tổng diện tích văn phòng tại Hà Nội lên tới 1800m2.', N'<p>Trong chuỗi c&aacute;c hoạt động đ&oacute;n ch&agrave;o thương hiệu mới, tạo cơ sở triển khai c&aacute;c kế hoạch ph&aacute;t triển, mở rộng, CO-WELL Asia đ&atilde; triển khai l&agrave;m mới to&agrave;n bộ diện mạo khu văn ph&ograve;ng l&agrave;m việc. Tiếp nối sự kiện chuyển địa chỉ chi nh&aacute;nh Đ&agrave; Nẵng, ng&agrave;y 11/8 vừa qua, CO-WELL Asia đ&atilde; ch&iacute;nh thức ho&agrave;n th&agrave;nh việc mở rộng v&agrave; l&agrave;m mới <strong>tầng 6</strong> của <strong>t&ograve;a nh&agrave; 3D</strong>, s&aacute;t nhập th&ecirc;m kh&ocirc;ng gian n&agrave;y v&agrave;o văn ph&ograve;ng ph&aacute;t triển tại H&agrave; Nội, n&acirc;ng tổng diện t&iacute;ch l&ecirc;n tới <strong>1800m2</strong>. Khu văn ph&ograve;ng tại H&agrave; Nội hiện ước t&iacute;nh c&oacute; đủ sức chứa phục vụ cho gần 400 nh&acirc;n sự mới</p>', N'quyền', CAST(0x133C0B00 AS Date), CAST(0x133C0B00 AS Date), 2)
INSERT [dbo].[News] ([id], [id_category], [title], [image], [description], [contents], [author], [create_at], [update_at], [status]) VALUES (8, 1, N'Thông báo hoàn thành việc mở rộng và cải tạo tầng 6 trung tâm phát triển tại Hà Nội 3', N'/baitap/resources/clients/images/full20160812_152552.JPG', N'CO-WELL Asia chính thức đưa tầng 6 của tòa nhà 3D vào sử dụng, nâng tổng diện tích văn phòng tại Hà Nội lên tới 1800m2.', N'<p>Trong chuỗi c&aacute;c hoạt động đ&oacute;n ch&agrave;o thương hiệu mới, tạo cơ sở triển khai c&aacute;c kế hoạch ph&aacute;t triển, mở rộng, CO-WELL Asia đ&atilde; triển khai l&agrave;m mới to&agrave;n bộ diện mạo khu văn ph&ograve;ng l&agrave;m việc. Tiếp nối sự kiện chuyển địa chỉ chi nh&aacute;nh Đ&agrave; Nẵng, ng&agrave;y 11/8 vừa qua, CO-WELL Asia đ&atilde; ch&iacute;nh thức ho&agrave;n th&agrave;nh việc mở rộng v&agrave; l&agrave;m mới <strong>tầng 6</strong> của <strong>t&ograve;a nh&agrave; 3D</strong>, s&aacute;t nhập th&ecirc;m kh&ocirc;ng gian n&agrave;y v&agrave;o văn ph&ograve;ng ph&aacute;t triển tại H&agrave; Nội, n&acirc;ng tổng diện t&iacute;ch l&ecirc;n tới <strong>1800m2</strong>. Khu văn ph&ograve;ng tại H&agrave; Nội hiện ước t&iacute;nh c&oacute; đủ sức chứa phục vụ cho gần 400 nh&acirc;n sự.</p>', N'QUYỀN', CAST(0x133C0B00 AS Date), CAST(0x253C0B00 AS Date), 2)
INSERT [dbo].[News] ([id], [id_category], [title], [image], [description], [contents], [author], [create_at], [update_at], [status]) VALUES (9, 1, N'Thông báo hoàn thành việc mở rộng và cải tạo tầng 6 trung tâm phát triển tại Hà Nội 1', N'/baitap/resources/clients/images/full20160812_152552.JPG', N'CO-WELL Asia chính thức đưa tầng 6 của tòa nhà 3D vào sử dụng, nâng tổng diện tích văn phòng tại Hà Nội lên tới 1800m2.', N'<p>Kh&ocirc;ng gian mới của CO-WELL được thiết kế theo xu hướng hiện đại, với t&ocirc;ng m&agrave;u chủ đạo l&agrave; xanh l&aacute; c&acirc;y. Kh&ocirc;ng gian mới bao gồm: <em><strong>trung t&acirc;m đ&agrave;o tạo</strong></em> &ndash; nơi diễn ra c&aacute;c hoạt động như seminar nội bộ, c&aacute;c kh&oacute;a đ&agrave;o tạo IT cho sinh vi&ecirc;n, lớp tiếng Nhật cho nh&acirc;n vi&ecirc;n v.v; v&agrave; văn ph&ograve;ng l&agrave;m việc của <em><strong>CODESHORE</strong></em> &ndash; Bộ phận s&aacute;ng tạo chịu tr&aacute;ch nhiệm cho mảng Front-end, phụ tr&aacute;ch c&aacute;c dự &aacute;n x&acirc;y dựng website của CO-WELL. CO-WELL hi vọng kh&ocirc;ng gian mới n&agrave;y sẽ khơi dậy đam m&ecirc;, khơi nguồn cảm hứng, tạo điều kiện cho c&aacute;c bạn sinh vi&ecirc;n cũng như nh&acirc;n vi&ecirc;n trong c&ocirc;ng ty học tập.</p>', N'QUYỀN', CAST(0x143C0B00 AS Date), CAST(0x253C0B00 AS Date), 2)
INSERT [dbo].[News] ([id], [id_category], [title], [image], [description], [contents], [author], [create_at], [update_at], [status]) VALUES (10, 2, N'Thông báo hoàn thành việc mở rộng và cải tạo tầng 6 trung tâm phát triển tại Hà Nội 0', N'/baitap/resources/clients/images/full20160812_152552.JPG', N'CO-WELL Châu Á xin trân trọng thông báo đã chính thức hoàn tất quy trình đổi tên thương mại từ "SETA International Châu Á" sang "CO-WELL Châu Á".', N'<p>Kh&ocirc;ng gian mới của CO-WELL được thiết kế theo xu hướng hiện đại, với t&ocirc;ng m&agrave;u chủ đạo l&agrave; xanh l&aacute; c&acirc;y. Kh&ocirc;ng gian mới bao gồm: <em><strong>trung t&acirc;m đ&agrave;o tạo</strong></em> &ndash; nơi diễn ra c&aacute;c hoạt động như seminar nội bộ, c&aacute;c kh&oacute;a đ&agrave;o tạo IT cho sinh vi&ecirc;n, lớp tiếng Nhật cho nh&acirc;n vi&ecirc;n v.v; v&agrave; văn ph&ograve;ng l&agrave;m việc của <em><strong>CODESHORE</strong></em> &ndash; Bộ phận s&aacute;ng tạo chịu tr&aacute;ch nhiệm cho mảng Front-end, phụ tr&aacute;ch c&aacute;c dự &aacute;n x&acirc;y dựng website của CO-WELL. CO-WELL hi vọng kh&ocirc;ng gian mới n&agrave;y sẽ khơi dậy đam m&ecirc;, khơi nguồn cảm hứng, tạo điều kiện cho c&aacute;c bạn sinh vi&ecirc;n cũng như nh&acirc;n vi&ecirc;n trong c&ocirc;ng ty học tập v&agrave; s&aacute;ng tạo.</p>
<p>Check it out</p>', N'QUYỀN', CAST(0x213C0B00 AS Date), CAST(0x253C0B00 AS Date), 2)
INSERT [dbo].[News] ([id], [id_category], [title], [image], [description], [contents], [author], [create_at], [update_at], [status]) VALUES (1013, 1, N'Thông báo hoàn thành việc mở rộng và cải tạo tầng 6 trung tâm phát triển tại Hà Nội', N'/baitap/resources/clients/images/full20160812_152552.JPG', N'Thông báo hoàn thành việc mở rộng và cải tạo tầng 6 trung tâm phát triển tại Hà Nội', N'<p>Th&ocirc;ng b&aacute;o ho&agrave;n th&agrave;nh việc mở rộng v&agrave; cải tạo tầng 6 trung t&acirc;m ph&aacute;t triển tại H&agrave; Nội</p>', N'quyền', CAST(0x233C0B00 AS Date), CAST(0x243C0B00 AS Date), 1)
INSERT [dbo].[News] ([id], [id_category], [title], [image], [description], [contents], [author], [create_at], [update_at], [status]) VALUES (1014, 2, N'Thông báo hoàn thành việc mở rộng và cải tạo tầng 6 ', N'/baitap/resources/clients/images/full20160812_152552.JPG', N'Thông báo hoàn thành việc mở rộng và cải tạo tầng 6 ', N'<p>Th&ocirc;ng b&aacute;o ho&agrave;n th&agrave;nh việc mở rộng v&agrave; cải tạo tầng 6</p>', N'quyền', CAST(0x233C0B00 AS Date), CAST(0x233C0B00 AS Date), 1)
INSERT [dbo].[News] ([id], [id_category], [title], [image], [description], [contents], [author], [create_at], [update_at], [status]) VALUES (1015, 1, N'quyền', N'/co-well/resources/clients/images/full20160812_152552.JPG', N'Zfsdf', N'<p>&nbsp;sdf</p>', N'quyền', CAST(0x143C0B00 AS Date), CAST(0x233C0B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[Recruitments] ON 

INSERT [dbo].[Recruitments] ([id], [name], [summary], [description], [requirement], [interest], [address], [create_at], [start_recruitment], [end_recruitment], [status], [id_category]) VALUES (4, N'Thực tập sinh', N'Tham gia phát triển trong các dự án liên quan đến thông tin thời tiết, bản đồ sử dụng ngôn ngữ Perl, HTML5, CSS3, JQuery và các framework Javascript khác', N'<p>L&agrave;m trong m&ocirc;i trường chuy&ecirc;n nghiệp <span style="font-size: 20pt;">được l&agrave;m dự &aacute;n thật ok</span></p>', N'<p>c&oacute; căn bản về lập tr&igrave;nh hướng đối tượng</p>', N'<p>được hỗ trợ v&agrave; c&oacute; cơ hội l&agrave;m nh&acirc;n vi&ecirc;n ch&iacute;nh thức</p>', N'abc', CAST(0x0B3C0B00 AS Date), CAST(0x0B3C0B00 AS Date), CAST(0x1B3C0B00 AS Date), 2, 2)
INSERT [dbo].[Recruitments] ([id], [name], [summary], [description], [requirement], [interest], [address], [create_at], [start_recruitment], [end_recruitment], [status], [id_category]) VALUES (6, N'Kỹ sư cầu nối Tiếng Nhật BrSE', N'Là cầu nối giữa khách hàng Nhật Bản và đội dự án Offshore ở Việt Nam', N'<ul>
<li><span style="font-size: 12pt;">L&agrave; cầu nối giữa kh&aacute;ch h&agrave;ng Nhật Bản v&agrave; đội dự &aacute;n Offshore ở Việt Nam.</span></li>
<li><span style="font-size: 12pt;">L&agrave;m việc trực tiếp với kh&aacute;ch h&agrave;ng Nhật: giao tiếp, thương lượng, nhận, ph&acirc;n t&iacute;ch c&aacute;c y&ecirc;u cầu của dự &aacute;n phần mềm... v&agrave; truyền đạt cho đội dự &aacute;n ở Việt Nam.</span></li>
<li><span style="font-size: 12pt;">L&agrave; PM của dự &aacute;n: Lập kế hoạch, theo d&otilde;i tiến độ, quản l&yacute; nh&oacute;m Onsiters&hellip;</span></li>
<li><span style="font-size: 12pt;">Kiểm so&aacute;t tiến độ thực hiện dự &aacute;n, phối hợp với kh&aacute;ch h&agrave;ng v&agrave; gi&aacute;m đốc trong việc quản l&yacute; dự &aacute;n.</span></li>
</ul>', N'<p><strong>1. Đối với vị tr&iacute; BSE&nbsp;</strong><br />- Tiếng nhật tương đương N2, giao tiếp tốt&nbsp;<br />- C&oacute; &iacute;t nhất 1 năm kinh nghiệm quản l&iacute; dự &aacute;n phần mềm cho kh&aacute;ch h&agrave;ng Nhật&nbsp;<br />- C&oacute; kinh nghiệm v&agrave; th&agrave;nh thạo một trong c&aacute;c ng&ocirc;n ngữ lập tr&igrave;nh PHP/Java/.Net/iOS/Android,...<br />- Ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n đ&atilde; từng l&agrave;m việc tại Nhật.<br /><br /><strong>2. Đối với vị tr&iacute; Sub-BSE&nbsp;</strong><br />- Tiếng nhật từ N3 trở l&ecirc;n, giao tiếp tốt&nbsp;<br />- C&oacute; kinh nghiệm v&agrave; th&agrave;nh thạo một trong c&aacute;c ng&ocirc;n ngữ lập tr&igrave;nh PHP/Java/.Net/iOS/Android,...<br />- Đ&atilde; từng l&agrave;m Team lead/ Tech lead l&agrave; một lợi thế lớn<br />- Đối với vị tr&iacute; Sub-BSE sẽ c&oacute; cơ hội tham gia đ&agrave;o tạo định hướng trở th&agrave;nh BrSE tại Nhật Bản v&agrave; Việt Nam</p>', N'<p>THU NHẬP</p>
<ul>
<li>Mức lương khởi điểm hấp dẫn, cạnh tranh, tương xứng với khả năng v&agrave; kinh nghiệm l&agrave;m việc (Up to&nbsp;$2300)</li>
<li>Lương th&aacute;ng 13</li>
<li>Thưởng theo hiệu quả c&ocirc;ng việc 2 lần/năm</li>
<li>X&eacute;t tăng lương theo năng lực v&agrave; kết quả c&ocirc;ng việc 2 lần/năm</li>
</ul>
<p>BẢO HIỂM V&Agrave; C&Aacute;C CH&Iacute;NH S&Aacute;CH Đ&Atilde;I NGỘ</p>
<ul>
<li>Bảo hiểm x&atilde; hội, Bảo hiểm y tế, Bảo hiểm thất nghiệp theo chế độ nh&agrave; nước ban h&agrave;nh.</li>
<li>Bảo hiểm sức khỏe d&agrave;nh cho CBNV ( kh&aacute;m chữa bệnh to&agrave;n phần mở rộng với c&aacute;c dịch vụ cao cấp tại c&aacute;c bệnh viện h&agrave;ng đầu: Vinmec, Hồng Ngọc, Thu C&uacute;c, Việt &ndash; Ph&aacute;p&hellip;)</li>
<li>Kh&aacute;m sức khỏe định kỳ 1 năm/1 lần.</li>
<li>Nghỉ ng&agrave;y sinh nhật hưởng lương trong th&aacute;ng.</li>
<li>Trợ cấp thai sản d&agrave;nh cho nh&acirc;n vi&ecirc;n nữ.</li>
</ul>', N'Hà Nội', CAST(0x143C0B00 AS Date), CAST(0x143C0B00 AS Date), CAST(0x223C0B00 AS Date), 2, 3)
INSERT [dbo].[Recruitments] ([id], [name], [summary], [description], [requirement], [interest], [address], [create_at], [start_recruitment], [end_recruitment], [status], [id_category]) VALUES (7, N'Lập trình viên iOS', N'Lập trình chính trong các dự án công nghệ sử dụng iOS', N'<ul>
<li><span style="font-size: 12pt;">Lập tr&igrave;nh ch&iacute;nh trong c&aacute;c dự &aacute;n c&ocirc;ng nghệ sử dụng iOS</span></li>
<li><span style="font-size: 12pt;">Tham gia c&aacute;c c&ocirc;ng đoạn t&igrave;m hiểu y&ecirc;u cầu, ph&acirc;n t&iacute;ch, thiết kế, nghi&ecirc;n cứu c&ocirc;ng nghệ khi được ph&acirc;n c&ocirc;ng.</span></li>
<li><span style="font-size: 12pt;">Tham gia quản l&yacute; nh&oacute;m nếu c&oacute; khả năng ph&ugrave; hợp.</span></li>
</ul>', N'<p><span style="font-size: 12pt;">- 2 năm kinh nghiệm&nbsp;ph&aacute;t triển c&ocirc;ng nghệ OS.</span></p>
<p><span style="font-size: 12pt;">- Kinh nghiệm ph&aacute;t triển mobile li&ecirc;n quan đến tối ưu h&oacute;a hiệu suất, bộ nhớ đệm, bảo mật</span></p>
<p><span style="font-size: 12pt;">- Kinh nghiệm ph&aacute;t triển c&aacute;c ứng dụng iPhone / iPad, ứng dụng di động cho Android, Blackberry v&agrave; hiểu biết tốt về hệ sinh th&aacute;i ứng dụng di động.</span></p>
<p><span style="font-size: 12pt;">- C&oacute; kinh nghiệm trong Java/ Android l&agrave; một lợi thế.</span></p>', N'<ul>
<li>Mức lương khởi điểm hấp dẫn, cạnh tranh, tương xứng với khả năng v&agrave; kinh nghiệm l&agrave;m việc ($500-$900)</li>
<li>Thưởng mềm 2 lần/năm</li>
<li>X&eacute;t tăng lương theo năng lực v&agrave; kết quả c&ocirc;ng việc 2 lần/năm.</li>
<li>Lương th&aacute;ng 13</li>
<li>Được hưởng Bảo hiểm x&atilde; hội, Bảo hiểm y tế, Bảo hiểm thất nghiệp theo chế độ nh&agrave; nước ban h&agrave;nh.</li>
<li>Nghỉ ng&agrave;y sinh nhật hưởng lương trong th&aacute;ng</li>
<li>Bảo hiểm sức khỏe d&agrave;nh cho CBNV</li>
<li>Trợ cấp thai sản (Hưởng th&ecirc;m 6 th&aacute;ng lương của nh&acirc;n vi&ecirc;n trừ đi lương do Bảo hiểm v&agrave; nh&agrave; nước chi trả)</li>
<li>Trợ cấp tiếng Nhật v&agrave; c&aacute;c chứng chỉ IT li&ecirc;n quan (h&igrave;nh thức: khen thưởng, tăng lương...)</li>
<li>Được tham gia c&aacute;c C&acirc;u lạc bộ của C&ocirc;ng ty: CLB B&oacute;ng đ&aacute;, c&aacute;c CLB Game, CLB Yoga, CLB Cầu L&ocirc;ng..</li>
</ul>', N'Hà Nội', CAST(0x143C0B00 AS Date), CAST(0x143C0B00 AS Date), CAST(0x1B3C0B00 AS Date), 2, 3)
INSERT [dbo].[Recruitments] ([id], [name], [summary], [description], [requirement], [interest], [address], [create_at], [start_recruitment], [end_recruitment], [status], [id_category]) VALUES (12, N'java web', N'Lập trình chính trong các dự án công nghệ sử dụng iOS', N'<p>Lập tr&igrave;nh ch&iacute;nh trong c&aacute;c dự &aacute;n c&ocirc;ng nghệ sử dụng iOS</p>', N'<p>Lập tr&igrave;nh ch&iacute;nh trong c&aacute;c dự &aacute;n c&ocirc;ng nghệ sử dụng iOS</p>', N'<p>Lập tr&igrave;nh ch&iacute;nh trong c&aacute;c dự &aacute;n c&ocirc;ng nghệ sử dụng iOS</p>', N'Hà Nội', CAST(0x223C0B00 AS Date), CAST(0x223C0B00 AS Date), CAST(0x233C0B00 AS Date), 2, 2)
INSERT [dbo].[Recruitments] ([id], [name], [summary], [description], [requirement], [interest], [address], [create_at], [start_recruitment], [end_recruitment], [status], [id_category]) VALUES (13, N'Kỹ sư cầu nối Tiếng Nhật BrSE', N'Kỹ sư cầu nối Tiếng Nhật BrSE', N'<p>Kỹ sư cầu nối Tiếng Nhật BrSE</p>', N'<p>Kỹ sư cầu nối Tiếng Nhật BrSE</p>', N'<p>Kỹ sư cầu nối Tiếng Nhật BrSE</p>', N'Hà Nội', CAST(0x223C0B00 AS Date), CAST(0x223C0B00 AS Date), CAST(0x223C0B00 AS Date), 1, 1)
INSERT [dbo].[Recruitments] ([id], [name], [summary], [description], [requirement], [interest], [address], [create_at], [start_recruitment], [end_recruitment], [status], [id_category]) VALUES (14, N'Lập trình viên iOS', N'Lập trình viên iOS', N'<p>Lập tr&igrave;nh vi&ecirc;n iOS</p>', N'<p>Lập tr&igrave;nh vi&ecirc;n iOS</p>', N'<p>Lập tr&igrave;nh vi&ecirc;n iOS</p>', N'Hà Nội', CAST(0x233C0B00 AS Date), CAST(0x233C0B00 AS Date), CAST(0x243C0B00 AS Date), 2, 3)
INSERT [dbo].[Recruitments] ([id], [name], [summary], [description], [requirement], [interest], [address], [create_at], [start_recruitment], [end_recruitment], [status], [id_category]) VALUES (15, N'Java/ Android', N'Java/ Android', N'<p>Java/ Android</p>', N'<p>Java/ Android</p>', N'<p>Java/ Android</p>', N'Hà Nội', CAST(0x223C0B00 AS Date), CAST(0x223C0B00 AS Date), CAST(0x233C0B00 AS Date), 1, 1)
INSERT [dbo].[Recruitments] ([id], [name], [summary], [description], [requirement], [interest], [address], [create_at], [start_recruitment], [end_recruitment], [status], [id_category]) VALUES (16, N'java web', N'java web test 26-12', N'<p>java web</p>', N'<p>java web</p>', N'<p>java web</p>', N'Hà Nội', CAST(0x253C0B00 AS Date), CAST(0x253C0B00 AS Date), CAST(0x293C0B00 AS Date), 2, 3)
SET IDENTITY_INSERT [dbo].[Recruitments] OFF
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([id], [name], [img], [url], [img1]) VALUES (1, N'Tư vấn chiến lược CNTT', N'resources/clients/images/pc20160615_163914.png', N'http://localhost:8084/co-well/consulting', N'resources/clients/images/pc20160526_233955.png')
INSERT [dbo].[Slide] ([id], [name], [img], [url], [img1]) VALUES (2, N'Tích hợp hệ thống', N'resources/clients/images/pc20160616_150533.png', N'http://localhost:8084/co-well/system-integration', N'resources/clients/images/pc20160526_234049.png')
INSERT [dbo].[Slide] ([id], [name], [img], [url], [img1]) VALUES (3, N'Outsourcing', N'resources/clients/images/pc20160616_150621.png', N'http://localhost:8084/co-well/outsourcing', N'resources/clients/images/pc20160526_233822.png')
SET IDENTITY_INSERT [dbo].[Slide] OFF
INSERT [dbo].[Status] ([id], [name]) VALUES (1, N'Đăng')
INSERT [dbo].[Status] ([id], [name]) VALUES (2, N'Đợi')
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [email], [password], [name], [role]) VALUES (3, N'quyen@gmail.com', N'123', N'phạm thế quyền123456', 1)
INSERT [dbo].[Users] ([id], [email], [password], [name], [role]) VALUES (5, N'quyen@1gmail.com', N'123456', N'phạm thế quyền', 1)
INSERT [dbo].[Users] ([id], [email], [password], [name], [role]) VALUES (6, N'duyet@gmail.com', N'123', N'phạm thế duyệt ', 1)
INSERT [dbo].[Users] ([id], [email], [password], [name], [role]) VALUES (7, N'quyen@123gmail.com', N'123', N'quyen123', 1)
INSERT [dbo].[Users] ([id], [email], [password], [name], [role]) VALUES (8, N'123@gmail.com', N'123', N'quyen anh', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_Categories] FOREIGN KEY([id_category])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_Categories]
GO
ALTER TABLE [dbo].[Recruitments]  WITH CHECK ADD  CONSTRAINT [FK_Recruitments_Category_Rec] FOREIGN KEY([id_category])
REFERENCES [dbo].[Category_Rec] ([id])
GO
ALTER TABLE [dbo].[Recruitments] CHECK CONSTRAINT [FK_Recruitments_Category_Rec]
GO
USE [master]
GO
ALTER DATABASE [Cowell1] SET  READ_WRITE 
GO
