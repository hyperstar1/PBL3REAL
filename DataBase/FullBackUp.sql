USE [HotelManagementREAL]
GO
/****** Object:  Table [dbo].[booking]    Script Date: 5/27/2021 11:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booking](
	[id_book] [int] IDENTITY(1,1) NOT NULL,
	[book_bookdate] [date] NOT NULL,
	[book_checkindate] [date] NOT NULL,
	[book_idclient] [int] NOT NULL,
	[book_note] [varchar](600) NULL,
	[book_status] [varchar](10) NOT NULL,
	[book_deposit] [int] NOT NULL,
	[book_totalprice] [int] NOT NULL,
	[book_checkoutdate] [date] NOT NULL,
	[book_iduser] [int] NOT NULL,
	[book_code] [varchar](8) NULL,
	[book_duedate] [date] NOT NULL,
 CONSTRAINT [Pk_appointment_id_appoint] PRIMARY KEY CLUSTERED 
(
	[id_book] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[booking_detail]    Script Date: 5/27/2021 11:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booking_detail](
	[id_boodet] [int] IDENTITY(1,1) NOT NULL,
	[boodet_price] [int] NOT NULL,
	[boodet_idbook] [int] NOT NULL,
	[boodet_idroom] [int] NOT NULL,
	[boodet_note] [varchar](200) NULL,
	[boodet_idroomtype] [varchar](8) NOT NULL,
 CONSTRAINT [Pk_appointment_detail_id_appdet] PRIMARY KEY CLUSTERED 
(
	[id_boodet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client]    Script Date: 5/27/2021 11:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[id_client] [int] IDENTITY(1,1) NOT NULL,
	[cli_name] [varchar](20) NOT NULL,
	[cli_phone] [varchar](10) NOT NULL,
	[cli_code] [varchar](8) NULL,
	[cli_gmail] [varchar](50) NOT NULL,
	[cli_activeflag] [bit] NOT NULL,
 CONSTRAINT [PK_client] PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgStorage]    Script Date: 5/27/2021 11:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgStorage](
	[id_imgsto] [int] IDENTITY(1,1) NOT NULL,
	[imgsto_url] [varchar](200) NOT NULL,
	[imgsto_idrootyp] [int] NULL,
	[imgsto_iduser] [int] NULL,
 CONSTRAINT [Pk_ImgStorage_id_imgsto] PRIMARY KEY CLUSTERED 
(
	[id_imgsto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 5/27/2021 11:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[id_invoice] [int] IDENTITY(1,1) NOT NULL,
	[inv_createdate] [date] NOT NULL,
	[inv_updatedate] [date] NOT NULL,
	[inv_code] [varchar](8) NULL,
	[inv_idbook] [int] NOT NULL,
	[inv_total] [int] NOT NULL,
 CONSTRAINT [Pk_Invoice_id_invoice] PRIMARY KEY CLUSTERED 
(
	[id_invoice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 5/27/2021 11:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id_role] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](100) NOT NULL,
	[role_description] [varchar](200) NULL,
 CONSTRAINT [Pk_role_id_role] PRIMARY KEY CLUSTERED 
(
	[id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room]    Script Date: 5/27/2021 11:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[id_room] [int] IDENTITY(1,1) NOT NULL,
	[room_name] [varchar](100) NOT NULL,
	[room_description] [varchar](250) NULL,
	[room_idroomtype] [int] NOT NULL,
	[room_activeflag] [bit] NOT NULL,
 CONSTRAINT [Pk_room_id_room] PRIMARY KEY CLUSTERED 
(
	[id_room] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room_type]    Script Date: 5/27/2021 11:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room_type](
	[id_roomtype] [int] IDENTITY(1,1) NOT NULL,
	[roty_name] [varchar](100) NOT NULL,
	[roty_description] [varchar](250) NULL,
	[roty_currentprice] [int] NOT NULL,
	[roty_capacity] [int] NOT NULL,
	[roty_activeflag] [bit] NOT NULL,
	[roty_code] [varchar](8) NULL,
 CONSTRAINT [Pk_room_type_id_roomtype] PRIMARY KEY CLUSTERED 
(
	[id_roomtype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 5/27/2021 11:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id_status] [int] IDENTITY(1,1) NOT NULL,
	[sta_name] [varchar](100) NOT NULL,
	[sta_description] [varchar](200) NULL,
 CONSTRAINT [Pk_Tbl_id_status] PRIMARY KEY CLUSTERED 
(
	[id_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status_time]    Script Date: 5/27/2021 11:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status_time](
	[id_statim] [int] IDENTITY(1,1) NOT NULL,
	[statim_fromdate] [date] NOT NULL,
	[statim_todate] [date] NOT NULL,
	[statim_idroom] [int] NOT NULL,
	[statim_idstatus] [int] NOT NULL,
 CONSTRAINT [Pk_status_time_id_statim] PRIMARY KEY CLUSTERED 
(
	[id_statim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 5/27/2021 11:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](100) NOT NULL,
	[user_photo] [int] NOT NULL,
	[user_gmail] [varchar](100) NOT NULL,
	[user_phone] [varchar](10) NOT NULL,
	[user_gender] [bit] NOT NULL,
	[user_activeflag] [bit] NOT NULL,
	[user_code] [varchar](8) NULL,
	[user_password] [varchar](100) NOT NULL,
 CONSTRAINT [Pk_Tbl_id_user] PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_role]    Script Date: 5/27/2021 11:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_role](
	[id_userol] [int] IDENTITY(1,1) NOT NULL,
	[userol_iduser] [int] NOT NULL,
	[userol_idrole] [int] NOT NULL,
 CONSTRAINT [Pk_user_role_id_userol] PRIMARY KEY CLUSTERED 
(
	[id_userol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[booking] ON 

INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (1, CAST(N'2021-03-14' AS Date), CAST(N'2021-03-21' AS Date), 1, N'ProYesssVip', N'Payed', 3120000, 10400000, CAST(N'2021-03-25' AS Date), 2, N'BOOK0001', CAST(N'2021-03-18' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (2, CAST(N'2021-03-20' AS Date), CAST(N'2021-03-21' AS Date), 2, N'"VIP Client"', N'Payed', 2400000, 8000000, CAST(N'2021-03-25' AS Date), 1, N'BOOK0002', CAST(N'2021-03-22' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (3, CAST(N'2021-03-13' AS Date), CAST(N'2021-03-19' AS Date), 3, N'Ko bk', N'Payed', 480000, 1600000, CAST(N'2021-03-20' AS Date), 3, N'BOOK0003', CAST(N'2021-03-17' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (4, CAST(N'2021-03-24' AS Date), CAST(N'2021-03-26' AS Date), 4, N'ProYesssVip', N'Payed', 1500000, 5000000, CAST(N'2021-03-28' AS Date), 2, N'BOOK0004', CAST(N'2021-03-28' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (5, CAST(N'2021-03-22' AS Date), CAST(N'2021-03-24' AS Date), 5, N'ProYesssVip', N'Payed', 690000, 2300000, CAST(N'2021-03-25' AS Date), 2, N'BOOK0005', CAST(N'2021-03-26' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (6, CAST(N'2021-03-26' AS Date), CAST(N'2021-03-27' AS Date), 6, N'ProYesssVip', N'Payed', 690000, 2300000, CAST(N'2021-03-28' AS Date), 2, N'BOOK0006', CAST(N'2021-03-30' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (10, CAST(N'2021-03-26' AS Date), CAST(N'2021-03-27' AS Date), 7, NULL, N'Payed', 300000, 1000000, CAST(N'2021-03-28' AS Date), 2, N'BOOK0010', CAST(N'2021-03-30' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (12, CAST(N'2021-03-26' AS Date), CAST(N'2021-03-27' AS Date), 8, NULL, N'Payed', 480000, 1600000, CAST(N'2021-03-28' AS Date), 2, N'BOOK0012', CAST(N'2021-03-30' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (15, CAST(N'2021-03-27' AS Date), CAST(N'2021-03-28' AS Date), 9, NULL, N'Payed', 750000, 2500000, CAST(N'2021-03-29' AS Date), 2, N'BOOK0015', CAST(N'2021-03-31' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (17, CAST(N'2021-03-27' AS Date), CAST(N'2021-03-28' AS Date), 10, NULL, N'Payed', 480000, 1600000, CAST(N'2021-03-29' AS Date), 2, N'BOOK0017', CAST(N'2021-03-31' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (20, CAST(N'2021-03-27' AS Date), CAST(N'2021-03-28' AS Date), 11, NULL, N'Payed', 1380000, 4600000, CAST(N'2021-03-30' AS Date), 2, N'BOOK0020', CAST(N'2021-03-31' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (23, CAST(N'2021-03-27' AS Date), CAST(N'2021-03-28' AS Date), 12, NULL, N'Payed', 960000, 3200000, CAST(N'2021-03-30' AS Date), 2, N'BOOK0023', CAST(N'2021-03-31' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (25, CAST(N'2021-03-27' AS Date), CAST(N'2021-03-28' AS Date), 13, NULL, N'Payed', 690000, 2300000, CAST(N'2021-03-29' AS Date), 2, N'BOOK0025', CAST(N'2021-03-31' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (30, CAST(N'2021-03-27' AS Date), CAST(N'2021-03-29' AS Date), 14, NULL, N'Payed', 300000, 1000000, CAST(N'2021-03-30' AS Date), 2, N'BOOK0030', CAST(N'2021-03-31' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (32, CAST(N'2021-03-27' AS Date), CAST(N'2021-03-29' AS Date), 15, NULL, N'Payed', 300000, 1000000, CAST(N'2021-03-30' AS Date), 2, N'BOOK0032', CAST(N'2021-03-31' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (34, CAST(N'2021-03-27' AS Date), CAST(N'2021-03-29' AS Date), 16, NULL, N'Payed', 300000, 1000000, CAST(N'2021-03-30' AS Date), 2, N'BOOK0034', CAST(N'2021-03-31' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (35, CAST(N'2021-03-27' AS Date), CAST(N'2021-03-29' AS Date), 17, NULL, N'Payed', 960000, 3200000, CAST(N'2021-03-31' AS Date), 2, N'BOOK0035', CAST(N'2021-03-31' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (37, CAST(N'2021-03-27' AS Date), CAST(N'2021-03-30' AS Date), 18, NULL, N'Payed', 1920000, 6400000, CAST(N'2021-04-03' AS Date), 2, N'BOOK0037', CAST(N'2021-03-31' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (39, CAST(N'2021-03-28' AS Date), CAST(N'2021-03-30' AS Date), 19, NULL, N'Payed', 1920000, 6400000, CAST(N'2021-04-03' AS Date), 2, N'BOOK0039', CAST(N'2021-04-01' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (40, CAST(N'2021-03-28' AS Date), CAST(N'2021-03-30' AS Date), 20, NULL, N'Payed', 690000, 2300000, CAST(N'2021-03-31' AS Date), 2, N'BOOK0040', CAST(N'2021-04-01' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (41, CAST(N'2021-04-01' AS Date), CAST(N'2021-04-03' AS Date), 21, NULL, N'Payed', 1380000, 4600000, CAST(N'2021-04-05' AS Date), 2, N'BOOK0041', CAST(N'2021-04-05' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (42, CAST(N'2021-04-01' AS Date), CAST(N'2021-04-04' AS Date), 22, NULL, N'Payed', 2070000, 6900000, CAST(N'2021-04-07' AS Date), 2, N'BOOK0042', CAST(N'2021-04-05' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (43, CAST(N'2021-04-03' AS Date), CAST(N'2021-04-05' AS Date), 23, NULL, N'Payed', 900000, 3000000, CAST(N'2021-04-08' AS Date), 2, N'BOOK0043', CAST(N'2021-04-07' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (44, CAST(N'2021-04-04' AS Date), CAST(N'2021-04-07' AS Date), 24, NULL, N'Payed', 900000, 3000000, CAST(N'2021-04-10' AS Date), 2, N'BOOK0044', CAST(N'2021-04-08' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (45, CAST(N'2021-04-05' AS Date), CAST(N'2021-04-08' AS Date), 25, NULL, N'Payed', 1920000, 6400000, CAST(N'2021-04-12' AS Date), 2, N'BOOK0045', CAST(N'2021-04-09' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (46, CAST(N'2021-04-07' AS Date), CAST(N'2021-04-10' AS Date), 26, NULL, N'Payed', 900000, 3000000, CAST(N'2021-04-13' AS Date), 2, N'BOOK0046', CAST(N'2021-04-11' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (47, CAST(N'2021-04-07' AS Date), CAST(N'2021-04-10' AS Date), 27, NULL, N'Payed', 1920000, 6400000, CAST(N'2021-04-14' AS Date), 2, N'BOOK0047', CAST(N'2021-04-11' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (48, CAST(N'2021-04-08' AS Date), CAST(N'2021-04-12' AS Date), 28, NULL, N'Payed', 2760000, 9200000, CAST(N'2021-04-16' AS Date), 2, N'BOOK0048', CAST(N'2021-04-12' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (49, CAST(N'2021-04-11' AS Date), CAST(N'2021-04-14' AS Date), 29, NULL, N'Payed', 1200000, 4000000, CAST(N'2021-04-18' AS Date), 2, N'BOOK0049', CAST(N'2021-04-15' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (50, CAST(N'2021-04-13' AS Date), CAST(N'2021-04-16' AS Date), 30, NULL, N'Payed', 1920000, 6400000, CAST(N'2021-04-20' AS Date), 2, N'BOOK0050', CAST(N'2021-04-17' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (51, CAST(N'2021-04-16' AS Date), CAST(N'2021-04-18' AS Date), 31, NULL, N'Payed', 2250000, 7500000, CAST(N'2021-04-21' AS Date), 2, N'BOOK0051', CAST(N'2021-04-20' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (52, CAST(N'2021-04-17' AS Date), CAST(N'2021-04-20' AS Date), 32, NULL, N'Payed', 2250000, 7500000, CAST(N'2021-04-23' AS Date), 2, N'BOOK0052', CAST(N'2021-04-21' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (54, CAST(N'2021-04-19' AS Date), CAST(N'2021-04-23' AS Date), 33, NULL, N'Payed', 1200000, 4000000, CAST(N'2021-04-27' AS Date), 2, N'BOOK0054', CAST(N'2021-04-23' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (55, CAST(N'2021-04-22' AS Date), CAST(N'2021-04-26' AS Date), 34, NULL, N'Payed', 2250000, 7500000, CAST(N'2021-04-29' AS Date), 2, N'BOOK0055', CAST(N'2021-04-26' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (57, CAST(N'2021-04-24' AS Date), CAST(N'2021-04-28' AS Date), 35, NULL, N'Payed', 2760000, 9200000, CAST(N'2021-05-01' AS Date), 2, N'BOOK0057', CAST(N'2021-04-28' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (58, CAST(N'2021-04-26' AS Date), CAST(N'2021-04-30' AS Date), 36, NULL, N'Payed', 2760000, 9200000, CAST(N'2021-05-04' AS Date), 2, N'BOOK0058', CAST(N'2021-04-30' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (59, CAST(N'2021-04-28' AS Date), CAST(N'2021-05-01' AS Date), 37, NULL, N'Payed', 2760000, 9200000, CAST(N'2021-05-05' AS Date), 2, N'BOOK0059', CAST(N'2021-05-02' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (60, CAST(N'2021-04-30' AS Date), CAST(N'2021-05-03' AS Date), 38, NULL, N'Payed', 2760000, 9200000, CAST(N'2021-05-07' AS Date), 2, N'BOOK0060', CAST(N'2021-05-04' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (61, CAST(N'2021-05-02' AS Date), CAST(N'2021-05-05' AS Date), 39, NULL, N'Payed', 9200000, 9200000, CAST(N'2021-05-09' AS Date), 2, N'BOOK0061', CAST(N'2021-05-06' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (62, CAST(N'2021-04-30' AS Date), CAST(N'2021-05-01' AS Date), 40, NULL, N'Payed', 1920000, 6400000, CAST(N'2021-05-05' AS Date), 2, N'BOOK0062', CAST(N'2021-05-04' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (63, CAST(N'2021-04-28' AS Date), CAST(N'2021-04-30' AS Date), 41, NULL, N'Payed', 900000, 3000000, CAST(N'2021-05-03' AS Date), 2, N'BOOK0063', CAST(N'2021-05-02' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (64, CAST(N'2021-04-29' AS Date), CAST(N'2021-05-01' AS Date), 42, NULL, N'Payed', 900000, 3000000, CAST(N'2021-05-04' AS Date), 2, N'BOOK0064', CAST(N'2021-05-03' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (65, CAST(N'2021-04-29' AS Date), CAST(N'2021-05-01' AS Date), 43, NULL, N'Payed', 900000, 3000000, CAST(N'2021-05-04' AS Date), 2, N'BOOK0065', CAST(N'2021-05-03' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (67, CAST(N'2021-04-28' AS Date), CAST(N'2021-05-01' AS Date), 44, NULL, N'Payed', 1440000, 4800000, CAST(N'2021-05-04' AS Date), 2, N'BOOK0067', CAST(N'2021-05-02' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (68, CAST(N'2021-05-10' AS Date), CAST(N'2021-05-12' AS Date), 45, NULL, N'Payed', 1920000, 6400000, CAST(N'2021-05-16' AS Date), 2, N'BOOK0068', CAST(N'2021-05-14' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (69, CAST(N'2021-05-12' AS Date), CAST(N'2021-05-14' AS Date), 46, NULL, N'Payed', 2760000, 9200000, CAST(N'2021-05-18' AS Date), 2, N'BOOK0069', CAST(N'2021-05-16' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (70, CAST(N'2021-05-15' AS Date), CAST(N'2021-05-17' AS Date), 47, NULL, N'Payed', 2070000, 6900000, CAST(N'2021-05-20' AS Date), 2, N'BOOK0070', CAST(N'2021-05-19' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (71, CAST(N'2021-05-18' AS Date), CAST(N'2021-05-20' AS Date), 48, NULL, N'Payed', 2760000, 9200000, CAST(N'2021-05-24' AS Date), 2, N'BOOK0071', CAST(N'2021-05-22' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (73, CAST(N'2021-05-20' AS Date), CAST(N'2021-05-22' AS Date), 49, NULL, N'Payed', 900000, 3000000, CAST(N'2021-05-25' AS Date), 2, N'BOOK0073', CAST(N'2021-05-24' AS Date))
SET IDENTITY_INSERT [dbo].[booking] OFF
GO
SET IDENTITY_INSERT [dbo].[booking_detail] ON 

INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (2, 1000000, 1, 1, N'"MNone"', N'TYPE0001')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (6, 1600000, 1, 3, N'None', N'TYPE0002')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (8, 1000000, 2, 4, NULL, N'TYPE0001')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (9, 1000000, 2, 6, NULL, N'TYPE0001')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (12, 1600000, 3, 3, NULL, N'TYPE0002')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (13, 2500000, 4, 9, N'"MNone"', N'TYPE0006')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (16, 2300000, 5, 10, NULL, N'TYPE0004')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (18, 2300000, 6, 11, NULL, N'TYPE0004')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (19, 1000000, 10, 1, NULL, N'TYPE0001')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (20, 1600000, 12, 3, NULL, N'TYPE0002')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (22, 2500000, 15, 9, NULL, N'TYPE0005')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (23, 1600000, 17, 6, NULL, N'TYPE0002')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (24, 2300000, 20, 13, NULL, N'TYPE0004')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (25, 1600000, 23, 15, NULL, N'TYPE0002')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (26, 2300000, 25, 12, NULL, N'TYPE0004')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (27, 1000000, 30, 16, NULL, N'TYPE0001')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (28, 1000000, 32, 17, NULL, N'TYPE0001')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (29, 1000000, 34, 18, NULL, N'TYPE0001')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (30, 1600000, 35, 19, NULL, N'TYPE0002')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (31, 1600000, 37, 20, NULL, N'TYPE0002')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (32, 1600000, 39, 21, NULL, N'TYPE0002')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (33, 2300000, 40, 22, NULL, N'TYPE0003')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (34, 2300000, 41, 23, NULL, N'TYPE0003')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (35, 2300000, 42, 24, NULL, N'TYPE0003')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (36, 1000000, 43, 25, NULL, N'TYPE0001')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (37, 1000000, 44, 26, NULL, N'TYPE0001')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (38, 1600000, 45, 27, NULL, N'TYPE0002')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (39, 1000000, 46, 1, NULL, N'TYPE0001')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (40, 1600000, 47, 3, NULL, N'TYPE0002')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (41, 2300000, 48, 32, NULL, N'TYPE0004')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (42, 1000000, 49, 4, NULL, N'TYPE0001')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (43, 1600000, 50, 5, NULL, N'TYPE0002')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (44, 2500000, 51, 33, NULL, N'TYPE0005')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (45, 2500000, 52, 34, NULL, N'TYPE0005')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (46, 1000000, 54, 6, NULL, N'TYPE0001')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (47, 2500000, 55, 9, NULL, N'TYPE0005')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (48, 2300000, 57, 10, NULL, N'TYPE0004')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (49, 2300000, 58, 30, NULL, N'TYPE0003')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (50, 2300000, 59, 11, NULL, N'TYPE0004')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (51, 2300000, 60, 12, NULL, N'TYPE0004')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (52, 2300000, 61, 13, NULL, N'TYPE0004')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (53, 1600000, 62, 15, NULL, N'TYPE0002')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (54, 1000000, 63, 16, NULL, N'TYPE0001')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (55, 1000000, 64, 17, NULL, N'TYPE0001')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (56, 1000000, 65, 18, NULL, N'TYPE0001')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (57, 1600000, 67, 19, NULL, N'TYPE0002')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (58, 1600000, 68, 21, NULL, N'TYPE0002')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (59, 2300000, 69, 22, NULL, N'TYPE0003')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (60, 2300000, 70, 23, NULL, N'TYPE0003')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (61, 2300000, 71, 24, NULL, N'TYPE0003')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (62, 1000000, 73, 25, NULL, N'TYPE0001')
SET IDENTITY_INSERT [dbo].[booking_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[client] ON 

INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (1, N'DInh Manh Duy', N'0912345678', N'CLIE0001', N'Duy2k1@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (2, N'Truong Minh Phuoc', N'1234567890', N'CLIE0002', N'Phuoc2k1@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (3, N'Le Minh Loi', N'0987654321', N'CLIE0003', N'LoiIT2k1@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (4, N'Le Quoc Thinh', N'0981224567', N'CLIE0004', N'thinh@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (5, N'Nguyen Minh Dung', N'0881224567', N'CLIE0005', N'kingvip@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (6, N'Van Viet Bon', N'0881124567', N'CLIE0006', N'VVB@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (7, N'Duong Dai Phuoc', N'0881124577', N'CLIE0007', N'PhuocDai@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (8, N'Pham Van Hung', N'0881144577', N'CLIE0008', N'HungPham@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (9, N'Tran Ba Thien', N'0931144577', N'CLIE0009', N'ThienTran@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (10, N'Ho Van Vy', N'0931144578', N'CLIE0010', N'VyHoIT@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (11, N'Bui Dac Loc', N'0931144579', N'CLIE0011', N'LocBuiBK@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (12, N'Le Manh Tuan', N'0931144570', N'CLIE0012', N'TuanManhBK@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (13, N'Do Minh Hoang', N'0931144580', N'CLIE0013', N'HoangDoBK@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (14, N'Pham Cong Chinh', N'0931144581', N'CLIE0014', N'ChinhPhamBK@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (15, N'Ngo Si Lien', N'0931144582', N'CLIE0015', N'NgoSiLien@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (16, N'Le Dai Hanh', N'0931144583', N'CLIE0016', N'LeDaiHanh@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (17, N'TruongChinh', N'0931144584', N'CLIE0017', N'TruongChinh@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (18, N'Pham Ngu Lao', N'0931144585', N'CLIE0018', N'LaoPham@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (19, N'Ong Ich Khiem', N'0931144586', N'CLIE0019', N'OngIchKhiem@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (20, N'Hung Vuong', N'0931144587', N'CLIE0020', N'HungVuong@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (21, N'Phan Thanh', N'0931144588', N'CLIE0021', N'PhanThanh@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (22, N'Bach Dang', N'0931144589', N'CLIE0022', N'BachDang@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (23, N'Tran Phu', N'0931144590', N'CLIE0023', N'TranPhu@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (24, N'Tran Hung Dao', N'0931144591', N'CLIE0024', N'TranHungDao@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (25, N'Nguyen Tri Phuong', N'0931144592', N'CLIE0025', N'PhuongNguyen@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (26, N'Ho Han Thuong', N'0931144593', N'CLIE0026', N'ThuongHo@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (27, N'Phan Chau Trinh', N'0931144594', N'CLIE0027', N'PhanChauTrinh@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (28, N'Nguyen Tat Thanh', N'0931144595', N'CLIE0028', N'NguyenTatThanh@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (29, N'Yet Kieu', N'0931144596', N'CLIE0029', N'YetKieu@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (30, N'Do Ba', N'0931144597', N'CLIE0030', N'DoBa@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (31, N'Le Trong Tan', N'0931144598', N'CLIE0031', N'LeTrongTan@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (32, N'Hoang Hoa Tham', N'0931144599', N'CLIE0032', N'HoangHoaTham@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (33, N'Yen Bai', N'0931144600', N'CLIE0033', N'YetKieu@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (34, N'Nguyen Hoang', N'0931144601', N'CLIE0034', N'NguyenHoang@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (35, N'Hoang Van Thu', N'0931144602', N'CLIE0035', N'HoangVanThu@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (36, N'Ly Thai To', N'0931144603', N'CLIE0036', N'LyThayTo@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (37, N'Ho Xuan Huong', N'0931144604', N'CLIE0037', N'HoXuanHuong@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (38, N'Huynh Thuc Khang', N'0931144605', N'CLIE0038', N'HuynhThucKhang@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (39, N'Nguyen Hue', N'0931144606', N'CLIE0039', N'NguyenHue@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (40, N'Quang Trung', N'0931144607', N'CLIE0040', N'QuangTrung@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (41, N'An Duong Vuong', N'0931144608', N'CLIE0041', N'AnDuongVuong@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (42, N'Nguyen Trai', N'0931144608', N'CLIE0042', N'NguyenTrai@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (43, N'Nguyen Khuyen', N'0931144608', N'CLIE0043', N'NguyenKhuyen@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (44, N'Thai Thi Boi', N'0931144608', N'CLIE0044', N'ThaiThiBoi@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (45, N'Vo Chi Cong', N'0931144608', N'CLIE0045', N'VoChiCong@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (46, N'Le Duan', N'0931144609', N'CLIE0046', N'LeDuan@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (47, N'Ton Dan', N'0931144610', N'CLIE0047', N'TonDan@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (48, N'Duy Tan', N'0931144611', N'CLIE0048', N'DuyTan@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (49, N'Ton That Tung', N'0931144612', N'CLIE0049', N'TonThatTung@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (50, N'Dinh Tien Hoang', N'0931144613', N'CLIE0050', N'DinhTienHoang@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[client] OFF
GO
SET IDENTITY_INSERT [dbo].[ImgStorage] ON 

INSERT [dbo].[ImgStorage] ([id_imgsto], [imgsto_url], [imgsto_idrootyp], [imgsto_iduser]) VALUES (19, N'/home/cuong/vip', 2, NULL)
INSERT [dbo].[ImgStorage] ([id_imgsto], [imgsto_url], [imgsto_idrootyp], [imgsto_iduser]) VALUES (24, N'/home/cuong/oke', 1, NULL)
INSERT [dbo].[ImgStorage] ([id_imgsto], [imgsto_url], [imgsto_idrootyp], [imgsto_iduser]) VALUES (27, N'D:\\C#\\DO_AN\\PBL3REAL\\ImageSource\\OIP.jpg', 1, NULL)
INSERT [dbo].[ImgStorage] ([id_imgsto], [imgsto_url], [imgsto_idrootyp], [imgsto_iduser]) VALUES (28, N'/home/cuong/oke', 1, NULL)
INSERT [dbo].[ImgStorage] ([id_imgsto], [imgsto_url], [imgsto_idrootyp], [imgsto_iduser]) VALUES (31, N'D:\\C#\\PBL3REAL\\ImageSource\\OIP.jpg', NULL, 1)
SET IDENTITY_INSERT [dbo].[ImgStorage] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (1, CAST(N'2021-03-25' AS Date), CAST(N'2021-03-25' AS Date), N'INVO0001', 1, 10400000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (2, CAST(N'2021-03-25' AS Date), CAST(N'2021-03-25' AS Date), N'INVO0002', 2, 8000000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (3, CAST(N'2021-03-20' AS Date), CAST(N'2021-03-20' AS Date), N'INVO0003', 3, 1600000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (5, CAST(N'2021-03-28' AS Date), CAST(N'2021-03-28' AS Date), N'INVO0005', 4, 5000000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (6, CAST(N'2021-03-25' AS Date), CAST(N'2021-03-25' AS Date), N'INVO0006', 5, 2300000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (7, CAST(N'2021-03-28' AS Date), CAST(N'2021-03-28' AS Date), N'INVO0007', 6, 2300000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (9, CAST(N'2021-03-28' AS Date), CAST(N'2021-03-28' AS Date), N'INVO0009', 10, 1000000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (10, CAST(N'2021-03-28' AS Date), CAST(N'2021-03-28' AS Date), N'INVO0010', 12, 1600000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (11, CAST(N'2021-03-29' AS Date), CAST(N'2021-03-29' AS Date), N'INVO0011', 15, 2500000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (12, CAST(N'2021-03-29' AS Date), CAST(N'2021-03-29' AS Date), N'INVO0012', 17, 1600000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (13, CAST(N'2021-03-30' AS Date), CAST(N'2021-03-30' AS Date), N'INVO0013', 20, 4600000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (14, CAST(N'2021-03-30' AS Date), CAST(N'2021-03-30' AS Date), N'INVO0014', 23, 3200000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (15, CAST(N'2021-03-29' AS Date), CAST(N'2021-03-29' AS Date), N'INVO0015', 25, 2300000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (16, CAST(N'2021-03-30' AS Date), CAST(N'2021-03-30' AS Date), N'INVO0016', 30, 1000000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (17, CAST(N'2021-03-30' AS Date), CAST(N'2021-03-30' AS Date), N'INVO0017', 32, 1000000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (18, CAST(N'2021-03-30' AS Date), CAST(N'2021-03-30' AS Date), N'INVO0018', 34, 1000000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (19, CAST(N'2021-03-31' AS Date), CAST(N'2021-03-31' AS Date), N'INVO0019', 35, 3200000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (20, CAST(N'2021-04-03' AS Date), CAST(N'2021-04-03' AS Date), N'INVO0020', 37, 6400000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (21, CAST(N'2021-04-03' AS Date), CAST(N'2021-04-03' AS Date), N'INVO0021', 39, 6400000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (22, CAST(N'2021-03-31' AS Date), CAST(N'2021-03-31' AS Date), N'INVO0022', 40, 2300000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (23, CAST(N'2021-04-05' AS Date), CAST(N'2021-04-05' AS Date), N'INVO0023', 41, 4600000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (24, CAST(N'2021-04-07' AS Date), CAST(N'2021-04-07' AS Date), N'INVO0024', 42, 6900000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (25, CAST(N'2021-04-08' AS Date), CAST(N'2021-04-08' AS Date), N'INVO0025', 43, 3000000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (26, CAST(N'2021-04-10' AS Date), CAST(N'2021-04-10' AS Date), N'INVO0026', 44, 3000000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (27, CAST(N'2021-04-12' AS Date), CAST(N'2021-04-12' AS Date), N'INVO0027', 45, 6400000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (28, CAST(N'2021-04-13' AS Date), CAST(N'2021-04-13' AS Date), N'INVO0028', 46, 3000000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (29, CAST(N'2021-04-14' AS Date), CAST(N'2021-04-14' AS Date), N'INVO0029', 47, 6400000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (30, CAST(N'2021-04-16' AS Date), CAST(N'2021-04-16' AS Date), N'INVO0030', 48, 9200000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (31, CAST(N'2021-04-18' AS Date), CAST(N'2021-04-18' AS Date), N'INVO0031', 49, 4000000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (32, CAST(N'2021-04-20' AS Date), CAST(N'2021-04-20' AS Date), N'INVO0032', 50, 6400000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (33, CAST(N'2021-04-21' AS Date), CAST(N'2021-04-21' AS Date), N'INVO0033', 51, 7500000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (34, CAST(N'2021-04-23' AS Date), CAST(N'2021-04-23' AS Date), N'INVO0034', 52, 7500000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (36, CAST(N'2021-04-27' AS Date), CAST(N'2021-04-27' AS Date), N'INVO0036', 54, 4000000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (37, CAST(N'2021-04-29' AS Date), CAST(N'2021-04-29' AS Date), N'INVO0037', 55, 7500000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (38, CAST(N'2021-05-01' AS Date), CAST(N'2021-05-01' AS Date), N'INVO0038', 57, 9200000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (41, CAST(N'2021-05-04' AS Date), CAST(N'2021-05-04' AS Date), N'INVO0041', 58, 9200000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (42, CAST(N'2021-05-05' AS Date), CAST(N'2021-05-05' AS Date), N'INVO0042', 59, 9200000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (43, CAST(N'2021-05-07' AS Date), CAST(N'2021-05-07' AS Date), N'INVO0043', 60, 9200000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (44, CAST(N'2021-05-09' AS Date), CAST(N'2021-05-09' AS Date), N'INVO0044', 61, 9200000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (45, CAST(N'2021-05-05' AS Date), CAST(N'2021-05-05' AS Date), N'INVO0045', 62, 6400000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (46, CAST(N'2021-05-03' AS Date), CAST(N'2021-05-03' AS Date), N'INVO0046', 63, 3000000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (47, CAST(N'2021-05-04' AS Date), CAST(N'2021-05-04' AS Date), N'INVO0047', 64, 3000000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (50, CAST(N'2021-05-04' AS Date), CAST(N'2021-05-04' AS Date), N'INVO0050', 65, 3000000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (51, CAST(N'2021-05-04' AS Date), CAST(N'2021-05-04' AS Date), N'INVO0051', 67, 4800000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (52, CAST(N'2021-05-16' AS Date), CAST(N'2021-05-16' AS Date), N'INVO0052', 68, 6400000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (54, CAST(N'2021-05-18' AS Date), CAST(N'2021-05-18' AS Date), N'INVO0054', 69, 9200000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (55, CAST(N'2021-05-20' AS Date), CAST(N'2021-05-20' AS Date), N'INVO0055', 70, 6900000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (56, CAST(N'2021-05-24' AS Date), CAST(N'2021-05-24' AS Date), N'INVO0056', 71, 9200000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (61, CAST(N'2021-05-25' AS Date), CAST(N'2021-05-25' AS Date), N'INVO0061', 73, 3000000)
SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([id_role], [role_name], [role_description]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[role] ([id_role], [role_name], [role_description]) VALUES (2, N'Clerk', NULL)
INSERT [dbo].[role] ([id_role], [role_name], [role_description]) VALUES (3, N'Service Staff', NULL)
INSERT [dbo].[role] ([id_role], [role_name], [role_description]) VALUES (4, N'Receptionist', NULL)
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[room] ON 

INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (1, N'A100', N'"Nothinh"', 1, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (3, N'A102', NULL, 2, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (4, N'A103', N'Yeesssssssss', 1, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (5, N'A104', NULL, 2, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (6, N'A105', NULL, 1, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (9, N'A106', N'Nothing', 5, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (10, N'A107', N'adadada', 4, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (11, N'A108', N'Nothingggggggg', 4, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (12, N'A109', N'Just For Fun', 4, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (13, N'A110', N'Nothing', 4, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (15, N'A111', NULL, 2, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (16, N'A112', NULL, 1, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (17, N'A113', NULL, 1, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (18, N'A114', NULL, 1, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (19, N'A115', NULL, 2, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (20, N'A116', NULL, 2, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (21, N'A117', NULL, 2, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (22, N'A118', NULL, 3, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (23, N'A119', NULL, 3, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (24, N'A200', NULL, 3, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (25, N'A201', NULL, 1, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (26, N'A202', NULL, 1, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (27, N'A203', NULL, 2, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (28, N'A204', NULL, 2, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (29, N'A205', NULL, 3, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (30, N'A206', NULL, 3, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (31, N'A207', NULL, 4, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (32, N'A208', NULL, 4, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (33, N'A209', NULL, 5, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (34, N'A210', NULL, 5, 1)
SET IDENTITY_INSERT [dbo].[room] OFF
GO
SET IDENTITY_INSERT [dbo].[room_type] ON 

INSERT [dbo].[room_type] ([id_roomtype], [roty_name], [roty_description], [roty_currentprice], [roty_capacity], [roty_activeflag], [roty_code]) VALUES (1, N'single room', N'', 1000000, 1, 1, N'TYPE0001')
INSERT [dbo].[room_type] ([id_roomtype], [roty_name], [roty_description], [roty_currentprice], [roty_capacity], [roty_activeflag], [roty_code]) VALUES (2, N'double room', N'', 1600000, 4, 1, N'TYPE0002')
INSERT [dbo].[room_type] ([id_roomtype], [roty_name], [roty_description], [roty_currentprice], [roty_capacity], [roty_activeflag], [roty_code]) VALUES (3, N'king room', N'', 2300000, 1, 1, N'TYPE0003')
INSERT [dbo].[room_type] ([id_roomtype], [roty_name], [roty_description], [roty_currentprice], [roty_capacity], [roty_activeflag], [roty_code]) VALUES (4, N'queen room', N'', 2300000, 1, 1, N'TYPE0004')
INSERT [dbo].[room_type] ([id_roomtype], [roty_name], [roty_description], [roty_currentprice], [roty_capacity], [roty_activeflag], [roty_code]) VALUES (5, N'family room', N'', 2500000, 8, 1, N'TYPE0005')
INSERT [dbo].[room_type] ([id_roomtype], [roty_name], [roty_description], [roty_currentprice], [roty_capacity], [roty_activeflag], [roty_code]) VALUES (6, N'president room', N'', 2500000, 1, 1, N'TYPE0006')
SET IDENTITY_INSERT [dbo].[room_type] OFF
GO
SET IDENTITY_INSERT [dbo].[status] ON 

INSERT [dbo].[status] ([id_status], [sta_name], [sta_description]) VALUES (1, N'Maintained', N'Room is maintained for better service')
INSERT [dbo].[status] ([id_status], [sta_name], [sta_description]) VALUES (2, N'Bookes', N'This room is being booked')
INSERT [dbo].[status] ([id_status], [sta_name], [sta_description]) VALUES (3, N'Occupied', N'Guests have already taken this room')
SET IDENTITY_INSERT [dbo].[status] OFF
GO
SET IDENTITY_INSERT [dbo].[status_time] ON 

INSERT [dbo].[status_time] ([id_statim], [statim_fromdate], [statim_todate], [statim_idroom], [statim_idstatus]) VALUES (14, CAST(N'2021-03-15' AS Date), CAST(N'2021-03-20' AS Date), 1, 1)
INSERT [dbo].[status_time] ([id_statim], [statim_fromdate], [statim_todate], [statim_idroom], [statim_idstatus]) VALUES (25, CAST(N'2021-05-04' AS Date), CAST(N'2021-05-04' AS Date), 1, 1)
INSERT [dbo].[status_time] ([id_statim], [statim_fromdate], [statim_todate], [statim_idroom], [statim_idstatus]) VALUES (27, CAST(N'2021-05-06' AS Date), CAST(N'2021-05-21' AS Date), 9, 3)
INSERT [dbo].[status_time] ([id_statim], [statim_fromdate], [statim_todate], [statim_idroom], [statim_idstatus]) VALUES (29, CAST(N'2021-05-05' AS Date), CAST(N'2021-05-07' AS Date), 10, 1)
INSERT [dbo].[status_time] ([id_statim], [statim_fromdate], [statim_todate], [statim_idroom], [statim_idstatus]) VALUES (44, CAST(N'2021-03-21' AS Date), CAST(N'2021-03-25' AS Date), 4, 2)
INSERT [dbo].[status_time] ([id_statim], [statim_fromdate], [statim_todate], [statim_idroom], [statim_idstatus]) VALUES (46, CAST(N'2021-05-19' AS Date), CAST(N'2021-05-20' AS Date), 3, 2)
INSERT [dbo].[status_time] ([id_statim], [statim_fromdate], [statim_todate], [statim_idroom], [statim_idstatus]) VALUES (47, CAST(N'2021-05-26' AS Date), CAST(N'2021-05-28' AS Date), 9, 2)
INSERT [dbo].[status_time] ([id_statim], [statim_fromdate], [statim_todate], [statim_idroom], [statim_idstatus]) VALUES (55, CAST(N'2021-05-28' AS Date), CAST(N'2021-05-30' AS Date), 15, 2)
INSERT [dbo].[status_time] ([id_statim], [statim_fromdate], [statim_todate], [statim_idroom], [statim_idstatus]) VALUES (56, CAST(N'2021-05-28' AS Date), CAST(N'2021-05-29' AS Date), 12, 2)
SET IDENTITY_INSERT [dbo].[status_time] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id_user], [user_name], [user_photo], [user_gmail], [user_phone], [user_gender], [user_activeflag], [user_code], [user_password]) VALUES (1, N'Phan Van Cuong', 1, N'cuong@gmail.com', N'0912345100', 1, 1, N'USER0001', N'1')
INSERT [dbo].[user] ([id_user], [user_name], [user_photo], [user_gmail], [user_phone], [user_gender], [user_activeflag], [user_code], [user_password]) VALUES (2, N'Dinh Minh Toan', 2, N'ToanDinh@gmail.com', N'0912345101', 0, 1, N'USER0002', N'1')
INSERT [dbo].[user] ([id_user], [user_name], [user_photo], [user_gmail], [user_phone], [user_gender], [user_activeflag], [user_code], [user_password]) VALUES (3, N'Tran Thanh Nhat', 3, N'Nhat@gmail.com', N'0912345102', 1, 1, N'USER0003', N'1')
INSERT [dbo].[user] ([id_user], [user_name], [user_photo], [user_gmail], [user_phone], [user_gender], [user_activeflag], [user_code], [user_password]) VALUES (4, N'Cao Gia Thien', 4, N'Thien2001@gmail.com', N'0912345103', 0, 1, N'USER0004', N'1')
INSERT [dbo].[user] ([id_user], [user_name], [user_photo], [user_gmail], [user_phone], [user_gender], [user_activeflag], [user_code], [user_password]) VALUES (5, N'Ngo Tran Ngoc Lam', 5, N'LamTran@gmail.com', N'0912345104', 1, 1, N'USER0005', N'1')
INSERT [dbo].[user] ([id_user], [user_name], [user_photo], [user_gmail], [user_phone], [user_gender], [user_activeflag], [user_code], [user_password]) VALUES (6, N'Huynh Phuoc Chien', 6, N'ChienHuynh@gmail.com', N'0912345105', 1, 1, N'USER0006', N'1')
SET IDENTITY_INSERT [dbo].[user] OFF
GO
SET IDENTITY_INSERT [dbo].[user_role] ON 

INSERT [dbo].[user_role] ([id_userol], [userol_iduser], [userol_idrole]) VALUES (28, 2, 2)
INSERT [dbo].[user_role] ([id_userol], [userol_iduser], [userol_idrole]) VALUES (29, 2, 4)
INSERT [dbo].[user_role] ([id_userol], [userol_iduser], [userol_idrole]) VALUES (30, 1, 1)
SET IDENTITY_INSERT [dbo].[user_role] OFF
GO
/****** Object:  Index [UQ__Invoice__95EA4EA85B668B59]    Script Date: 5/27/2021 11:21:30 AM ******/
ALTER TABLE [dbo].[Invoice] ADD  CONSTRAINT [UQ__Invoice__95EA4EA85B668B59] UNIQUE NONCLUSTERED 
(
	[inv_idbook] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[booking] ADD  CONSTRAINT [defo_booking_book_bookdate]  DEFAULT (getdate()) FOR [book_bookdate]
GO
ALTER TABLE [dbo].[booking] ADD  CONSTRAINT [DF_booking_book_duedate]  DEFAULT (getdate()) FOR [book_duedate]
GO
ALTER TABLE [dbo].[booking_detail] ADD  CONSTRAINT [DF_booking_detail_boodet_idroomtype]  DEFAULT ((0)) FOR [boodet_idroomtype]
GO
ALTER TABLE [dbo].[client] ADD  CONSTRAINT [DF_client_cli_activeflag]  DEFAULT ((1)) FOR [cli_activeflag]
GO
ALTER TABLE [dbo].[Invoice] ADD  CONSTRAINT [defo_Invoice_inv_createdate]  DEFAULT (getdate()) FOR [inv_createdate]
GO
ALTER TABLE [dbo].[Invoice] ADD  CONSTRAINT [defo_Invoice_inv_updatedate]  DEFAULT (getdate()) FOR [inv_updatedate]
GO
ALTER TABLE [dbo].[role] ADD  CONSTRAINT [defo_role_role_description]  DEFAULT ('none') FOR [role_description]
GO
ALTER TABLE [dbo].[room] ADD  CONSTRAINT [DF_room_room_activeflag]  DEFAULT ((1)) FOR [room_activeflag]
GO
ALTER TABLE [dbo].[room_type] ADD  CONSTRAINT [defo_room_type_roty_description]  DEFAULT ('none') FOR [roty_description]
GO
ALTER TABLE [dbo].[room_type] ADD  CONSTRAINT [DF_room_type_roty_activeflag]  DEFAULT ((1)) FOR [roty_activeflag]
GO
ALTER TABLE [dbo].[status] ADD  CONSTRAINT [defo_status_sta_description]  DEFAULT ('none') FOR [sta_description]
GO
ALTER TABLE [dbo].[status_time] ADD  CONSTRAINT [defo_status_time_statim_fromdate]  DEFAULT (getdate()) FOR [statim_fromdate]
GO
ALTER TABLE [dbo].[status_time] ADD  CONSTRAINT [defo_status_time_statim_todate]  DEFAULT (getdate()) FOR [statim_todate]
GO
ALTER TABLE [dbo].[booking]  WITH CHECK ADD  CONSTRAINT [FK_booking_client] FOREIGN KEY([book_idclient])
REFERENCES [dbo].[client] ([id_client])
GO
ALTER TABLE [dbo].[booking] CHECK CONSTRAINT [FK_booking_client]
GO
ALTER TABLE [dbo].[booking]  WITH CHECK ADD  CONSTRAINT [Fk_booking_user] FOREIGN KEY([book_iduser])
REFERENCES [dbo].[user] ([id_user])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[booking] CHECK CONSTRAINT [Fk_booking_user]
GO
ALTER TABLE [dbo].[booking_detail]  WITH CHECK ADD  CONSTRAINT [Fk_booking_detail_booking] FOREIGN KEY([boodet_idbook])
REFERENCES [dbo].[booking] ([id_book])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[booking_detail] CHECK CONSTRAINT [Fk_booking_detail_booking]
GO
ALTER TABLE [dbo].[booking_detail]  WITH CHECK ADD  CONSTRAINT [Fk_booking_detail_room] FOREIGN KEY([boodet_idroom])
REFERENCES [dbo].[room] ([id_room])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[booking_detail] CHECK CONSTRAINT [Fk_booking_detail_room]
GO
ALTER TABLE [dbo].[ImgStorage]  WITH CHECK ADD  CONSTRAINT [Fk_ImgStorage_room_type] FOREIGN KEY([imgsto_idrootyp])
REFERENCES [dbo].[room_type] ([id_roomtype])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImgStorage] CHECK CONSTRAINT [Fk_ImgStorage_room_type]
GO
ALTER TABLE [dbo].[ImgStorage]  WITH CHECK ADD  CONSTRAINT [Fk_ImgStorage_user] FOREIGN KEY([imgsto_iduser])
REFERENCES [dbo].[user] ([id_user])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImgStorage] CHECK CONSTRAINT [Fk_ImgStorage_user]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK__Invoice__inv_idb__540C7B00] FOREIGN KEY([inv_idbook])
REFERENCES [dbo].[booking] ([id_book])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK__Invoice__inv_idb__540C7B00]
GO
ALTER TABLE [dbo].[room]  WITH CHECK ADD  CONSTRAINT [Fk_room_room_type] FOREIGN KEY([room_idroomtype])
REFERENCES [dbo].[room_type] ([id_roomtype])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[room] CHECK CONSTRAINT [Fk_room_room_type]
GO
ALTER TABLE [dbo].[status_time]  WITH CHECK ADD  CONSTRAINT [Fk_status_time_room] FOREIGN KEY([statim_idroom])
REFERENCES [dbo].[room] ([id_room])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[status_time] CHECK CONSTRAINT [Fk_status_time_room]
GO
ALTER TABLE [dbo].[status_time]  WITH CHECK ADD  CONSTRAINT [Fk_status_time_status] FOREIGN KEY([statim_idstatus])
REFERENCES [dbo].[status] ([id_status])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[status_time] CHECK CONSTRAINT [Fk_status_time_status]
GO
ALTER TABLE [dbo].[user_role]  WITH CHECK ADD  CONSTRAINT [Fk_user_role_role] FOREIGN KEY([userol_idrole])
REFERENCES [dbo].[role] ([id_role])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_role] CHECK CONSTRAINT [Fk_user_role_role]
GO
ALTER TABLE [dbo].[user_role]  WITH CHECK ADD  CONSTRAINT [Fk_user_role_user] FOREIGN KEY([userol_iduser])
REFERENCES [dbo].[user] ([id_user])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_role] CHECK CONSTRAINT [Fk_user_role_user]
GO
/****** Object:  StoredProcedure [dbo].[CompleteBooking]    Script Date: 5/27/2021 11:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CompleteBooking]
        AS
        BEGIN
            SET NOCOUNT ON;
            Declare @Status varchar(10) , @DueDate Date;	
			update booking set book_status ='Completed' where book_status='Proccessed' AND book_duedate<GETDATE();
        END

GO
/****** Object:  StoredProcedure [dbo].[GetAvailableRoom]    Script Date: 5/27/2021 11:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAvailableRoom]
            @IdRoomType int , @fromDate DateTime2 , @toDate DateTime2
        AS
        BEGIN
            SET NOCOUNT ON;
            select room.* from room 
			join room_type on room_idroomtype = room_type.id_roomtype
			where id_roomtype = @IdRoomType AND id_room NOT IN (select id_room from room join room_type on room_idroomtype = room_type.id_roomtype
																						 join status_time on id_room = statim_idroom
																						 join status on statim_idstatus = id_status 
																						 where id_roomtype = @IdRoomType AND  (statim_fromdate BETWEEN @fromDate and @toDate) OR (statim_todate BETWEEN @fromDate and @toDate)
																						 )
        END
GO
/****** Object:  StoredProcedure [dbo].[GetClients]    Script Date: 5/27/2021 11:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetClients]
        
        AS
        BEGIN
            SET NOCOUNT ON;
            select * from client join booking on client.id_client = booking.book_idclient
        END
GO
/****** Object:  StoredProcedure [dbo].[Statistic_INV]    Script Date: 5/27/2021 11:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Statistic_INV]
           @fromDate DateTime2 , @toDate DateTime2
        AS
        BEGIN
            SET NOCOUNT ON;
           select sum(inv_total) as inv_total,inv_createdate from Invoice 
		   group by inv_createdate having inv_createdate between @fromDate and @toDate
        END
GO
/****** Object:  StoredProcedure [dbo].[TotalRows]    Script Date: 5/27/2021 11:21:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TotalRows]
            @tablename varchar(20)
        AS
       BEGIN
     DECLARE @sql NVARCHAR(4000)= '',@rownumber INT
     SET @sql = 'SELECT @rownumber = Count(*) FROM '+quotename(@tablename) 

   EXEC sp_executesql @sql, N'@rownumber int output',@rownumber OUTPUT

   SELECT @rownumber
   END
GO
