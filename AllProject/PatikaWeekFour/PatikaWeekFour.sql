USE [PatikaWeekFour]
GO
/****** Object:  Table [dbo].[AssistantEducation]    Script Date: 30.01.2022 23:09:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssistantEducation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AssistantId] [int] NOT NULL,
	[EducationId] [int] NOT NULL,
 CONSTRAINT [PK_AssistantEducation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assistants]    Script Date: 30.01.2022 23:09:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assistants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[LastName] [nchar](250) NOT NULL,
	[CreateDate] [smalldatetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Assistants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 30.01.2022 23:09:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EducationName] [nvarchar](max) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
 CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EducationAttendance]    Script Date: 30.01.2022 23:09:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationAttendance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EducationWeekId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[Attendance] [bit] NULL,
 CONSTRAINT [PK_EducationAttendance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EducationWeeks]    Script Date: 30.01.2022 23:09:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationWeeks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EducationId] [int] NOT NULL,
	[EducationWeekNumber] [int] NOT NULL,
 CONSTRAINT [PK_EducationWeeks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParticipantEducation]    Script Date: 30.01.2022 23:09:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParticipantEducation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParticipantId] [int] NOT NULL,
	[EducationId] [int] NOT NULL,
 CONSTRAINT [PK_ParticipantEducation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participants]    Script Date: 30.01.2022 23:09:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[LastName] [nchar](250) NOT NULL,
	[CreateDate] [smalldatetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Participants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentEducation]    Script Date: 30.01.2022 23:09:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentEducation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[EducationId] [int] NOT NULL,
 CONSTRAINT [PK_StudentEducation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentEducationSuccessStatus]    Script Date: 30.01.2022 23:09:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentEducationSuccessStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[EducationId] [int] NOT NULL,
	[SuccessRate] [float] NOT NULL,
 CONSTRAINT [PK_StudentEducationSuccessStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 30.01.2022 23:09:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[LastName] [nvarchar](250) NOT NULL,
	[CreateDate] [smalldatetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[StudentTcNumber] [nvarchar](11) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeacherEducation]    Script Date: 30.01.2022 23:09:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherEducation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
	[EducationId] [int] NOT NULL,
 CONSTRAINT [PK_TeacherEducation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 30.01.2022 23:09:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[LastName] [nchar](250) NOT NULL,
	[CreateDate] [smalldatetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Assistants] ON 

INSERT [dbo].[Assistants] ([Id], [Name], [LastName], [CreateDate], [IsActive]) VALUES (1, N'Yüksel', N'Mahmutcepoglu                                                                                                                                                                                                                                             ', CAST(N'2021-01-01T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[Assistants] ([Id], [Name], [LastName], [CreateDate], [IsActive]) VALUES (2, N'Şükrü', N'Mor                                                                                                                                                                                                                                                       ', CAST(N'2022-01-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[Assistants] ([Id], [Name], [LastName], [CreateDate], [IsActive]) VALUES (3, N'Aysel', N'Yeşil                                                                                                                                                                                                                                                     ', CAST(N'2021-02-20T00:00:00' AS SmallDateTime), 1)
SET IDENTITY_INSERT [dbo].[Assistants] OFF
GO
SET IDENTITY_INSERT [dbo].[Education] ON 

INSERT [dbo].[Education] ([Id], [EducationName], [StartDate], [EndDate]) VALUES (4, N'C#', CAST(N'2021-01-01' AS Date), CAST(N'2021-03-29' AS Date))
INSERT [dbo].[Education] ([Id], [EducationName], [StartDate], [EndDate]) VALUES (5, N'Php', CAST(N'2021-01-01' AS Date), CAST(N'2021-03-29' AS Date))
INSERT [dbo].[Education] ([Id], [EducationName], [StartDate], [EndDate]) VALUES (7, N'Go Lang', CAST(N'2021-06-22' AS Date), CAST(N'2021-10-22' AS Date))
SET IDENTITY_INSERT [dbo].[Education] OFF
GO
SET IDENTITY_INSERT [dbo].[EducationAttendance] ON 

INSERT [dbo].[EducationAttendance] ([Id], [EducationWeekId], [StudentId], [Attendance]) VALUES (3, 1, 1, 1)
INSERT [dbo].[EducationAttendance] ([Id], [EducationWeekId], [StudentId], [Attendance]) VALUES (4, 2, 1, 0)
INSERT [dbo].[EducationAttendance] ([Id], [EducationWeekId], [StudentId], [Attendance]) VALUES (5, 3, 1, 1)
INSERT [dbo].[EducationAttendance] ([Id], [EducationWeekId], [StudentId], [Attendance]) VALUES (6, 4, 1, 1)
INSERT [dbo].[EducationAttendance] ([Id], [EducationWeekId], [StudentId], [Attendance]) VALUES (7, 5, 1, 1)
INSERT [dbo].[EducationAttendance] ([Id], [EducationWeekId], [StudentId], [Attendance]) VALUES (12, 7, 1, 0)
INSERT [dbo].[EducationAttendance] ([Id], [EducationWeekId], [StudentId], [Attendance]) VALUES (13, 8, 1, 1)
SET IDENTITY_INSERT [dbo].[EducationAttendance] OFF
GO
SET IDENTITY_INSERT [dbo].[EducationWeeks] ON 

INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (1, 4, 1)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (2, 4, 2)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (3, 4, 3)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (4, 4, 4)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (5, 4, 5)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (7, 4, 6)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (8, 4, 7)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (9, 5, 1)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (10, 5, 2)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (11, 5, 3)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (12, 5, 4)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (13, 5, 5)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (14, 5, 6)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (15, 5, 7)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (16, 7, 1)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (17, 7, 2)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (18, 7, 3)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (19, 7, 4)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (20, 7, 5)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (21, 7, 6)
INSERT [dbo].[EducationWeeks] ([Id], [EducationId], [EducationWeekNumber]) VALUES (22, 7, 7)
SET IDENTITY_INSERT [dbo].[EducationWeeks] OFF
GO
SET IDENTITY_INSERT [dbo].[Participants] ON 

INSERT [dbo].[Participants] ([Id], [Name], [LastName], [CreateDate], [IsActive]) VALUES (1, N'Rıza', N'Mahmutcepoglu                                                                                                                                                                                                                                             ', CAST(N'2021-01-01T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[Participants] ([Id], [Name], [LastName], [CreateDate], [IsActive]) VALUES (2, N'Fatih', N'Beyaz                                                                                                                                                                                                                                                     ', CAST(N'2022-01-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[Participants] ([Id], [Name], [LastName], [CreateDate], [IsActive]) VALUES (3, N'Fahrettin', N'Siyah                                                                                                                                                                                                                                                     ', CAST(N'2021-02-20T00:00:00' AS SmallDateTime), 1)
SET IDENTITY_INSERT [dbo].[Participants] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentEducation] ON 

INSERT [dbo].[StudentEducation] ([Id], [StudentId], [EducationId]) VALUES (1, 1, 4)
SET IDENTITY_INSERT [dbo].[StudentEducation] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [Name], [LastName], [CreateDate], [IsActive], [StudentTcNumber]) VALUES (1, N'Osman', N'Mahmutcepoglu                                                                                                                                                                                                                                             ', CAST(N'2021-01-01T00:00:00' AS SmallDateTime), 1, N'12345678912')
INSERT [dbo].[Students] ([Id], [Name], [LastName], [CreateDate], [IsActive], [StudentTcNumber]) VALUES (2, N'Mehmet', N'Sarı                                                                                                                                                                                                                                                      ', CAST(N'2022-01-21T00:00:00' AS SmallDateTime), 1, N'12345678913')
INSERT [dbo].[Students] ([Id], [Name], [LastName], [CreateDate], [IsActive], [StudentTcNumber]) VALUES (3, N'Muammer', N'Sarı                                                                                                                                                                                                                                                      ', CAST(N'2021-02-20T00:00:00' AS SmallDateTime), 1, N'12345678914')
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([Id], [Name], [LastName], [CreateDate], [IsActive]) VALUES (1, N'Ali', N'Mahmutcepoglu                                                                                                                                                                                                                                             ', CAST(N'2021-01-01T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[Teachers] ([Id], [Name], [LastName], [CreateDate], [IsActive]) VALUES (2, N'Ayşe', N'Sarı                                                                                                                                                                                                                                                      ', CAST(N'2022-01-21T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[Teachers] ([Id], [Name], [LastName], [CreateDate], [IsActive]) VALUES (3, N'Kadir', N'Sarı                                                                                                                                                                                                                                                      ', CAST(N'2021-02-20T00:00:00' AS SmallDateTime), 1)
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
ALTER TABLE [dbo].[Assistants] ADD  CONSTRAINT [DF_Assistants_İsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Participants] ADD  CONSTRAINT [DF_Participants_İsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_İsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_İsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AssistantEducation]  WITH CHECK ADD  CONSTRAINT [FK_AssistantEducation_Assistants] FOREIGN KEY([AssistantId])
REFERENCES [dbo].[Assistants] ([Id])
GO
ALTER TABLE [dbo].[AssistantEducation] CHECK CONSTRAINT [FK_AssistantEducation_Assistants]
GO
ALTER TABLE [dbo].[AssistantEducation]  WITH CHECK ADD  CONSTRAINT [FK_AssistantEducation_Education] FOREIGN KEY([EducationId])
REFERENCES [dbo].[Education] ([Id])
GO
ALTER TABLE [dbo].[AssistantEducation] CHECK CONSTRAINT [FK_AssistantEducation_Education]
GO
ALTER TABLE [dbo].[EducationAttendance]  WITH CHECK ADD  CONSTRAINT [FK_EducationAttendance_EducationWeeks] FOREIGN KEY([EducationWeekId])
REFERENCES [dbo].[EducationWeeks] ([Id])
GO
ALTER TABLE [dbo].[EducationAttendance] CHECK CONSTRAINT [FK_EducationAttendance_EducationWeeks]
GO
ALTER TABLE [dbo].[EducationAttendance]  WITH CHECK ADD  CONSTRAINT [FK_EducationAttendance_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[EducationAttendance] CHECK CONSTRAINT [FK_EducationAttendance_Students]
GO
ALTER TABLE [dbo].[EducationWeeks]  WITH CHECK ADD  CONSTRAINT [FK_EducationWeeks_Education] FOREIGN KEY([EducationId])
REFERENCES [dbo].[Education] ([Id])
GO
ALTER TABLE [dbo].[EducationWeeks] CHECK CONSTRAINT [FK_EducationWeeks_Education]
GO
ALTER TABLE [dbo].[ParticipantEducation]  WITH CHECK ADD  CONSTRAINT [FK_ParticipantEducation_Education] FOREIGN KEY([EducationId])
REFERENCES [dbo].[Education] ([Id])
GO
ALTER TABLE [dbo].[ParticipantEducation] CHECK CONSTRAINT [FK_ParticipantEducation_Education]
GO
ALTER TABLE [dbo].[ParticipantEducation]  WITH CHECK ADD  CONSTRAINT [FK_ParticipantEducation_Participants] FOREIGN KEY([ParticipantId])
REFERENCES [dbo].[Participants] ([Id])
GO
ALTER TABLE [dbo].[ParticipantEducation] CHECK CONSTRAINT [FK_ParticipantEducation_Participants]
GO
ALTER TABLE [dbo].[StudentEducation]  WITH CHECK ADD  CONSTRAINT [FK_StudentEducation_Education] FOREIGN KEY([EducationId])
REFERENCES [dbo].[Education] ([Id])
GO
ALTER TABLE [dbo].[StudentEducation] CHECK CONSTRAINT [FK_StudentEducation_Education]
GO
ALTER TABLE [dbo].[StudentEducation]  WITH CHECK ADD  CONSTRAINT [FK_StudentEducation_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[StudentEducation] CHECK CONSTRAINT [FK_StudentEducation_Students]
GO
ALTER TABLE [dbo].[StudentEducationSuccessStatus]  WITH CHECK ADD  CONSTRAINT [FK_StudentEducationSuccessStatus_Education] FOREIGN KEY([EducationId])
REFERENCES [dbo].[Education] ([Id])
GO
ALTER TABLE [dbo].[StudentEducationSuccessStatus] CHECK CONSTRAINT [FK_StudentEducationSuccessStatus_Education]
GO
ALTER TABLE [dbo].[StudentEducationSuccessStatus]  WITH CHECK ADD  CONSTRAINT [FK_StudentEducationSuccessStatus_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[StudentEducationSuccessStatus] CHECK CONSTRAINT [FK_StudentEducationSuccessStatus_Students]
GO
ALTER TABLE [dbo].[TeacherEducation]  WITH CHECK ADD  CONSTRAINT [FK_TeacherEducation_Education] FOREIGN KEY([EducationId])
REFERENCES [dbo].[Education] ([Id])
GO
ALTER TABLE [dbo].[TeacherEducation] CHECK CONSTRAINT [FK_TeacherEducation_Education]
GO
ALTER TABLE [dbo].[TeacherEducation]  WITH CHECK ADD  CONSTRAINT [FK_TeacherEducation_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([Id])
GO
ALTER TABLE [dbo].[TeacherEducation] CHECK CONSTRAINT [FK_TeacherEducation_Teachers]
GO
