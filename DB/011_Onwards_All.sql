
--- 22 July-25 
SET IDENTITY_INSERT [Onwards].[Shift] ON 
GO
INSERT [Onwards].[Shift] ([ShiftId], [ShiftName], [StartTime], [EndTime], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (1, N'Morning Shift', CAST(N'09:00:00' AS Time), CAST(N'18:00:00' AS Time), NULL, CAST(N'2025-07-08T12:06:02.760' AS DateTime), NULL, NULL, 1)
GO
INSERT [Onwards].[Shift] ([ShiftId], [ShiftName], [StartTime], [EndTime], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (2, N'Afternoon Shift', CAST(N'14:00:00' AS Time), CAST(N'21:00:00' AS Time), NULL, CAST(N'2025-07-08T12:06:02.760' AS DateTime), NULL, NULL, 1)
GO
INSERT [Onwards].[Shift] ([ShiftId], [ShiftName], [StartTime], [EndTime], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (3, N'Evening Shift', CAST(N'18:00:00' AS Time), CAST(N'03:00:00' AS Time), NULL, CAST(N'2025-07-08T12:06:02.760' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[Shift] OFF


SET IDENTITY_INSERT [Onwards].[UserShiftAssignment] ON 
GO
INSERT [Onwards].[UserShiftAssignment] ([Id], [UserId], [ShiftId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (1, 1, 1, NULL, CAST(N'2025-07-08T12:21:46.453' AS DateTime), NULL, NULL, 1)
GO
INSERT [Onwards].[UserShiftAssignment] ([Id], [UserId], [ShiftId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (2, 2, 2, NULL, CAST(N'2025-07-08T12:21:46.453' AS DateTime), NULL, NULL, 1)
GO
INSERT [Onwards].[UserShiftAssignment] ([Id], [UserId], [ShiftId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (3, 3, 3, NULL, CAST(N'2025-07-08T12:21:46.453' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[UserShiftAssignment] OFF

 