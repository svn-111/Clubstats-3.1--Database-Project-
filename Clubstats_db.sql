USE [clubstats]
GO
/****** Object:  Table [dbo].[UTournament]    Script Date: 09/08/2022 01:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UTournament](
	[matchdate] [varchar](50) NOT NULL,
	[matchtime] [varchar](50) NOT NULL,
	[matchtype] [varchar](50) NOT NULL,
	[matcharea] [varchar](50) NOT NULL,
	[stadium] [varchar](50) NOT NULL,
	[opponent] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[UTournament] ([matchdate], [matchtime], [matchtype], [matcharea], [stadium], [opponent]) VALUES (N'12-12-22', N'6.30', N'UCL', N'Away', N'Old Trafford, Manchester', N'Man U')
INSERT [dbo].[UTournament] ([matchdate], [matchtime], [matchtype], [matcharea], [stadium], [opponent]) VALUES (N'12-12-22', N'6.00', N'UCL', N'Away', N'Old Trafford, Manchester', N'Man U')
/****** Object:  Table [dbo].[TRANSECTION]    Script Date: 09/08/2022 01:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TRANSECTION](
	[COMMENT] [varchar](max) NULL,
	[TYPE] [varchar](255) NULL,
	[AMOUNT] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TRANSECTION] ([COMMENT], [TYPE], [AMOUNT]) VALUES (N'Jersey sell', N'Credit', N'100000')
INSERT [dbo].[TRANSECTION] ([COMMENT], [TYPE], [AMOUNT]) VALUES (N'staf salary', N'Debit', N'30000')
INSERT [dbo].[TRANSECTION] ([COMMENT], [TYPE], [AMOUNT]) VALUES (N'Ground rent', N'Credit', N'500000')
INSERT [dbo].[TRANSECTION] ([COMMENT], [TYPE], [AMOUNT]) VALUES (N'Salary For Benzema---January', N'Debit', N'120000')
INSERT [dbo].[TRANSECTION] ([COMMENT], [TYPE], [AMOUNT]) VALUES (N'Salary For Marcelo---January', N'Debit', N'290000')
INSERT [dbo].[TRANSECTION] ([COMMENT], [TYPE], [AMOUNT]) VALUES (N'Jersey Sell', N'Credit', N'500000')
INSERT [dbo].[TRANSECTION] ([COMMENT], [TYPE], [AMOUNT]) VALUES (N'Salary For Kaka---January', N'Debit', N'200000')
INSERT [dbo].[TRANSECTION] ([COMMENT], [TYPE], [AMOUNT]) VALUES (N'jersey sell', N'Credit', N'100000')
INSERT [dbo].[TRANSECTION] ([COMMENT], [TYPE], [AMOUNT]) VALUES (N'Salary For Ronaldinho---April', N'Debit', N'200000')
/****** Object:  Table [dbo].[Tournament]    Script Date: 09/08/2022 01:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tournament](
	[matchdate] [varchar](50) NOT NULL,
	[opponent] [varchar](50) NOT NULL,
	[matchtype] [varchar](50) NOT NULL,
	[matcharea] [varchar](50) NOT NULL,
	[stadium] [varchar](50) NOT NULL,
	[result] [varchar](50) NOT NULL,
	[matchno] [int] IDENTITY(2000,12) NOT NULL,
	[score] [varchar](50) NULL,
 CONSTRAINT [PK_Tournament] PRIMARY KEY CLUSTERED 
(
	[matchno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tournament] ON
INSERT [dbo].[Tournament] ([matchdate], [opponent], [matchtype], [matcharea], [stadium], [result], [matchno], [score]) VALUES (N'23-03-2022', N'Getafe', N'Friendly', N'Away', N'RCDE Stadium', N'Draw', 2024, N'2-1')
INSERT [dbo].[Tournament] ([matchdate], [opponent], [matchtype], [matcharea], [stadium], [result], [matchno], [score]) VALUES (N'11-05-2022', N'Sevilla', N'La liga', N'Away', N'Estádio Do Maracanã', N'Win', 2036, N'3-1')
SET IDENTITY_INSERT [dbo].[Tournament] OFF
/****** Object:  Table [dbo].[TansPlayer]    Script Date: 09/08/2022 01:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TansPlayer](
	[player_name] [varchar](50) NOT NULL,
	[position] [varchar](50) NOT NULL,
	[age] [varchar](50) NOT NULL,
	[sex] [varchar](50) NOT NULL,
	[weight] [varchar](50) NOT NULL,
	[height] [varchar](50) NOT NULL,
	[nationality] [varchar](50) NOT NULL,
	[rating] [varchar](50) NOT NULL,
	[playerid] [varchar](50) NOT NULL,
	[salary] [varchar](50) NOT NULL,
	[value] [varchar](50) NULL,
 CONSTRAINT [PK_TansPlayer] PRIMARY KEY CLUSTERED 
(
	[playerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TansPlayer] ([player_name], [position], [age], [sex], [weight], [height], [nationality], [rating], [playerid], [salary], [value]) VALUES (N'R varane', N'L Forward', N'33', N'Male', N'62', N'150', N'France', N'85', N'222', N'300000', N'null')
INSERT [dbo].[TansPlayer] ([player_name], [position], [age], [sex], [weight], [height], [nationality], [rating], [playerid], [salary], [value]) VALUES (N'Kaka', N'L Forward', N'35', N'Male', N'66', N'151', N'Brazilian', N'91', N'311', N'200000', N'null')
INSERT [dbo].[TansPlayer] ([player_name], [position], [age], [sex], [weight], [height], [nationality], [rating], [playerid], [salary], [value]) VALUES (N'L martinez', N'R Mid-field', N'29', N'Male', N'56', N'156', N'Argentine', N'88', N'438', N'100000', N'1000000')
INSERT [dbo].[TansPlayer] ([player_name], [position], [age], [sex], [weight], [height], [nationality], [rating], [playerid], [salary], [value]) VALUES (N'David Villa', N'R Forward', N'41', N'Male', N'59', N'147', N'Spanish', N'86', N'530', N'140000', N'null')
INSERT [dbo].[TansPlayer] ([player_name], [position], [age], [sex], [weight], [height], [nationality], [rating], [playerid], [salary], [value]) VALUES (N'Ronaldo', N'L Forward', N'35', N'Male', N'59', N'161', N'Portugese', N'89', N'890', N'400000', N'7000000')
/****** Object:  Table [dbo].[stuff]    Script Date: 09/08/2022 01:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stuff](
	[stuffname] [varchar](50) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[age] [varchar](50) NOT NULL,
	[sex] [varchar](50) NOT NULL,
	[role] [varchar](50) NOT NULL,
	[nationality] [varchar](50) NOT NULL,
	[stuffid] [varchar](50) NOT NULL,
	[stuffsalary] [varchar](max) NULL,
 CONSTRAINT [PK_stuff] PRIMARY KEY CLUSTERED 
(
	[stuffid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[stuff] ([stuffname], [type], [age], [sex], [role], [nationality], [stuffid], [stuffsalary]) VALUES (N'tahmid', N'President', N'20', N'Male', N'Vice', N'arg', N'099', N'')
INSERT [dbo].[stuff] ([stuffname], [type], [age], [sex], [role], [nationality], [stuffid], [stuffsalary]) VALUES (N'La porte', N'President', N'75', N'male', N'chief', N'spain', N'231', NULL)
INSERT [dbo].[stuff] ([stuffname], [type], [age], [sex], [role], [nationality], [stuffid], [stuffsalary]) VALUES (N'Remon', N'Chairman', N'23', N'Male', N'Assistant', N'Bd', N'984', N'50000')
/****** Object:  Table [dbo].[signup]    Script Date: 09/08/2022 01:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[signup](
	[name] [varchar](50) NOT NULL,
	[dob] [varchar](50) NULL,
	[u_name] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[pswrd] [varchar](50) NOT NULL,
	[id] [varchar](50) NULL,
 CONSTRAINT [PK_signup] PRIMARY KEY CLUSTERED 
(
	[u_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_signup] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[signup] ([name], [dob], [u_name], [email], [pswrd], [id]) VALUES (N'Aranyak', N'12-05-2000', N'fja093', N'rgbyuhb', N'123456', NULL)
INSERT [dbo].[signup] ([name], [dob], [u_name], [email], [pswrd], [id]) VALUES (N'Remon', N'341625', N'remon113', N'skjdbfsj', N'456789', N'190204111')
INSERT [dbo].[signup] ([name], [dob], [u_name], [email], [pswrd], [id]) VALUES (N'svn', N'234523', N'svn16', N'svn@gmail.com', N'123456', N'1412752793')
INSERT [dbo].[signup] ([name], [dob], [u_name], [email], [pswrd], [id]) VALUES (N'shovon', N'12123', N'svna', N'shovon@gmail.com', N'12345', N'')
/****** Object:  Table [dbo].[REVENUE]    Script Date: 09/08/2022 01:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REVENUE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CREDIT] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[REVENUE] ON
INSERT [dbo].[REVENUE] ([ID], [CREDIT]) VALUES (1, N'360000')
SET IDENTITY_INSERT [dbo].[REVENUE] OFF
/****** Object:  Table [dbo].[PlayerStuff]    Script Date: 09/08/2022 01:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlayerStuff](
	[Name] [varchar](max) NOT NULL,
	[dob] [varchar](max) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[email] [varchar](max) NOT NULL,
	[password] [varchar](max) NOT NULL,
	[uid] [varchar](50) NULL,
 CONSTRAINT [PK_PlayerStuff] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PlayerStuff] ([Name], [dob], [username], [email], [password], [uid]) VALUES (N'L messi', N'11-12-1992', N'lmessi10', N'lmessi@gmail.com', N'12345', NULL)
INSERT [dbo].[PlayerStuff] ([Name], [dob], [username], [email], [password], [uid]) VALUES (N'mehedi', N'4/4/2001', N'mehedi', N'mehedi@gmail.com', N'12345', N'123')
INSERT [dbo].[PlayerStuff] ([Name], [dob], [username], [email], [password], [uid]) VALUES (N'neymar', N'12-11-23', N'ney10', N'fg@gmail.com', N'1234', N'1234')
INSERT [dbo].[PlayerStuff] ([Name], [dob], [username], [email], [password], [uid]) VALUES (N'nurul', N'324235', N'nrl', N'adggsegr', N'12345', N'555')
INSERT [dbo].[PlayerStuff] ([Name], [dob], [username], [email], [password], [uid]) VALUES (N'remon', N'124243', N'rmn', N'dfgds', N'12345', N'121')
INSERT [dbo].[PlayerStuff] ([Name], [dob], [username], [email], [password], [uid]) VALUES (N'Shovon', N'26-05-2000', N'svn', N'shree@gmail.com', N'12345', N'111')
INSERT [dbo].[PlayerStuff] ([Name], [dob], [username], [email], [password], [uid]) VALUES (N'Tahmid', N'26-5-2000', N'tahmid', N'tahmid@gmail.com', N'12345', N'')
/****** Object:  Table [dbo].[player]    Script Date: 09/08/2022 01:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[player](
	[player_name] [varchar](50) NOT NULL,
	[position] [varchar](50) NOT NULL,
	[age] [varchar](50) NOT NULL,
	[sex] [varchar](50) NOT NULL,
	[weight] [varchar](50) NOT NULL,
	[height] [varchar](50) NOT NULL,
	[nationality] [varchar](50) NOT NULL,
	[rating] [varchar](50) NOT NULL,
	[playerid] [nvarchar](50) NOT NULL,
	[salary] [varchar](50) NULL,
	[value] [varchar](50) NULL,
 CONSTRAINT [PK_player] PRIMARY KEY CLUSTERED 
(
	[playerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[player] ([player_name], [position], [age], [sex], [weight], [height], [nationality], [rating], [playerid], [salary], [value]) VALUES (N'Ronaldinho', N'L Forward', N'43', N'Male', N'55', N'145', N'Brazillian', N'99', N'088', N'200000', N'1000000')
INSERT [dbo].[player] ([player_name], [position], [age], [sex], [weight], [height], [nationality], [rating], [playerid], [salary], [value]) VALUES (N'Benzema', N'C Forward', N'33', N'male', N'70', N'5.9', N'French', N'92', N'101', N'120000', NULL)
INSERT [dbo].[player] ([player_name], [position], [age], [sex], [weight], [height], [nationality], [rating], [playerid], [salary], [value]) VALUES (N'Ronaldo', N'L Forward', N'35', N'Male', N'59', N'161', N'Portugese', N'89', N'111', N'400000', NULL)
INSERT [dbo].[player] ([player_name], [position], [age], [sex], [weight], [height], [nationality], [rating], [playerid], [salary], [value]) VALUES (N'remon', N'L Forward', N'22', N'Male', N'56', N'123', N'bd', N'88', N'121', N'20000', N'222000')
INSERT [dbo].[player] ([player_name], [position], [age], [sex], [weight], [height], [nationality], [rating], [playerid], [salary], [value]) VALUES (N'mehedi', N'L Forward', N'22', N'Male', N'22', N'22', N'bd', N'23', N'123', N'23344', N'234444')
INSERT [dbo].[player] ([player_name], [position], [age], [sex], [weight], [height], [nationality], [rating], [playerid], [salary], [value]) VALUES (N'Marcelo', N'L Defense', N'36', N'Male', N'62', N'138', N'Brazilian', N'84', N'341', N'290000', N'null')
INSERT [dbo].[player] ([player_name], [position], [age], [sex], [weight], [height], [nationality], [rating], [playerid], [salary], [value]) VALUES (N'Vinicius', N'R Forward', N'24', N'Male', N'52', N'148', N'Brazillian', N'82', N'431', N'150000', N'null')
INSERT [dbo].[player] ([player_name], [position], [age], [sex], [weight], [height], [nationality], [rating], [playerid], [salary], [value]) VALUES (N'nurul', N'L Forward', N'22', N'Male', N'56', N'150', N'bd', N'67', N'555', N'38723', N'2423434')
INSERT [dbo].[player] ([player_name], [position], [age], [sex], [weight], [height], [nationality], [rating], [playerid], [salary], [value]) VALUES (N'C Puyol', N'L Defense', N'39', N'Male', N'67', N'154', N'Spanish', N'88', N'567', N'200000', N'null')
/****** Object:  Table [dbo].[photo]    Script Date: 09/08/2022 01:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[photo](
	[imgName] [varchar](max) NULL,
	[imgId] [int] IDENTITY(101,1) NOT NULL,
	[imgPath] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[photo] ON
INSERT [dbo].[photo] ([imgName], [imgId], [imgPath]) VALUES (N'', 108, N'C:\Users\shree\Desktop\New folder\1394647044.0.jpg')
INSERT [dbo].[photo] ([imgName], [imgId], [imgPath]) VALUES (N'', 105, N'C:\Users\shree\Desktop\New folder\_AV13672Thumb.jpg')
INSERT [dbo].[photo] ([imgName], [imgId], [imgPath]) VALUES (N'rma champion', 103, N'C:\Users\shree\Desktop\New folder\GettyImages-1240355922.jpg')
INSERT [dbo].[photo] ([imgName], [imgId], [imgPath]) VALUES (N'Rma 3', 106, N'C:\Users\shree\Desktop\New folder\gettyimages-963232034-612x612.jpg')
INSERT [dbo].[photo] ([imgName], [imgId], [imgPath]) VALUES (N'Rma-5', 107, N'C:\Users\shree\Desktop\New folder\GettyImages-1240355922.jpg')
INSERT [dbo].[photo] ([imgName], [imgId], [imgPath]) VALUES (N'Picture', 109, N'C:\Users\shree\Desktop\New folder\logo.jpg')
INSERT [dbo].[photo] ([imgName], [imgId], [imgPath]) VALUES (N'shovon', 110, N'C:\Users\shree\Desktop\New folder\gettyimages-963232034-612x612.jpg')
SET IDENTITY_INSERT [dbo].[photo] OFF
/****** Object:  Table [dbo].[Notice]    Script Date: 09/08/2022 01:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notice](
	[username] [varchar](50) NOT NULL,
	[notice] [varchar](max) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Notice] ([username], [notice]) VALUES (N'fja093', N'Welcome')
INSERT [dbo].[Notice] ([username], [notice]) VALUES (N'fja093', N'null here we go')
INSERT [dbo].[Notice] ([username], [notice]) VALUES (N'fja093', N'2022-09-03 here we go')
INSERT [dbo].[Notice] ([username], [notice]) VALUES (N'null', N'2022-09-03__Hello Everyone, hope you are doing well at your daily Activities....')
INSERT [dbo].[Notice] ([username], [notice]) VALUES (N'null', N'2022-09-04__Good Morning!!!')
/****** Object:  Table [dbo].[ground]    Script Date: 09/08/2022 01:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ground](
	[groundname] [varchar](50) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[capacity] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[condition] [varchar](50) NOT NULL,
	[ground_id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ground] PRIMARY KEY CLUSTERED 
(
	[ground_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Coach]    Script Date: 09/08/2022 01:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Coach](
	[coachname] [varchar](50) NOT NULL,
	[formation] [varchar](50) NOT NULL,
	[formtypes] [varchar](50) NOT NULL,
	[age] [varchar](50) NOT NULL,
	[sex] [varchar](50) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[rating] [varchar](50) NOT NULL,
	[nationality] [varchar](50) NOT NULL,
	[coach_id] [varchar](50) NOT NULL,
	[salary] [varchar](50) NULL,
 CONSTRAINT [PK_Coach] PRIMARY KEY CLUSTERED 
(
	[coach_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Coach] ([coachname], [formation], [formtypes], [age], [sex], [type], [rating], [nationality], [coach_id], [salary]) VALUES (N'raian', N'4-3-3', N'Attacking', N'35', N'Male', N'Head', N'24', N'ban', N'11', N'12000')
INSERT [dbo].[Coach] ([coachname], [formation], [formtypes], [age], [sex], [type], [rating], [nationality], [coach_id], [salary]) VALUES (N'akfy', N'4-3-3', N'Attacking', N'45', N'Male', N'Head', N'23', N'ban', N'12', N'25000')
