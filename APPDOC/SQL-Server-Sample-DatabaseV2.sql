/****** Object:  Table [dbo].[Menu]    Script Date: 06/11/2563 6:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[menuid] [int] NOT NULL,
	[menuname] [nvarchar](100) NULL,
	[parentid] [int] NULL,
	[sequence] [int] NULL,
	[icon] [nvarchar](50) NULL,
	[active] [bit] NULL,
	[createddate] [datetime] NULL,
	[createdby] [nvarchar](20) NULL,
	[modifieddate] [datetime] NULL,
	[modifiedby] [nvarchar](20) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[menuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 06/11/2563 6:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleid] [int] IDENTITY(1,1) NOT NULL,
	[rolename] [nvarchar](50) NULL,
	[active] [bit] NULL,
	[createddate] [datetime] NULL,
	[createdby] [nvarchar](20) NULL,
	[modifieddate] [datetime] NULL,
	[modifiedby] [nvarchar](20) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Menu]    Script Date: 06/11/2563 6:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Menu](
	[roleid] [int] NOT NULL,
	[menuid] [int] NOT NULL,
 CONSTRAINT [PK_Role_Menu] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC,
	[menuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbmConfig]    Script Date: 06/11/2563 6:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbmConfig](
	[configId] [nvarchar](20) NOT NULL,
	[configName] [nvarchar](50) NOT NULL,
	[configValue] [nvarchar](4000) NULL,
	[active] [bit] NULL,
	[createdBy] [nvarchar](50) NULL,
	[createdDate] [datetime] NULL,
	[modifiedBy] [nvarchar](50) NULL,
	[modifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tbmConfig] PRIMARY KEY CLUSTERED 
(
	[configId] ASC,
	[configName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/11/2563 6:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](20) NOT NULL,
	[fullname] [nvarchar](100) NOT NULL,
	[roleid] [int] NOT NULL,
	[active] [bit] NULL,
	[createddate] [datetime] NULL,
	[createdby] [nvarchar](20) NULL,
	[modifieddate] [datetime] NULL,
	[modifiedby] [nvarchar](20) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Menu] ([menuid], [menuname], [parentid], [sequence], [icon], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (100, N'Master', NULL, 1, N'nav-icon fas fa-edit', 1, CAST(N'2020-09-09T12:07:41.867' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Menu] ([menuid], [menuname], [parentid], [sequence], [icon], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (101, N'MasterExample1', 100, 1, N'far fa-circle nav-icon', 1, CAST(N'2020-09-09T13:16:15.140' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Menu] ([menuid], [menuname], [parentid], [sequence], [icon], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (102, N'MasterExample2', 100, 2, N'far fa-circle nav-icon', 1, CAST(N'2020-09-09T13:16:39.527' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Menu] ([menuid], [menuname], [parentid], [sequence], [icon], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (200, N'Transaction', NULL, 2, N'nav-icon fas fa-copy', 1, CAST(N'2020-09-09T13:17:58.983' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Menu] ([menuid], [menuname], [parentid], [sequence], [icon], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (201, N'TransactionExample1', 200, 1, N'far fa-circle nav-icon', 1, CAST(N'2020-09-09T13:18:45.057' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Menu] ([menuid], [menuname], [parentid], [sequence], [icon], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (202, N'TransactionExample2', 200, 2, N'far fa-circle nav-icon', 1, CAST(N'2020-09-09T13:18:52.913' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Menu] ([menuid], [menuname], [parentid], [sequence], [icon], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (300, N'Report', NULL, 3, N'nav-icon fas fa-chart-pie', 1, CAST(N'2020-09-09T13:19:02.607' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Menu] ([menuid], [menuname], [parentid], [sequence], [icon], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (301, N'ReportExample1', 300, 1, N'far fa-circle nav-icon', 1, CAST(N'2020-09-23T08:38:55.360' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Menu] ([menuid], [menuname], [parentid], [sequence], [icon], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (302, N'ReportExample2', 300, 2, N'far fa-circle nav-icon', 1, CAST(N'2020-11-02T11:50:41.200' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Menu] ([menuid], [menuname], [parentid], [sequence], [icon], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (400, N'Authorize', NULL, 4, N'nav-icon fas fa-shield-alt', 1, CAST(N'2020-09-09T13:19:28.270' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Menu] ([menuid], [menuname], [parentid], [sequence], [icon], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (401, N'Role', 400, 1, N'far fa-circle nav-icon', 1, CAST(N'2020-09-09T13:19:43.697' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Menu] ([menuid], [menuname], [parentid], [sequence], [icon], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (402, N'Role Menu', 400, 2, N'far fa-circle nav-icon', 1, CAST(N'2020-09-09T13:19:43.927' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Menu] ([menuid], [menuname], [parentid], [sequence], [icon], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (403, N'User', 400, 3, N'far fa-circle nav-icon', 1, CAST(N'2020-09-11T11:12:33.147' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([roleid], [rolename], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (1, N'Admin', 1, CAST(N'2020-09-01T15:59:34.317' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[Role] ([roleid], [rolename], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (2, N'User', 1, CAST(N'2020-09-01T16:01:00.310' AS DateTime), N'admin', CAST(N'2020-09-15T14:04:57.467' AS DateTime), N'admin')
INSERT [dbo].[Role] ([roleid], [rolename], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (5, N'Role Test', 1, CAST(N'2020-09-23T10:55:18.583' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Role] ([roleid], [rolename], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (6, N'System Admin (Chagne)', 0, CAST(N'2020-10-14T11:58:32.783' AS DateTime), N'admin', CAST(N'2020-10-14T12:00:40.943' AS DateTime), N'suwidap')
SET IDENTITY_INSERT [dbo].[Role] OFF
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (1, 100)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (1, 101)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (1, 102)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (1, 200)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (1, 201)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (1, 202)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (1, 300)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (1, 301)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (1, 302)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (1, 400)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (1, 401)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (1, 402)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (1, 403)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (2, 100)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (2, 101)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (2, 102)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (2, 200)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (2, 201)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (2, 202)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (5, 100)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (5, 101)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (5, 102)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (5, 200)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (5, 201)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (5, 202)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (5, 300)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (5, 301)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (6, 100)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (6, 101)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (6, 102)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (6, 103)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (6, 104)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (6, 105)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (6, 200)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (6, 201)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (6, 202)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (6, 300)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (6, 301)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (6, 400)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (6, 401)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (6, 402)
INSERT [dbo].[Role_Menu] ([roleid], [menuid]) VALUES (6, 403)
INSERT [dbo].[tbmConfig] ([configId], [configName], [configValue], [active], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) VALUES (N'CHECKAD', N'CHECKAD', N'FALSE', 1, NULL, CAST(N'2020-03-03T02:35:48.583' AS DateTime), NULL, CAST(N'2020-03-03T02:35:48.583' AS DateTime))
INSERT [dbo].[tbmConfig] ([configId], [configName], [configValue], [active], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) VALUES (N'LOGINAPI', N'pass', N'', 1, NULL, CAST(N'2020-10-19T12:47:45.857' AS DateTime), NULL, CAST(N'2020-10-19T12:47:45.857' AS DateTime))
INSERT [dbo].[tbmConfig] ([configId], [configName], [configValue], [active], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) VALUES (N'LOGINAPI', N'user', N'', 1, NULL, CAST(N'2020-10-19T12:47:35.027' AS DateTime), NULL, CAST(N'2020-10-19T12:47:35.027' AS DateTime))
INSERT [dbo].[tbmConfig] ([configId], [configName], [configValue], [active], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) VALUES (N'URL', N'azureAuthenUri', N'', 1, NULL, CAST(N'2020-08-20T10:01:25.477' AS DateTime), NULL, CAST(N'2020-08-20T10:01:25.477' AS DateTime))
INSERT [dbo].[tbmConfig] ([configId], [configName], [configValue], [active], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) VALUES (N'URL', N'baseUri', N'', 1, NULL, CAST(N'2020-08-03T03:37:33.343' AS DateTime), NULL, CAST(N'2020-08-03T03:37:33.343' AS DateTime))
INSERT [dbo].[tbmConfig] ([configId], [configName], [configValue], [active], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) VALUES (N'URL', N'baseUri_SmsGateway', N'', 1, NULL, CAST(N'2020-08-03T03:37:34.543' AS DateTime), NULL, CAST(N'2020-08-03T03:37:34.543' AS DateTime))
INSERT [dbo].[tbmConfig] ([configId], [configName], [configValue], [active], [createdBy], [createdDate], [modifiedBy], [modifiedDate]) VALUES (N'URL', N'frontUri', N'', 1, NULL, CAST(N'2020-08-03T03:37:35.357' AS DateTime), NULL, CAST(N'2020-08-03T03:37:35.357' AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [username], [fullname], [roleid], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (1, N'test1', N'test1 test1', 1, 1, CAST(N'2020-09-01T15:15:59.753' AS DateTime), NULL, CAST(N'2020-09-03T17:22:12.383' AS DateTime), N'system')
INSERT [dbo].[Users] ([id], [username], [fullname], [roleid], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (2, N'test2', N'test2 test2', 1, 1, CAST(N'2020-09-07T14:18:24.187' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Users] ([id], [username], [fullname], [roleid], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (4, N'test3', N'test3 test3', 1, 1, CAST(N'2020-09-09T15:23:37.803' AS DateTime), NULL, CAST(N'2020-09-21T15:56:55.430' AS DateTime), N'system')
INSERT [dbo].[Users] ([id], [username], [fullname], [roleid], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (12, N'test4', N'test4 test4', 1, 1, CAST(N'2020-09-22T16:18:26.267' AS DateTime), NULL, CAST(N'2020-10-27T14:38:56.003' AS DateTime), N'system')
INSERT [dbo].[Users] ([id], [username], [fullname], [roleid], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (13, N'test5', N'test5 test5', 2, 1, CAST(N'2020-09-23T17:07:52.783' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Users] ([id], [username], [fullname], [roleid], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (14, N'test6', N'test6 test6', 1, 1, CAST(N'2020-10-14T11:51:20.093' AS DateTime), N'system', NULL, NULL)
INSERT [dbo].[Users] ([id], [username], [fullname], [roleid], [active], [createddate], [createdby], [modifieddate], [modifiedby]) VALUES (15, N'test7', N'test7 test7', 1, 1, CAST(N'2020-10-14T11:51:51.587' AS DateTime), N'system', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Icon]  DEFAULT (N'far fa-circle nav-icon') FOR [icon]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Status]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_createddate_1]  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_createddate_1]  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[tbmConfig] ADD  CONSTRAINT [DF_tbmConfig_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[tbmConfig] ADD  CONSTRAINT [DF_tbmConfig_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO
ALTER TABLE [dbo].[tbmConfig] ADD  CONSTRAINT [DF_tbmConfig_modifiedDate]  DEFAULT (getdate()) FOR [modifiedDate]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Status]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_createddate_1]  DEFAULT (getdate()) FOR [createddate]
GO
