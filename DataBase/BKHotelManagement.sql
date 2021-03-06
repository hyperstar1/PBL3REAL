USE [HotelManagementREAL]
GO
/****** Object:  Table [dbo].[booking]    Script Date: 5/15/2021 4:54:44 PM ******/
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
/****** Object:  Table [dbo].[booking_detail]    Script Date: 5/15/2021 4:54:44 PM ******/
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
/****** Object:  Table [dbo].[client]    Script Date: 5/15/2021 4:54:44 PM ******/
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
/****** Object:  Table [dbo].[ImgStorage]    Script Date: 5/15/2021 4:54:44 PM ******/
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
/****** Object:  Table [dbo].[Invoice]    Script Date: 5/15/2021 4:54:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[id_invoice] [int] IDENTITY(1,1) NOT NULL,
	[inv_createdate] [date] NOT NULL,
	[inv_updatedate] [date] NOT NULL,
	[inv_code] [varchar](8) NOT NULL,
	[inv_idbook] [int] NOT NULL,
	[inv_total] [int] NOT NULL,
 CONSTRAINT [Pk_Invoice_id_invoice] PRIMARY KEY CLUSTERED 
(
	[id_invoice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__Invoice__95EA4EA85B668B59] UNIQUE NONCLUSTERED 
(
	[inv_idbook] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 5/15/2021 4:54:44 PM ******/
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
/****** Object:  Table [dbo].[room]    Script Date: 5/15/2021 4:54:44 PM ******/
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
/****** Object:  Table [dbo].[room_type]    Script Date: 5/15/2021 4:54:44 PM ******/
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
/****** Object:  Table [dbo].[status]    Script Date: 5/15/2021 4:54:44 PM ******/
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
/****** Object:  Table [dbo].[status_time]    Script Date: 5/15/2021 4:54:44 PM ******/
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
/****** Object:  Table [dbo].[user]    Script Date: 5/15/2021 4:54:44 PM ******/
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
/****** Object:  Table [dbo].[user_role]    Script Date: 5/15/2021 4:54:44 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetAvailableRoom]    Script Date: 5/15/2021 4:54:44 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetClients]    Script Date: 5/15/2021 4:54:44 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TotalRows]    Script Date: 5/15/2021 4:54:44 PM ******/
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
