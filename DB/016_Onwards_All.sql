CREATE TABLE [Onwards].[Locations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Onwards].[Locations] ON 
GO
INSERT [Onwards].[Locations] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) 
VALUES (1, N'Bangalore', CAST(N'2025-07-16T16:56:12.643' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[Locations] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive])
VALUES (2, N'Mumbai', CAST(N'2025-07-16T16:56:12.643' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[Locations] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) 
VALUES (3, N'New York', CAST(N'2025-07-16T16:56:12.643' AS DateTime), 1, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[Locations] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Location__737584F64DDCA250]    Script Date: 19-08-2025 12:11:30 ******/
ALTER TABLE [Onwards].[Locations] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [Onwards].[Locations] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[Locations] ADD  DEFAULT ((1)) FOR [IsActive]
GO
