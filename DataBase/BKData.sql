USE [HotelManagementREAL]
GO
SET IDENTITY_INSERT [dbo].[client] ON 

INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (1, N'Cuong', N'0912345678', N'CLIE0001', N'cuongit2k1@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (2, N'Toan', N'1234567890', N'CLIE0002', N'Toanit2k1@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (3, N'Nhat', N'0987654321', N'CLIE0003', N'Nhatit2k1@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (9, N'dadsa', N'0981234567', N'CLIE0009', N'dasdasdas', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (10, N'Dung', N'5612347890', N'CLIE0010', N'Kingvip@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (17, N'Cuongadas', N'0912345633', N'CLIE0017', N'cuongit2k1@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (18, N'C', N'0912345633', N'CLIE0018', N'cuongit2k1@gmail.com', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (19, N'dadsa', N'0981234567', N'CLIE0019', N'dasdasdas', 1)
INSERT [dbo].[client] ([id_client], [cli_name], [cli_phone], [cli_code], [cli_gmail], [cli_activeflag]) VALUES (20, N'dadsa', N'0981234567', N'CLIE0020', N'dasdasdas', 1)
SET IDENTITY_INSERT [dbo].[client] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id_user], [user_name], [user_photo], [user_gmail], [user_phone], [user_gender], [user_activeflag], [user_code], [user_password]) VALUES (1, N'cuong', 1, N'cuong@gmail.com', N'123456789', 1, 1, N'USER0001', N'phanvancuong2001')
INSERT [dbo].[user] ([id_user], [user_name], [user_photo], [user_gmail], [user_phone], [user_gender], [user_activeflag], [user_code], [user_password]) VALUES (2, N'cuong', 2, N'phanncuongg2001@gmail.com', N'987654321', 0, 0, N'USER0002', N'cuongphan2001')
INSERT [dbo].[user] ([id_user], [user_name], [user_photo], [user_gmail], [user_phone], [user_gender], [user_activeflag], [user_code], [user_password]) VALUES (3, N'SuperAdmin', 1, N'cuong@gmail.com', N'123456789', 1, 1, N'USER0003', N'adminpor2021')
INSERT [dbo].[user] ([id_user], [user_name], [user_photo], [user_gmail], [user_phone], [user_gender], [user_activeflag], [user_code], [user_password]) VALUES (4, N'cuong', 2, N'phanncuongg2001@gmail.com', N'987654321', 0, 1, N'USER0004', N'cuongDHBK2019')
INSERT [dbo].[user] ([id_user], [user_name], [user_photo], [user_gmail], [user_phone], [user_gender], [user_activeflag], [user_code], [user_password]) VALUES (5, N'cuong', 1, N'cuong@gmail.com', N'123456789', 1, 1, N'USER0005', N'phanvancuong2001')
INSERT [dbo].[user] ([id_user], [user_name], [user_photo], [user_gmail], [user_phone], [user_gender], [user_activeflag], [user_code], [user_password]) VALUES (6, N'cuong', 1, N'cuong@gmail.com', N'123456789', 1, 1, N'USER0006', N'phanvancuong2001')
SET IDENTITY_INSERT [dbo].[user] OFF
GO
SET IDENTITY_INSERT [dbo].[booking] ON 

INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (1, CAST(N'2021-03-18' AS Date), CAST(N'2021-03-18' AS Date), 1, N'ProYesssVip', N'"Proccess"', 200000, 1000000, CAST(N'2021-03-25' AS Date), 2, N'BOOK0001', CAST(N'2021-03-21' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (2, CAST(N'2021-03-20' AS Date), CAST(N'2021-03-21' AS Date), 2, N'"VIP Client"', N'"Proccess"', 500000, 3000000, CAST(N'2021-03-25' AS Date), 1, N'BOOK0002', CAST(N'2021-03-23' AS Date))
INSERT [dbo].[booking] ([id_book], [book_bookdate], [book_checkindate], [book_idclient], [book_note], [book_status], [book_deposit], [book_totalprice], [book_checkoutdate], [book_iduser], [book_code], [book_duedate]) VALUES (3, CAST(N'2021-05-13' AS Date), CAST(N'2021-05-13' AS Date), 20, N'Ko bk', N'Proccess', 20000, 10000000, CAST(N'0001-01-01' AS Date), 1, N'BOOK0003', CAST(N'2021-05-13' AS Date))
SET IDENTITY_INSERT [dbo].[booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (3, CAST(N'2021-03-25' AS Date), CAST(N'2021-03-25' AS Date), N'INVO0002', 2, 3000000)
INSERT [dbo].[Invoice] ([id_invoice], [inv_createdate], [inv_updatedate], [inv_code], [inv_idbook], [inv_total]) VALUES (4, CAST(N'2021-03-26' AS Date), CAST(N'2021-03-26' AS Date), N'INVO0004', 1, 1000000)
SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[room_type] ON 

INSERT [dbo].[room_type] ([id_roomtype], [roty_name], [roty_description], [roty_currentprice], [roty_capacity], [roty_activeflag], [roty_code]) VALUES (1, N'single room', N'', 1000000, 4, 1, N'TYPE0001')
INSERT [dbo].[room_type] ([id_roomtype], [roty_name], [roty_description], [roty_currentprice], [roty_capacity], [roty_activeflag], [roty_code]) VALUES (2, N'double room', N'', 2000000, 4, 1, N'TYPE0002')
INSERT [dbo].[room_type] ([id_roomtype], [roty_name], [roty_description], [roty_currentprice], [roty_capacity], [roty_activeflag], [roty_code]) VALUES (3, N'king room', N'', 5000000, 1, 1, N'TYPE0003')
INSERT [dbo].[room_type] ([id_roomtype], [roty_name], [roty_description], [roty_currentprice], [roty_capacity], [roty_activeflag], [roty_code]) VALUES (4, N'queen room', N'', 5000000, 1, 1, N'TYPE0004')
INSERT [dbo].[room_type] ([id_roomtype], [roty_name], [roty_description], [roty_currentprice], [roty_capacity], [roty_activeflag], [roty_code]) VALUES (5, N'family room', N'', 5000000, 7, 1, N'TYPE0005')
INSERT [dbo].[room_type] ([id_roomtype], [roty_name], [roty_description], [roty_currentprice], [roty_capacity], [roty_activeflag], [roty_code]) VALUES (6, N'president room', N'', 1000000, 1, 1, N'TYPE0006')
SET IDENTITY_INSERT [dbo].[room_type] OFF
GO
SET IDENTITY_INSERT [dbo].[room] ON 

INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (1, N'A100', N'Ko thich ghi do sao', 5, 0)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (3, N'A103', NULL, 4, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (4, N'A104', NULL, 1, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (5, N'A105', NULL, 2, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (6, N'A106', NULL, 1, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (9, N'A102', N'Nothing', 6, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (10, N'ProVIP', N'adadada', 6, 1)
INSERT [dbo].[room] ([id_room], [room_name], [room_description], [room_idroomtype], [room_activeflag]) VALUES (11, N'A107', N'Nothingggggggg', 4, 0)
SET IDENTITY_INSERT [dbo].[room] OFF
GO
SET IDENTITY_INSERT [dbo].[booking_detail] ON 

INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (2, 4000000, 2, 3, N'"MNone"', N'ROTY0004')
INSERT [dbo].[booking_detail] ([id_boodet], [boodet_price], [boodet_idbook], [boodet_idroom], [boodet_note], [boodet_idroomtype]) VALUES (6, 1000000, 3, 1, N'None', N'ROTY0002')
SET IDENTITY_INSERT [dbo].[booking_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[ImgStorage] ON 

INSERT [dbo].[ImgStorage] ([id_imgsto], [imgsto_url], [imgsto_idrootyp], [imgsto_iduser]) VALUES (19, N'/home/cuong/vip', 2, NULL)
INSERT [dbo].[ImgStorage] ([id_imgsto], [imgsto_url], [imgsto_idrootyp], [imgsto_iduser]) VALUES (24, N'/home/cuong/oke', 1, NULL)
INSERT [dbo].[ImgStorage] ([id_imgsto], [imgsto_url], [imgsto_idrootyp], [imgsto_iduser]) VALUES (27, N'D:\\C#\\DO_AN\\PBL3REAL\\ImageSource\\OIP.jpg', 1, NULL)
INSERT [dbo].[ImgStorage] ([id_imgsto], [imgsto_url], [imgsto_idrootyp], [imgsto_iduser]) VALUES (28, N'/home/cuong/oke', 1, NULL)
SET IDENTITY_INSERT [dbo].[ImgStorage] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([id_role], [role_name], [role_description]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[role] ([id_role], [role_name], [role_description]) VALUES (2, N'Clerk', NULL)
INSERT [dbo].[role] ([id_role], [role_name], [role_description]) VALUES (3, N'Service Staff', NULL)
INSERT [dbo].[role] ([id_role], [role_name], [role_description]) VALUES (4, N'Receptionist', NULL)
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[user_role] ON 

INSERT [dbo].[user_role] ([id_userol], [userol_iduser], [userol_idrole]) VALUES (28, 2, 2)
INSERT [dbo].[user_role] ([id_userol], [userol_iduser], [userol_idrole]) VALUES (29, 2, 3)
INSERT [dbo].[user_role] ([id_userol], [userol_iduser], [userol_idrole]) VALUES (30, 1, 1)
SET IDENTITY_INSERT [dbo].[user_role] OFF
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
INSERT [dbo].[status_time] ([id_statim], [statim_fromdate], [statim_todate], [statim_idroom], [statim_idstatus]) VALUES (33, CAST(N'2021-03-21' AS Date), CAST(N'2021-03-25' AS Date), 3, 3)
INSERT [dbo].[status_time] ([id_statim], [statim_fromdate], [statim_todate], [statim_idroom], [statim_idstatus]) VALUES (35, CAST(N'2021-03-21' AS Date), CAST(N'2021-03-25' AS Date), 3, 2)
SET IDENTITY_INSERT [dbo].[status_time] OFF
GO
