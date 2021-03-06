USE [master]
GO
/****** Object:  Database [Practice]    Script Date: 06/04/2018 15:34:03 ******/
CREATE DATABASE [Practice] ON  PRIMARY 
( NAME = N'Practice', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Practice.mdf' , SIZE = 60416KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Practice_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Practice_1.ldf' , SIZE = 57664KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Practice] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practice].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practice] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Practice] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Practice] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Practice] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Practice] SET ARITHABORT OFF
GO
ALTER DATABASE [Practice] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Practice] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Practice] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Practice] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Practice] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Practice] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Practice] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Practice] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Practice] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Practice] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Practice] SET  DISABLE_BROKER
GO
ALTER DATABASE [Practice] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Practice] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Practice] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Practice] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Practice] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Practice] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Practice] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Practice] SET  READ_WRITE
GO
ALTER DATABASE [Practice] SET RECOVERY FULL
GO
ALTER DATABASE [Practice] SET  MULTI_USER
GO
ALTER DATABASE [Practice] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Practice] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Practice', N'ON'
GO
USE [Practice]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[uid] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[students]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[students](
	[rollno] [numeric](2, 0) NOT NULL,
	[sname] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[rollno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Name] [varchar](50) NOT NULL,
	[Rollno] [int] NOT NULL,
	[Marks] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Rollno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[storestatus]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[storestatus](
	[storenofrom] [numeric](18, 0) NOT NULL,
	[status] [nchar](20) NOT NULL,
	[name] [nvarchar](max) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Storefee]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Storefee](
	[storenofrom] [numeric](18, 0) NOT NULL,
	[reservationfee] [numeric](18, 0) NOT NULL,
	[rent] [numeric](18, 0) NOT NULL,
	[charge50] [numeric](18, 0) NOT NULL,
	[charge25] [numeric](18, 0) NOT NULL,
	[charge15] [numeric](18, 0) NOT NULL,
	[lastyear] [numeric](18, 0) NOT NULL,
	[coveredcharge] [numeric](18, 0) NOT NULL,
	[other] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Storefee] PRIMARY KEY CLUSTERED 
(
	[storenofrom] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shopstatus]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shopstatus](
	[shopnofrom] [numeric](18, 0) NOT NULL,
	[status] [nchar](20) NOT NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK_shopstatus] PRIMARY KEY CLUSTERED 
(
	[shopnofrom] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shops]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shops](
	[Shopno] [numeric](30, 0) NOT NULL,
	[shopname] [varchar](30) NULL,
	[holdername] [varchar](30) NULL,
	[totapayment] [numeric](30, 0) NULL,
	[Due] [numeric](30, 0) NULL,
	[paid] [numeric](30, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Shopno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shopfee]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shopfee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shopnofrom] [numeric](18, 0) NOT NULL,
	[reservationfee] [numeric](18, 0) NOT NULL,
	[rent] [numeric](18, 0) NOT NULL,
	[charge50] [numeric](18, 0) NOT NULL,
	[charge25] [numeric](18, 0) NOT NULL,
	[charge15] [numeric](18, 0) NOT NULL,
	[lastyear] [numeric](18, 0) NOT NULL,
	[coveredcharge] [numeric](18, 0) NOT NULL,
	[other] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Shopfee_1] PRIMARY KEY CLUSTERED 
(
	[shopnofrom] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[date] [nchar](20) NOT NULL,
	[name] [nchar](30) NOT NULL,
	[fname] [nchar](30) NOT NULL,
	[address] [nchar](300) NOT NULL,
	[year] [nchar](15) NOT NULL,
	[block] [nchar](10) NOT NULL,
	[shopnofrom] [numeric](18, 0) NOT NULL,
	[shopnoto] [numeric](18, 0) NOT NULL,
	[no] [numeric](18, 0) NOT NULL,
	[category] [nchar](20) NOT NULL,
	[reservation] [numeric](18, 0) NOT NULL,
	[rent] [numeric](18, 0) NOT NULL,
	[charge50] [numeric](18, 0) NOT NULL,
	[charge25] [numeric](18, 0) NOT NULL,
	[charge15] [numeric](18, 0) NOT NULL,
	[lastyear] [numeric](18, 0) NOT NULL,
	[coveredcharge] [numeric](18, 0) NOT NULL,
	[other] [numeric](18, 0) NOT NULL,
	[total] [numeric](18, 0) NOT NULL,
	[paidreservation] [numeric](18, 0) NOT NULL,
	[paidrent] [numeric](18, 0) NOT NULL,
	[paidcharge50] [numeric](18, 0) NOT NULL,
	[paidcharge25] [numeric](18, 0) NOT NULL,
	[paidcharge15] [numeric](18, 0) NOT NULL,
	[paidlastyear] [numeric](18, 0) NOT NULL,
	[paidcoveredcharge] [numeric](18, 0) NOT NULL,
	[paidother] [numeric](18, 0) NOT NULL,
	[paidtotal] [numeric](18, 0) NOT NULL,
	[duereservation] [numeric](18, 0) NOT NULL,
	[duerent] [numeric](18, 0) NOT NULL,
	[duecharge50] [numeric](18, 0) NOT NULL,
	[duecharge25] [numeric](18, 0) NOT NULL,
	[duecharge15] [numeric](18, 0) NOT NULL,
	[duelastyear] [numeric](18, 0) NOT NULL,
	[duecoveredcharge] [numeric](18, 0) NOT NULL,
	[dueother] [numeric](18, 0) NOT NULL,
	[duetotal] [numeric](18, 0) NOT NULL,
	[storenofrom] [numeric](18, 0) NULL,
	[storenoto] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[year] [nchar](20) NOT NULL,
	[shopnofrom] [int] NOT NULL,
	[shopnoto] [int] NOT NULL,
	[noofshops] [int] NOT NULL,
	[blockno] [nchar](10) NOT NULL,
	[name] [nchar](30) NOT NULL,
	[fname] [nchar](30) NOT NULL,
	[address] [nchar](200) NOT NULL,
	[mobile] [numeric](10, 0) NOT NULL,
	[category] [nchar](20) NOT NULL,
	[proof] [nchar](20) NOT NULL,
	[type] [nchar](20) NOT NULL,
	[storenofrom] [numeric](18, 0) NULL,
	[storenoto] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[productid] [varchar](20) NOT NULL,
	[productname] [varchar](40) NULL,
	[productrate] [numeric](5, 0) NULL,
	[mfgdate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[productid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pic]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pic](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [image] NOT NULL,
 CONSTRAINT [PK_pic] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[date] [nchar](20) NOT NULL,
	[name] [nchar](30) NOT NULL,
	[fname] [nchar](30) NOT NULL,
	[address] [nchar](300) NOT NULL,
	[year] [nchar](20) NOT NULL,
	[shopnofrom] [numeric](18, 0) NOT NULL,
	[shopnoto] [numeric](18, 0) NOT NULL,
	[paidreservation] [numeric](18, 0) NOT NULL,
	[paidcharge15] [numeric](18, 0) NOT NULL,
	[paidtotal] [numeric](18, 0) NOT NULL,
	[typeofpayment] [nchar](20) NOT NULL,
	[date1] [nchar](20) NOT NULL,
	[storenofrom] [numeric](18, 0) NULL,
	[storenoto] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nodues]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nodues](
	[date] [nchar](15) NOT NULL,
	[name] [nvarchar](max) NULL,
	[fname] [nvarchar](max) NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[shopnofrom] [numeric](18, 0) NOT NULL,
	[shopnoto] [numeric](18, 0) NOT NULL,
	[block] [nchar](10) NOT NULL,
	[year] [nchar](15) NOT NULL,
	[reservation] [numeric](18, 0) NOT NULL,
	[charge15] [numeric](18, 0) NOT NULL,
	[total1] [numeric](18, 0) NOT NULL,
	[paid1] [numeric](18, 0) NOT NULL,
	[covered] [numeric](18, 0) NOT NULL,
	[covered15] [numeric](18, 0) NOT NULL,
	[total2] [numeric](18, 0) NOT NULL,
	[paid2] [numeric](18, 0) NOT NULL,
	[extra] [numeric](18, 0) NOT NULL,
	[total3] [numeric](18, 0) NOT NULL,
	[paid3] [numeric](18, 0) NOT NULL,
	[bijli] [numeric](18, 0) NOT NULL,
	[perc] [numeric](18, 0) NOT NULL,
	[percrs] [numeric](18, 0) NOT NULL,
	[total4] [numeric](18, 0) NOT NULL,
	[paid4] [numeric](18, 0) NOT NULL,
	[total] [numeric](18, 0) NOT NULL,
	[paid] [numeric](18, 0) NOT NULL,
	[storenofrom] [numeric](18, 0) NULL,
	[storenoto] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[key]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[key](
	[Word] [varchar](max) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[image_upload]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image_upload](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](100) NULL,
	[imgpath] [nchar](100) NULL,
	[image] [image] NULL,
 CONSTRAINT [PK_image_upload] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faces]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Faces](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[faceSample] [binary](50) NOT NULL,
	[userId] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Extraarea]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Extraarea](
	[date] [nchar](20) NOT NULL,
	[name] [nchar](30) NOT NULL,
	[fname] [nchar](30) NOT NULL,
	[shopnofrom] [numeric](18, 0) NOT NULL,
	[shopnoto] [numeric](18, 0) NOT NULL,
	[block] [nchar](10) NOT NULL,
	[year] [nchar](20) NOT NULL,
	[sarea] [numeric](18, 0) NOT NULL,
	[srate] [numeric](18, 0) NOT NULL,
	[stotal] [numeric](18, 0) NOT NULL,
	[garea] [numeric](18, 0) NOT NULL,
	[grate] [numeric](18, 0) NOT NULL,
	[gtotal] [numeric](18, 0) NOT NULL,
	[total] [numeric](18, 0) NOT NULL,
	[total15] [numeric](18, 0) NOT NULL,
	[fulltotal] [numeric](18, 0) NOT NULL,
	[paidtotal] [numeric](18, 0) NOT NULL,
	[date1] [nchar](20) NOT NULL,
	[duetotal] [numeric](18, 0) NOT NULL,
	[storenofrom] [numeric](18, 0) NULL,
	[storenoto] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Extra]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Extra](
	[block] [char](2) NOT NULL,
	[showroomrate] [numeric](18, 0) NOT NULL,
	[storerate] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Extra] PRIMARY KEY CLUSTERED 
(
	[block] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Electricity1]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Electricity1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[fitting] [numeric](18, 0) NOT NULL,
	[maintainance] [numeric](18, 0) NOT NULL,
	[jma] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Electricity] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Electricity]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Electricity](
	[year] [nchar](15) NOT NULL,
	[date] [nchar](15) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[fname] [nvarchar](max) NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[resdate] [nchar](15) NOT NULL,
	[shopnofrom] [numeric](18, 0) NOT NULL,
	[shopnoto] [numeric](18, 0) NOT NULL,
	[no] [numeric](18, 0) NOT NULL,
	[f] [numeric](18, 0) NOT NULL,
	[m] [numeric](18, 0) NOT NULL,
	[d] [numeric](18, 0) NOT NULL,
	[t] [numeric](18, 0) NOT NULL,
	[no1] [numeric](18, 0) NOT NULL,
	[f1] [numeric](18, 0) NOT NULL,
	[m1] [numeric](18, 0) NOT NULL,
	[d1] [numeric](18, 0) NOT NULL,
	[t1] [numeric](18, 0) NOT NULL,
	[no2] [numeric](18, 0) NOT NULL,
	[f2] [numeric](18, 0) NOT NULL,
	[m2] [numeric](18, 0) NOT NULL,
	[d2] [numeric](18, 0) NOT NULL,
	[t2] [numeric](18, 0) NOT NULL,
	[no3] [numeric](18, 0) NOT NULL,
	[f3] [numeric](18, 0) NOT NULL,
	[m3] [numeric](18, 0) NOT NULL,
	[d3] [numeric](18, 0) NOT NULL,
	[t3] [numeric](18, 0) NOT NULL,
	[no4] [numeric](18, 0) NOT NULL,
	[f4] [numeric](18, 0) NOT NULL,
	[m4] [numeric](18, 0) NOT NULL,
	[d4] [numeric](18, 0) NOT NULL,
	[t4] [numeric](18, 0) NOT NULL,
	[no5] [numeric](18, 0) NOT NULL,
	[f5] [numeric](18, 0) NOT NULL,
	[m5] [numeric](18, 0) NOT NULL,
	[d5] [numeric](18, 0) NOT NULL,
	[t5] [numeric](18, 0) NOT NULL,
	[no6] [numeric](18, 0) NOT NULL,
	[f6] [numeric](18, 0) NOT NULL,
	[m6] [numeric](18, 0) NOT NULL,
	[d6] [numeric](18, 0) NOT NULL,
	[t6] [numeric](18, 0) NOT NULL,
	[no7] [numeric](18, 0) NOT NULL,
	[f7] [numeric](18, 0) NOT NULL,
	[m7] [numeric](18, 0) NOT NULL,
	[d7] [numeric](18, 0) NOT NULL,
	[t7] [numeric](18, 0) NOT NULL,
	[no8] [numeric](18, 0) NOT NULL,
	[f8] [numeric](18, 0) NOT NULL,
	[m8] [numeric](18, 0) NOT NULL,
	[d8] [numeric](18, 0) NOT NULL,
	[t8] [numeric](18, 0) NOT NULL,
	[no9] [numeric](18, 0) NOT NULL,
	[f9] [numeric](18, 0) NOT NULL,
	[m9] [numeric](18, 0) NOT NULL,
	[d9] [numeric](18, 0) NOT NULL,
	[t9] [numeric](18, 0) NOT NULL,
	[no10] [numeric](18, 0) NOT NULL,
	[f10] [numeric](18, 0) NOT NULL,
	[m10] [numeric](18, 0) NOT NULL,
	[d10] [numeric](18, 0) NOT NULL,
	[t10] [numeric](18, 0) NOT NULL,
	[no11] [numeric](18, 0) NOT NULL,
	[f11] [numeric](18, 0) NOT NULL,
	[m11] [numeric](18, 0) NOT NULL,
	[d11] [numeric](18, 0) NOT NULL,
	[t11] [numeric](18, 0) NOT NULL,
	[no12] [numeric](18, 0) NOT NULL,
	[f12] [numeric](18, 0) NOT NULL,
	[m12] [numeric](18, 0) NOT NULL,
	[d12] [numeric](18, 0) NOT NULL,
	[t12] [numeric](18, 0) NOT NULL,
	[no13] [numeric](18, 0) NOT NULL,
	[f13] [numeric](18, 0) NOT NULL,
	[m13] [numeric](18, 0) NOT NULL,
	[d13] [numeric](18, 0) NOT NULL,
	[t13] [numeric](18, 0) NOT NULL,
	[no14] [numeric](18, 0) NOT NULL,
	[f14] [numeric](18, 0) NOT NULL,
	[m14] [numeric](18, 0) NOT NULL,
	[d14] [numeric](18, 0) NOT NULL,
	[t14] [numeric](18, 0) NOT NULL,
	[no15] [numeric](18, 0) NOT NULL,
	[f15] [numeric](18, 0) NOT NULL,
	[m15] [numeric](18, 0) NOT NULL,
	[d15] [numeric](18, 0) NOT NULL,
	[t15] [numeric](18, 0) NOT NULL,
	[no16] [numeric](18, 0) NOT NULL,
	[f16] [numeric](18, 0) NOT NULL,
	[m16] [numeric](18, 0) NOT NULL,
	[d16] [numeric](18, 0) NOT NULL,
	[t16] [numeric](18, 0) NOT NULL,
	[no17] [numeric](18, 0) NOT NULL,
	[f17] [numeric](18, 0) NOT NULL,
	[m17] [numeric](18, 0) NOT NULL,
	[d17] [numeric](18, 0) NOT NULL,
	[t17] [numeric](18, 0) NOT NULL,
	[no18] [numeric](18, 0) NOT NULL,
	[f18] [numeric](18, 0) NOT NULL,
	[m18] [numeric](18, 0) NOT NULL,
	[d18] [numeric](18, 0) NOT NULL,
	[t18] [numeric](18, 0) NOT NULL,
	[no19] [numeric](18, 0) NOT NULL,
	[f19] [numeric](18, 0) NOT NULL,
	[m19] [numeric](18, 0) NOT NULL,
	[d19] [numeric](18, 0) NOT NULL,
	[t19] [numeric](18, 0) NOT NULL,
	[no20] [numeric](18, 0) NOT NULL,
	[f20] [numeric](18, 0) NOT NULL,
	[m20] [numeric](18, 0) NOT NULL,
	[d20] [numeric](18, 0) NOT NULL,
	[t20] [numeric](18, 0) NOT NULL,
	[notot] [numeric](18, 0) NOT NULL,
	[ftot] [numeric](18, 0) NOT NULL,
	[mtot] [numeric](18, 0) NOT NULL,
	[dtot] [numeric](18, 0) NOT NULL,
	[ttot] [numeric](18, 0) NOT NULL,
	[paid] [numeric](18, 0) NOT NULL,
	[due] [numeric](18, 0) NOT NULL,
	[storenofrom] [numeric](18, 0) NULL,
	[storenoto] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[branch]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[branch](
	[Branchid] [numeric](30, 0) NOT NULL,
	[Branchname] [varchar](30) NULL,
	[Branchicon] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Branchid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[admin]    Script Date: 06/04/2018 15:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[username] [nchar](20) NOT NULL,
	[password] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
GO
