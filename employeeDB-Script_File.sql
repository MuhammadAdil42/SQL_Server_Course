USE [master]
GO
/****** Object:  Database [employeeDB]    Script Date: 4/5/2023 2:41:51 AM ******/
CREATE DATABASE [employeeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'employeeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\employeeDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'employeeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\employeeDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [employeeDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [employeeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [employeeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [employeeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [employeeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [employeeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [employeeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [employeeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [employeeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [employeeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [employeeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [employeeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [employeeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [employeeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [employeeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [employeeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [employeeDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [employeeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [employeeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [employeeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [employeeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [employeeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [employeeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [employeeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [employeeDB] SET RECOVERY FULL 
GO
ALTER DATABASE [employeeDB] SET  MULTI_USER 
GO
ALTER DATABASE [employeeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [employeeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [employeeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [employeeDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [employeeDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [employeeDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'employeeDB', N'ON'
GO
ALTER DATABASE [employeeDB] SET QUERY_STORE = OFF
GO
USE [employeeDB]
GO
/****** Object:  Table [dbo].[companyInfo]    Script Date: 4/5/2023 2:41:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[companyInfo](
	[id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[companyInfoBackup]    Script Date: 4/5/2023 2:41:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[companyInfoBackup](
	[id] [int] NULL,
	[Revenue] [decimal](10, 2) NULL,
	[ProjectId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 4/5/2023 2:41:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[ACC_NO] [int] NULL,
	[CUST_NAME] [char](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 4/5/2023 2:41:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[deptid] [int] NULL,
	[dept_name] [varchar](50) NULL,
	[dept_location] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empDetails]    Script Date: 4/5/2023 2:41:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empDetails](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[Salary] [decimal](18, 0) NULL,
	[Phone] [varchar](10) NULL,
	[ProjectCompleted] [int] NOT NULL,
	[ProjectId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeDetailsBackup]    Script Date: 4/5/2023 2:41:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeDetailsBackup](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[Salary] [decimal](18, 0) NULL,
	[Phone] [varchar](10) NULL,
	[ProjectCompleted] [int] NOT NULL,
	[ProjectId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeInfo]    Script Date: 4/5/2023 2:41:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeInfo](
	[empId] [int] NOT NULL,
	[empName] [varchar](50) NOT NULL,
	[empSalary] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[empId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeInfoBackup]    Script Date: 4/5/2023 2:41:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeInfoBackup](
	[empId] [int] NOT NULL,
	[empName] [varchar](50) NOT NULL,
	[empSalary] [decimal](10, 2) NOT NULL,
	[job] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[deptId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user_login]    Script Date: 4/5/2023 2:41:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user_login](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Password] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CUSTOMER] ([ACC_NO], [CUST_NAME]) VALUES (234567, N'Muhammad Adil                                     ')
GO
INSERT [dbo].[Department] ([deptid], [dept_name], [dept_location]) VALUES (20, N'Electrical', N'Lahore')
INSERT [dbo].[Department] ([deptid], [dept_name], [dept_location]) VALUES (30, N'Mechinal', N'Karachi')
INSERT [dbo].[Department] ([deptid], [dept_name], [dept_location]) VALUES (40, N'Civil', N'Islamabad')
GO
INSERT [dbo].[empDetails] ([id], [name], [Salary], [Phone], [ProjectCompleted], [ProjectId]) VALUES (1, N'Adil', CAST(25000 AS Decimal(18, 0)), NULL, 5, NULL)
INSERT [dbo].[empDetails] ([id], [name], [Salary], [Phone], [ProjectCompleted], [ProjectId]) VALUES (2, N'Harry', CAST(30000 AS Decimal(18, 0)), N'0322457875', 5, 4)
GO
INSERT [dbo].[employeeDetailsBackup] ([id], [name], [Salary], [Phone], [ProjectCompleted], [ProjectId]) VALUES (1, N'Adil', CAST(25000 AS Decimal(18, 0)), NULL, 5, NULL)
INSERT [dbo].[employeeDetailsBackup] ([id], [name], [Salary], [Phone], [ProjectCompleted], [ProjectId]) VALUES (2, N'Harry', CAST(30000 AS Decimal(18, 0)), N'0322457875', 5, 4)
GO
INSERT [dbo].[employeeInfo] ([empId], [empName], [empSalary]) VALUES (2, N'Harry', CAST(40000.00 AS Decimal(10, 2)))
INSERT [dbo].[employeeInfo] ([empId], [empName], [empSalary]) VALUES (3, N'AWAIS', CAST(30000.00 AS Decimal(10, 2)))
INSERT [dbo].[employeeInfo] ([empId], [empName], [empSalary]) VALUES (4, N'KASHIF', CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[employeeInfo] ([empId], [empName], [empSalary]) VALUES (5, N'ADIL', CAST(50000.00 AS Decimal(10, 2)))
INSERT [dbo].[employeeInfo] ([empId], [empName], [empSalary]) VALUES (6, N'JAWAD', CAST(32000.00 AS Decimal(10, 2)))
INSERT [dbo].[employeeInfo] ([empId], [empName], [empSalary]) VALUES (7, N'Faizan', CAST(35000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[employeeInfoBackup] ([empId], [empName], [empSalary], [job], [phone], [deptId]) VALUES (2, N'Harry', CAST(40000.00 AS Decimal(10, 2)), N'Jr. Developer', N'3221111000', 20)
INSERT [dbo].[employeeInfoBackup] ([empId], [empName], [empSalary], [job], [phone], [deptId]) VALUES (3, N'AWAIS', CAST(30000.00 AS Decimal(10, 2)), N'Tester', N'3221111111', 50)
INSERT [dbo].[employeeInfoBackup] ([empId], [empName], [empSalary], [job], [phone], [deptId]) VALUES (4, N'KASHIF', CAST(20000.00 AS Decimal(10, 2)), N'Jr. Front-end developer', N'3451111000', 30)
INSERT [dbo].[employeeInfoBackup] ([empId], [empName], [empSalary], [job], [phone], [deptId]) VALUES (5, N'ADIL', CAST(50000.00 AS Decimal(10, 2)), N'CEO', N'3220000000', 40)
INSERT [dbo].[employeeInfoBackup] ([empId], [empName], [empSalary], [job], [phone], [deptId]) VALUES (6, N'JAWAD', CAST(32000.00 AS Decimal(10, 2)), N'Accountant', N'3110000111', 40)
INSERT [dbo].[employeeInfoBackup] ([empId], [empName], [empSalary], [job], [phone], [deptId]) VALUES (7, N'Faizan', CAST(35000.00 AS Decimal(10, 2)), NULL, NULL, 10)
GO
SET IDENTITY_INSERT [dbo].[tbl_user_login] ON 

INSERT [dbo].[tbl_user_login] ([UserId], [UserName], [Email], [Password]) VALUES (1, N'Captain', N'steve@captain.com', N'steve1234')
INSERT [dbo].[tbl_user_login] ([UserId], [UserName], [Email], [Password]) VALUES (2, N'IronMan', N'Tony@stark.com', N'tony567')
INSERT [dbo].[tbl_user_login] ([UserId], [UserName], [Email], [Password]) VALUES (3, N'Batman', N'bruce@wayne.com', N'bruce1234')
INSERT [dbo].[tbl_user_login] ([UserId], [UserName], [Email], [Password]) VALUES (4, N'WonderWoman', N'diana@amazon.com', N'princessdiana')
INSERT [dbo].[tbl_user_login] ([UserId], [UserName], [Email], [Password]) VALUES (5, N'SpiderMan', N'peter@parker.com', N'parker@1234')
SET IDENTITY_INSERT [dbo].[tbl_user_login] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_user__A9D105344097E741]    Script Date: 4/5/2023 2:41:51 AM ******/
ALTER TABLE [dbo].[tbl_user_login] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_user__C9F284568C96D441]    Script Date: 4/5/2023 2:41:51 AM ******/
ALTER TABLE [dbo].[tbl_user_login] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[empDetails] ADD  DEFAULT ((5)) FOR [ProjectCompleted]
GO
USE [master]
GO
ALTER DATABASE [employeeDB] SET  READ_WRITE 
GO
