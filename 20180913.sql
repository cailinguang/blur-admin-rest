USE [ISMS]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user_role'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'task_log'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'standard_libary_node'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'standard_libary'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'role_menu'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'role'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'menu_resource'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'menu'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'evaluation_libary_node'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'evaluation_libary'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dept'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'attachment'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'applicability_libary'
GO
ALTER TABLE [dbo].[user_role] DROP CONSTRAINT [DF__user_role__role___02FC7413]
GO
ALTER TABLE [dbo].[user_role] DROP CONSTRAINT [DF__user_role__user___02084FDA]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__status__01142BA1]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__email__00200768]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__phone__7F2BE32F]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__dept_id__7E37BEF6]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__nick_name__7D439ABD]
GO
ALTER TABLE [dbo].[task_log] DROP CONSTRAINT [DF__task_log__chapte__7C4F7684]
GO
ALTER TABLE [dbo].[task_log] DROP CONSTRAINT [DF__task_log__type__7B5B524B]
GO
ALTER TABLE [dbo].[task_log] DROP CONSTRAINT [DF__task_log__evalua__7A672E12]
GO
ALTER TABLE [dbo].[task_log] DROP CONSTRAINT [DF__task_log__questi__797309D9]
GO
ALTER TABLE [dbo].[task_log] DROP CONSTRAINT [DF__task_log__questi__787EE5A0]
GO
ALTER TABLE [dbo].[task_log] DROP CONSTRAINT [DF__task_log__questi__778AC167]
GO
ALTER TABLE [dbo].[task_log] DROP CONSTRAINT [DF__task_log__dept__76969D2E]
GO
ALTER TABLE [dbo].[task_log] DROP CONSTRAINT [DF__task_log__user__75A278F5]
GO
ALTER TABLE [dbo].[task_log] DROP CONSTRAINT [DF__task_log__time__74AE54BC]
GO
ALTER TABLE [dbo].[task_log] DROP CONSTRAINT [DF__task_log__name__73BA3083]
GO
ALTER TABLE [dbo].[standard_libary_node] DROP CONSTRAINT [DF__standard___node___72C60C4A]
GO
ALTER TABLE [dbo].[standard_libary_node] DROP CONSTRAINT [DF__standard___descr__71D1E811]
GO
ALTER TABLE [dbo].[standard_libary_node] DROP CONSTRAINT [DF__standard_l__name__70DDC3D8]
GO
ALTER TABLE [dbo].[standard_libary_node] DROP CONSTRAINT [DF__standard_l__type__6FE99F9F]
GO
ALTER TABLE [dbo].[standard_libary_node] DROP CONSTRAINT [DF__standard___stand__6EF57B66]
GO
ALTER TABLE [dbo].[standard_libary_node] DROP CONSTRAINT [DF__standard___paren__6E01572D]
GO
ALTER TABLE [dbo].[standard_libary] DROP CONSTRAINT [DF__standard___creat__6D0D32F4]
GO
ALTER TABLE [dbo].[standard_libary] DROP CONSTRAINT [DF__standard_l__type__6C190EBB]
GO
ALTER TABLE [dbo].[standard_libary] DROP CONSTRAINT [DF__standard___descr__6B24EA82]
GO
ALTER TABLE [dbo].[standard_libary] DROP CONSTRAINT [DF__standard_l__name__6A30C649]
GO
ALTER TABLE [dbo].[standard_libary] DROP CONSTRAINT [DF__standard_lib__id__693CA210]
GO
ALTER TABLE [dbo].[role_menu] DROP CONSTRAINT [DF__role_menu__menu___68487DD7]
GO
ALTER TABLE [dbo].[role_menu] DROP CONSTRAINT [DF__role_menu__role___6754599E]
GO
ALTER TABLE [dbo].[role] DROP CONSTRAINT [DF__role__descriptio__66603565]
GO
ALTER TABLE [dbo].[role] DROP CONSTRAINT [DF__role__name__656C112C]
GO
ALTER TABLE [dbo].[role] DROP CONSTRAINT [DF__role__code__6477ECF3]
GO
ALTER TABLE [dbo].[menu_resource] DROP CONSTRAINT [DF__menu_resour__url__6383C8BA]
GO
ALTER TABLE [dbo].[menu_resource] DROP CONSTRAINT [DF__menu_reso__menu___628FA481]
GO
ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF__menu__position__619B8048]
GO
ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF__menu__parent__60A75C0F]
GO
ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF__menu__module__5FB337D6]
GO
ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF__menu__name__5EBF139D]
GO
ALTER TABLE [dbo].[evaluation_libary_node] DROP CONSTRAINT [DF__evaluatio__appli__5DCAEF64]
GO
ALTER TABLE [dbo].[evaluation_libary_node] DROP CONSTRAINT [DF__evaluatio__node___5CD6CB2B]
GO
ALTER TABLE [dbo].[evaluation_libary_node] DROP CONSTRAINT [DF__evaluatio__compl__5BE2A6F2]
GO
ALTER TABLE [dbo].[evaluation_libary_node] DROP CONSTRAINT [DF__evaluatio__level__5AEE82B9]
GO
ALTER TABLE [dbo].[evaluation_libary_node] DROP CONSTRAINT [DF__evaluatio__sever__59FA5E80]
GO
ALTER TABLE [dbo].[evaluation_libary_node] DROP CONSTRAINT [DF__evaluatio__statu__59063A47]
GO
ALTER TABLE [dbo].[evaluation_libary_node] DROP CONSTRAINT [DF__evaluatio__assig__5812160E]
GO
ALTER TABLE [dbo].[evaluation_libary_node] DROP CONSTRAINT [DF__evaluatio__targe__571DF1D5]
GO
ALTER TABLE [dbo].[evaluation_libary_node] DROP CONSTRAINT [DF__evaluatio__descr__5629CD9C]
GO
ALTER TABLE [dbo].[evaluation_libary_node] DROP CONSTRAINT [DF__evaluation__name__5535A963]
GO
ALTER TABLE [dbo].[evaluation_libary_node] DROP CONSTRAINT [DF__evaluation__type__5441852A]
GO
ALTER TABLE [dbo].[evaluation_libary_node] DROP CONSTRAINT [DF__evaluatio__evalu__534D60F1]
GO
ALTER TABLE [dbo].[evaluation_libary_node] DROP CONSTRAINT [DF__evaluatio__paren__52593CB8]
GO
ALTER TABLE [dbo].[evaluation_libary] DROP CONSTRAINT [DF__evaluatio__creat__5165187F]
GO
ALTER TABLE [dbo].[evaluation_libary] DROP CONSTRAINT [DF__evaluation__type__5070F446]
GO
ALTER TABLE [dbo].[evaluation_libary] DROP CONSTRAINT [DF__evaluatio__evalu__4F7CD00D]
GO
ALTER TABLE [dbo].[evaluation_libary] DROP CONSTRAINT [DF__evaluatio__creat__4E88ABD4]
GO
ALTER TABLE [dbo].[evaluation_libary] DROP CONSTRAINT [DF__evaluatio__appli__4D94879B]
GO
ALTER TABLE [dbo].[evaluation_libary] DROP CONSTRAINT [DF__evaluatio__statu__4CA06362]
GO
ALTER TABLE [dbo].[evaluation_libary] DROP CONSTRAINT [DF__evaluatio__descr__4BAC3F29]
GO
ALTER TABLE [dbo].[evaluation_libary] DROP CONSTRAINT [DF__evaluation__name__4AB81AF0]
GO
ALTER TABLE [dbo].[dept] DROP CONSTRAINT [DF__dept__position__49C3F6B7]
GO
ALTER TABLE [dbo].[dept] DROP CONSTRAINT [DF__dept__code__48CFD27E]
GO
ALTER TABLE [dbo].[dept] DROP CONSTRAINT [DF__dept__name__47DBAE45]
GO
ALTER TABLE [dbo].[dept] DROP CONSTRAINT [DF__dept__parent__46E78A0C]
GO
ALTER TABLE [dbo].[attachment] DROP CONSTRAINT [DF__attachment__path__45F365D3]
GO
ALTER TABLE [dbo].[attachment] DROP CONSTRAINT [DF__attachmen__creat__44FF419A]
GO
ALTER TABLE [dbo].[attachment] DROP CONSTRAINT [DF__attachmen__biz_i__440B1D61]
GO
ALTER TABLE [dbo].[attachment] DROP CONSTRAINT [DF__attachment__size__4316F928]
GO
ALTER TABLE [dbo].[attachment] DROP CONSTRAINT [DF__attachment__name__4222D4EF]
GO
ALTER TABLE [dbo].[attachment] DROP CONSTRAINT [DF__attachment__id__412EB0B6]
GO
ALTER TABLE [dbo].[applicability_libary] DROP CONSTRAINT [DF__applicabi__stand__403A8C7D]
GO
ALTER TABLE [dbo].[applicability_libary] DROP CONSTRAINT [DF__applicabi__creat__3F466844]
GO
ALTER TABLE [dbo].[applicability_libary] DROP CONSTRAINT [DF__applicabil__type__3E52440B]
GO
ALTER TABLE [dbo].[applicability_libary] DROP CONSTRAINT [DF__applicabi__descr__3D5E1FD2]
GO
ALTER TABLE [dbo].[applicability_libary] DROP CONSTRAINT [DF__applicabil__name__3C69FB99]
GO
ALTER TABLE [dbo].[applicability_libary] DROP CONSTRAINT [DF__applicabilit__id__3B75D760]
GO
/****** Object:  Table [dbo].[user_role]    Script Date: 9/13/2018 4:00:58 PM ******/
DROP TABLE [dbo].[user_role]
GO
/****** Object:  Table [dbo].[user]    Script Date: 9/13/2018 4:00:58 PM ******/
DROP TABLE [dbo].[user]
GO
/****** Object:  Table [dbo].[task_log]    Script Date: 9/13/2018 4:00:58 PM ******/
DROP TABLE [dbo].[task_log]
GO
/****** Object:  Table [dbo].[standard_libary_node]    Script Date: 9/13/2018 4:00:58 PM ******/
DROP TABLE [dbo].[standard_libary_node]
GO
/****** Object:  Table [dbo].[standard_libary]    Script Date: 9/13/2018 4:00:58 PM ******/
DROP TABLE [dbo].[standard_libary]
GO
/****** Object:  Table [dbo].[role_menu]    Script Date: 9/13/2018 4:00:58 PM ******/
DROP TABLE [dbo].[role_menu]
GO
/****** Object:  Table [dbo].[role]    Script Date: 9/13/2018 4:00:58 PM ******/
DROP TABLE [dbo].[role]
GO
/****** Object:  Table [dbo].[menu_resource]    Script Date: 9/13/2018 4:00:58 PM ******/
DROP TABLE [dbo].[menu_resource]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 9/13/2018 4:00:58 PM ******/
DROP TABLE [dbo].[menu]
GO
/****** Object:  Table [dbo].[evaluation_libary_node]    Script Date: 9/13/2018 4:00:58 PM ******/
DROP TABLE [dbo].[evaluation_libary_node]
GO
/****** Object:  Table [dbo].[evaluation_libary]    Script Date: 9/13/2018 4:00:58 PM ******/
DROP TABLE [dbo].[evaluation_libary]
GO
/****** Object:  Table [dbo].[dept]    Script Date: 9/13/2018 4:00:58 PM ******/
DROP TABLE [dbo].[dept]
GO
/****** Object:  Table [dbo].[attachment]    Script Date: 9/13/2018 4:00:58 PM ******/
DROP TABLE [dbo].[attachment]
GO
/****** Object:  Table [dbo].[applicability_libary_node]    Script Date: 9/13/2018 4:00:58 PM ******/
DROP TABLE [dbo].[applicability_libary_node]
GO
/****** Object:  Table [dbo].[applicability_libary]    Script Date: 9/13/2018 4:00:58 PM ******/
DROP TABLE [dbo].[applicability_libary]
GO
/****** Object:  Table [dbo].[applicability_libary]    Script Date: 9/13/2018 4:00:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[applicability_libary](
	[id] [nvarchar](32) NOT NULL,
	[name] [nvarchar](64) NULL,
	[description] [nvarchar](2000) NULL,
	[type] [nvarchar](64) NULL,
	[create_time] [datetime] NULL,
	[standard_id] [nvarchar](32) NULL,
 CONSTRAINT [PK_applicability_libary_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[applicability_libary_node]    Script Date: 9/13/2018 4:00:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[applicability_libary_node](
	[id] [varchar](32) NOT NULL,
	[parent_id] [varchar](32) NULL,
	[applicability_id] [varchar](32) NULL,
	[type] [varchar](64) NULL,
	[name] [varchar](2000) NULL,
	[description] [varchar](2000) NULL,
	[target_value] [float] NULL,
	[node_position] [int] NULL,
	[standard_node_id] [varchar](32) NULL,
 CONSTRAINT [PK_applicability_libary_node] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[attachment]    Script Date: 9/13/2018 4:00:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attachment](
	[id] [nvarchar](32) NOT NULL,
	[name] [nvarchar](200) NULL,
	[size] [bigint] NULL,
	[biz_id] [nvarchar](32) NULL,
	[create_time] [datetime] NULL,
	[path] [nvarchar](2000) NULL,
 CONSTRAINT [PK_attachment_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dept]    Script Date: 9/13/2018 4:00:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dept](
	[id] [nvarchar](32) NOT NULL,
	[parent] [nvarchar](32) NULL,
	[name] [nvarchar](64) NULL,
	[code] [nvarchar](64) NULL,
	[position] [int] NULL,
 CONSTRAINT [PK_dept_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evaluation_libary]    Script Date: 9/13/2018 4:00:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evaluation_libary](
	[id] [nvarchar](32) NOT NULL,
	[name] [nvarchar](32) NULL,
	[description] [nvarchar](2000) NULL,
	[status] [nchar](1) NULL,
	[applicability_id] [nvarchar](32) NULL,
	[create_time] [datetime] NULL,
	[evaluation_type] [nchar](1) NULL,
	[type] [nvarchar](64) NULL,
	[creator] [nvarchar](32) NULL,
 CONSTRAINT [PK_evaluation_libary_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evaluation_libary_node]    Script Date: 9/13/2018 4:00:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evaluation_libary_node](
	[id] [nvarchar](32) NOT NULL,
	[parent_id] [nvarchar](32) NULL,
	[evaluation_id] [nvarchar](32) NULL,
	[type] [nvarchar](32) NULL,
	[name] [nvarchar](2000) NULL,
	[description] [nvarchar](2000) NULL,
	[target_value] [real] NULL,
	[assign_user] [nvarchar](32) NULL,
	[status] [nchar](1) NULL,
	[severity_level] [nvarchar](64) NULL,
	[level_is_approved] [nvarchar](64) NULL,
	[compliance_level] [nvarchar](64) NULL,
	[node_position] [int] NULL,
	[applicability_node_id] [nvarchar](32) NULL,
 CONSTRAINT [PK_evaluation_libary_node_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 9/13/2018 4:00:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id] [nvarchar](32) NOT NULL,
	[name] [nvarchar](64) NULL,
	[module] [nvarchar](64) NULL,
	[parent] [nvarchar](32) NULL,
	[position] [int] NULL,
 CONSTRAINT [PK_menu_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu_resource]    Script Date: 9/13/2018 4:00:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu_resource](
	[menu_id] [nvarchar](32) NULL,
	[url] [nvarchar](256) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 9/13/2018 4:00:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [nvarchar](32) NOT NULL,
	[code] [nvarchar](64) NULL,
	[name] [nvarchar](64) NULL,
	[description] [nvarchar](256) NULL,
 CONSTRAINT [PK_role_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role_menu]    Script Date: 9/13/2018 4:00:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role_menu](
	[role_id] [nvarchar](32) NULL,
	[menu_id] [nvarchar](32) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[standard_libary]    Script Date: 9/13/2018 4:00:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[standard_libary](
	[id] [nvarchar](32) NOT NULL,
	[name] [nvarchar](2000) NULL,
	[description] [nvarchar](2000) NULL,
	[type] [nvarchar](64) NULL,
	[creat_time] [datetime] NULL,
 CONSTRAINT [PK_standard_libary_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[standard_libary_node]    Script Date: 9/13/2018 4:00:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[standard_libary_node](
	[id] [nvarchar](32) NOT NULL,
	[parent_id] [nvarchar](32) NULL,
	[standard_id] [nvarchar](32) NULL,
	[type] [nvarchar](32) NULL,
	[name] [nvarchar](2000) NULL,
	[description] [nvarchar](2000) NULL,
	[node_position] [int] NULL,
 CONSTRAINT [PK_standard_libary_node_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[task_log]    Script Date: 9/13/2018 4:00:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[task_log](
	[id] [nvarchar](32) NOT NULL,
	[name] [nvarchar](200) NULL,
	[time] [datetime] NULL,
	[user] [nvarchar](32) NULL,
	[dept] [nvarchar](32) NULL,
	[question] [nvarchar](2000) NULL,
	[question_severity] [nvarchar](64) NULL,
	[question_status] [nchar](1) NULL,
	[control_json] [varbinary](max) NULL,
	[evaluation_id] [nvarchar](32) NULL,
	[type] [nvarchar](10) NULL,
	[chapter] [nvarchar](2000) NULL,
 CONSTRAINT [PK_task_log_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 9/13/2018 4:00:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [nvarchar](32) NOT NULL,
	[username] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[nick_name] [nvarchar](255) NULL,
	[register_date] [datetime2](0) NOT NULL,
	[dept_id] [nvarchar](32) NULL,
	[phone] [nvarchar](64) NULL,
	[email] [nvarchar](64) NULL,
	[status] [nchar](1) NULL,
 CONSTRAINT [PK_user_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_role]    Script Date: 9/13/2018 4:00:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_role](
	[user_id] [nvarchar](32) NULL,
	[role_id] [nvarchar](32) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[dept] ([id], [parent], [name], [code], [position]) VALUES (N'1', N'#', N'Organization Structure', N'ROOT', 0)
INSERT [dbo].[menu] ([id], [name], [module], [parent], [position]) VALUES (N'1', N'System Management', N'main.system', N'#', 0)
INSERT [dbo].[menu] ([id], [name], [module], [parent], [position]) VALUES (N'2', N'Dept. Management', N'main.system.dept.list', N'1', 0)
INSERT [dbo].[menu] ([id], [name], [module], [parent], [position]) VALUES (N'3', N'User Management', N'main.system.user.list', N'1', 1)
INSERT [dbo].[menu] ([id], [name], [module], [parent], [position]) VALUES (N'4', N'Role Management', N'main.system.role.list', N'1', 2)
INSERT [dbo].[menu] ([id], [name], [module], [parent], [position]) VALUES (N'5', N'VDA Applicability Library Management ', N'main.applicability', N'#', 1)
INSERT [dbo].[menu] ([id], [name], [module], [parent], [position]) VALUES (N'6', N'Project Review Management', N'main.evaluation', N'#', 2)
INSERT [dbo].[menu] ([id], [name], [module], [parent], [position]) VALUES (N'7', N'Standard Library Management', N'main.standard', N'#', 0)
INSERT [dbo].[menu] ([id], [name], [module], [parent], [position]) VALUES (N'8', N'Task Processing', N'main.task', N'#', 3)
INSERT [dbo].[role] ([id], [code], [name], [description]) VALUES (N'31569053894d47a19348b04fd3c995ff', N'Business Owner', N'Business Owner', NULL)
INSERT [dbo].[role] ([id], [code], [name], [description]) VALUES (N'372712f2389b48a58e97aec852a58c6f', N'Internal Auditor', N'内审员', N'')
INSERT [dbo].[role] ([id], [code], [name], [description]) VALUES (N'80036ff0ec7a4583b4d217b76828077c', N'Information Security Coordinator', N'信息安全联络员', N'')
INSERT [dbo].[role] ([id], [code], [name], [description]) VALUES (N'964f8bb2cd8c4a469b8d761d9ac58cf2', N'System Administrator', N'系统管理员', N'')
INSERT [dbo].[role] ([id], [code], [name], [description]) VALUES (N'ee83ebe9f39a458ba2f61d0d5a4570bc', N'ciso', N'CISO', NULL)
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'ee83ebe9f39a458ba2f61d0d5a4570bc', N'5')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'ee83ebe9f39a458ba2f61d0d5a4570bc', N'6')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'ee83ebe9f39a458ba2f61d0d5a4570bc', N'7')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'ee83ebe9f39a458ba2f61d0d5a4570bc', N'8')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'964f8bb2cd8c4a469b8d761d9ac58cf2', N'1')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'964f8bb2cd8c4a469b8d761d9ac58cf2', N'2')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'964f8bb2cd8c4a469b8d761d9ac58cf2', N'3')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'964f8bb2cd8c4a469b8d761d9ac58cf2', N'4')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'b8fda96676a848f09826f53abc256fe5', N'1')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'b8fda96676a848f09826f53abc256fe5', N'2')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'b8fda96676a848f09826f53abc256fe5', N'3')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'b8fda96676a848f09826f53abc256fe5', N'4')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'b8fda96676a848f09826f53abc256fe5', N'5')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'b8fda96676a848f09826f53abc256fe5', N'6')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'b8fda96676a848f09826f53abc256fe5', N'7')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'b8fda96676a848f09826f53abc256fe5', N'8')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'fafea16b98434badbe03ffa65afcb1ce', N'1')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'fafea16b98434badbe03ffa65afcb1ce', N'2')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'fafea16b98434badbe03ffa65afcb1ce', N'3')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'fafea16b98434badbe03ffa65afcb1ce', N'4')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'fafea16b98434badbe03ffa65afcb1ce', N'5')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'fafea16b98434badbe03ffa65afcb1ce', N'6')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'fafea16b98434badbe03ffa65afcb1ce', N'7')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'fafea16b98434badbe03ffa65afcb1ce', N'8')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'372712f2389b48a58e97aec852a58c6f', N'6')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'80036ff0ec7a4583b4d217b76828077c', N'8')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'31569053894d47a19348b04fd3c995ff', N'7')
INSERT [dbo].[role_menu] ([role_id], [menu_id]) VALUES (N'31569053894d47a19348b04fd3c995ff', N'8')
INSERT [dbo].[standard_libary] ([id], [name], [description], [type], [creat_time]) VALUES (N'2446393712426238476', N'VDA Standard : 2013 (Full Version)', NULL, N'vda', NULL)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1002419410888118002', N'58123075627302365', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1017830695634122370', N'4912214181397901368', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1026037681243141369', N'515663954377656367', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1033143989727507129', N'1304309769780900013', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1037164515618043527', N'7301978007165354953', N'2446393712426238476', N'vda_control', N'Notes on technical and organizational measures (including disciplinary measures)
', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'103873355025857819', N'3763268604848422382', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1050719421463968845', N'6439853853397829899', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1062414927269115849', N'9173590026127690039', N'2446393712426238476', N'vda_control', N'Holding regular (at least annual) staff training sessions on how to handle information', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1065800969878420051', N'7627182786995572549', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1076239172314971816', N'7259108058589738373', N'2446393712426238476', N'vda_control', N'Controls and their objectives', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1090696901370164258', N'8083740153066732067', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1090968737535081607', N'4516609756518828403', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1092808577155419434', N'8318474133686956399', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1100651342566043800', N'2987702993627691382', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1100994110849659226', N'8614217399273210372', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1116002263617520675', N'7099696374069443482', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1120752410112341728', N'6312936561959258669', N'2446393712426238476', N'vda_control', N'Defining the content of an ISMS, for example:', N'中文提示2222', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1121321134910320762', N'3962911900284439090', N'2446393712426238476', N'vda_control', N'Archiving contracts signed by both parties', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1122166798448675154', N'864361214830988020', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1124357205542716182', N'1703662072763625572', N'2446393712426238476', N'vda_control', N'Taking sub-contractors into account
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1139713816780977608', N'7315823352824444299', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1141032969978754759', N'3666288561411176842', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1144943267288628030', N'4219216699790635890', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1147216904739207931', N'3524699065838714382', N'2446393712426238476', N'vda_control', N'Passwords should not be written down, saved anywhere in decrypted form, or sent (e.g. on paper, using software, via a smartphone); exception: use of an approved storage medium (e.g. password safe) 
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1159321853230730582', N'6027388460646420136', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1160417513917822131', N'1033143989727507129', N'2446393712426238476', N'vda_control', N'Defining regulations and procedures for meeting the identified requirements 
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1161551723938464109', N'2912344849604784380', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1166052633462158027', N'8884472200872412517', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1167226736300961913', N'4081845364262914993', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1171797947308000792', N'1831146676005024376', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1174996009277409859', N'8884472200872412517', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1182767762890047594', N'8920120925801856435', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'118670377665777328', N'2749653142999746764', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'118742549489271302', N'4710365557256897929', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1193878393997838159', N'2905129055304594022', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1194820175680393069', N'0', N'2446393712426238476', N'vda_chapter', N'Chapter 10 - Cryptography', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'120255335018613364', N'7315823352824444299', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1206381711219574658', N'1831146676005024376', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1211207284737132279', N'8290341358220299826', N'2446393712426238476', N'vda_control', N'Switching off affected service
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1212288901444321142', N'6868268575369873698', N'2446393712426238476', N'vda_control', N'Use of different user profiles in test and productive systems 
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1213064559681552857', N'8379922137397834324', N'2446393712426238476', N'vda_control', N'Identifying legal and contractual requirements regarding procedures and processes for handling personal data', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1227861200343381230', N'8318213536775425161', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1230537526715003732', N'2218834439314321869', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1231075574716187106', N'4710365557256897929', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1233941686384440590', N'7631906540230951320', N'2446393712426238476', N'vda_control', N'Conducting system acceptance tests, taking security issues into account
', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1236451766641146267', N'6259070028902449894', N'2446393712426238476', N'vda_control', N'Developing measures to minimize any identified risks', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1240776136539226037', N'77565357065325982', N'2446393712426238476', N'vda_control', N'Redundant supply systems (Power, LAN, etc.)
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1246273850371651346', N'3666288561411176842', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1254998971904378438', N'4564445657832246851', N'2446393712426238476', N'vda_control', N'Having the system audit carried out by trained experts
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1257929911028893191', N'7631906540230951320', N'2446393712426238476', N'vda_control', N'Ensuring that development processes are secure, even when systems are produced by third parties
', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1260578170840136524', N'2073217201601531037', N'2446393712426238476', N'vda_control', N'Security requirements during the design phase
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1263548518038126820', N'7259108058589738373', N'2446393712426238476', N'vda_control', N'Guidelines and regulations', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1267358932882507685', N'628959589561841643', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1277711067020574238', N'2987702993627691382', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1283083149264833943', N'2786020278950278081', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1283405739576965641', N'7099696374069443482', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1292927790196177105', N'3403666888959149064', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1304309769780900013', N'4834216213960148639', N'2446393712426238476', N'vda_question', N'12.06 To what extent are system administrator and system operator activities logged, the logs protected against modification and regularly reviewed?', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1308616511469274963', N'5868323546433342812', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'130872300368344056', N'7660761452469075933', N'2446393712426238476', N'vda_control', N'Technical parameters (e.g. session timeout)
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1312687200770504351', N'4446937691758113903', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'132623902904041965', N'6286910819413609355', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1327639232322752246', N'5689751047852870156', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1330843060897232533', N'568355512251269661', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1335858597151358534', N'5704734735790882250', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1343462177024262495', N'7315823352824444299', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1352333093898701293', N'3654907651292444416', N'2446393712426238476', N'vda_control', N'Risk criteria (e.g. financial impact, loss of reputation, legal consequences)', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1356183735259740471', N'7777371919219969459', N'2446393712426238476', N'vda_control', N'Implementing the identified requirements 
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1360711841342992892', N'8852500088393413628', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1366774916130688728', N'0', N'2446393712426238476', N'vda_chapter', N'Chapter 14 - System Acquisition, Development and Maintenance', N'null', 10)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1367930251558958173', N'436470360644730885', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1372766059045829179', N'219568277629809980', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1373762558528865024', N'3286773150959026682', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1380373650524582160', N'7080143568760977467', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1383238403016969199', N'3968880645732610918', N'2446393712426238476', N'vda_control', N'Approach to dealing with information once the employment contract or service contract has been terminated
', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1388216959422713235', N'2517126404662475315', N'2446393712426238476', N'vda_question', N'07.02 To what extent is staff (internal and external) made aware of and trained about the risks that arise when handling and processing information?', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1391076256996216368', N'3286773150959026682', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1392943756759813206', N'4396660567703469276', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1394426523333343113', N'4516609756518828403', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1407180283748173570', N'8852500088393413628', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'140776528147820693', N'2787922464528680733', N'2446393712426238476', N'vda_control', N'Approval authority
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'140999418095947729', N'219568277629809980', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1420476616169574082', N'6868268575369873698', N'2446393712426238476', N'vda_control', N'Use of non-sensitive or anonymous test data 
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1421523279545743996', N'1588725606522597516', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1425084833691447615', N'3423769354751789060', N'2446393712426238476', N'vda_control', N'Evaluating information security incidents/weaknesses
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1439703376742824790', N'2967691768391746221', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1442132681457972722', N'132623902904041965', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1444489696893551689', N'5030015607291556998', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1462625753231214594', N'6286910819413609355', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1472222947046699111', N'9171023884945702168', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1491569192298105923', N'9021558642274419982', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1499053011348733602', N'8279026105303253843', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1503923204741088999', N'4735730414357559401', N'2446393712426238476', N'vda_control', N'Implementing identified and defined requirements
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1518024495543569802', N'3209443312862344145', N'2446393712426238476', N'vda_control', N'Systems that need to be backed up
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1521505855916623128', N'7944147556408839282', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1554167064387338690', N'1724971185380345309', N'2446393712426238476', N'vda_control', N'Access restrictions for certain information services', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'156049212434629654', N'5556458022462667274', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1562626949256397549', N'515663954377656367', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1564221234243876582', N'9033819756319886915', N'2446393712426238476', N'vda_control', N'Defining rules related to handling information stored on mobile storage devices, taking classification levels and the following points into account:
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1571227671064298469', N'303240869343872635', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
GO
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1581062212793025975', N'6778690051557666963', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1582509744221735064', N'568355512251269661', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1588725606522597516', N'335855503912027512', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1588824454267554834', N'7144060494460374828', N'2446393712426238476', N'vda_control', N'Identifying requirements regarding access to information and applications
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1601314358754391583', N'8314496301358794284', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1603029545052781148', N'4958050508595838646', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1604979152379885749', N'8314496301358794284', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1605294581578878629', N'9174752761940458137', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1623490295442879647', N'6778690051557666963', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1624003065699060582', N'8840334893425537852', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1624025233554715672', N'5677686945274837279', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'162721995444764184', N'9174752761940458137', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1637455216648175269', N'5556458022462667274', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1652105964317423830', N'1753689860860628328', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1656762982175455646', N'7954271716132801106', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1656982483567985188', N'3769511507179910760', N'2446393712426238476', N'vda_control', N'Applying a principle of necessity
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1660281464027432192', N'1716415031914246884', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'166113620976618733', N'218832212144243795', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1681864795659810208', N'6339331164620370059', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1686368193798648836', N'1695260001442614506', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1695260001442614506', N'8176573296684087932', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1697362611295502581', N'8311201229576883614', N'2446393712426238476', N'vda_control', N'Immediately removing information relevant to operations once the test has been completed in the test system 
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1703662072763625572', N'7819941519113566272', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1706893249504691944', N'298494701158774411', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1707350700269193017', N'4367432358476952', N'2446393712426238476', N'vda_control', N'Instant messaging
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1709766594217096989', N'9021558642274419982', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1713836735193071371', N'1588725606522597516', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1716415031914246884', N'8952466254042938799', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1717433407670144658', N'0', N'2446393712426238476', N'vda_chapter', N'Chapter 9 - Access Control', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1717878566319508210', N'7819941519113566272', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1718973147278034421', N'3423769354751789060', N'2446393712426238476', N'vda_control', N'Analyzing information security incidents/weaknesses (problem management)
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1719006528481702801', N'2482266583756750338', N'2446393712426238476', N'vda_control', N'Depending on the level of confidentiality, sharing data using encrypted objects (e.g. e-mail, e-mail attachments (PGP, S/Mime)) and/or using encrypted media (e.g. ENX, VPN, encrypted WAN connections (HTTPS, SFTP, TLS)).
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1724971185380345309', N'5641109781045201587', N'2446393712426238476', N'vda_control', N'Drawing up a policy that takes the following issues into account:', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1729678792110591453', N'4287982503156563670', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1736358942742891815', N'4354499083210409643', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1738408865186429394', N'2905129055304594022', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1740714899683391276', N'2302879250113970355', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1741180096751094163', N'9033819756319886915', N'2446393712426238476', N'vda_control', N'Provision of aids to enable employees to adhere to these rules
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1749123029252684732', N'4354499083210409643', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1750044623888890581', N'5242420844855446377', N'2446393712426238476', N'vda_control', N'Comprehensible logs
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1753689860860628328', N'4256795901706194484', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1766164530159701217', N'3295128618706683746', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1774893910658076335', N'1695260001442614506', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1790657481159298651', N'7351878481076241502', N'2446393712426238476', N'vda_control', N'Ensuring that the owner of the information takes responsibility for classification
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'179646482006754015', N'2822939335208841323', N'2446393712426238476', N'vda_control', N'Separate security zone for deliveries by external parties without access to other zones
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1796512414940705335', N'8318213536775425161', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1801012952617403514', N'4710365557256897929', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1810897989084689730', N'2822939335208841323', N'2446393712426238476', N'vda_control', N'Use of security gates in goods entry and exit zones
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1823307691019618464', N'8614217399273210372', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1831146676005024376', N'3403666888959149064', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1834373588258305010', N'3238636703974273548', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1837351797370212329', N'7719009940699824773', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1851953620138150115', N'4081845364262914993', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1855065385044521044', N'8279026105303253843', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1866404946592416058', N'2073217201601531037', N'2446393712426238476', N'vda_control', N'Security for version management
', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1872266024847822481', N'1120752410112341728', N'2446393712426238476', N'vda_control', N'SOA (Statement of Applicability)', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1874384144986782940', N'612943757308050354', N'2446393712426238476', N'vda_control', N'Implementation of the security-relevant requirements
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'188236044044681476', N'5418960253962896192', N'2446393712426238476', N'vda_control', N'Documenting which rights have been granted
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1888684569329157137', N'6871682044773249194', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1897650328934661473', N'2986904555670949348', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1901034446864666513', N'8614217399273210372', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1908679526413126290', N'4296767145667834442', N'2446393712426238476', N'vda_control', N'Submitting a report on the review results to management', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1916744986823602597', N'7263176691532253207', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'192046625715994899', N'8840334893425537852', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1922413405197941509', N'5849071236573869285', N'2446393712426238476', N'vda_control', N'Defining and approving rules for the use of each form of information and information processing facilities', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1932792469594392172', N'4516609756518828403', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1935802179444259856', N'5670341167644785292', N'2446393712426238476', N'vda_question', N'08.01 To what extent are physical and digital assets that contain information (information objects) recorded in a directory? ', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1939909398171700009', N'1312687200770504351', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1948447025900962846', N'5943740905399929573', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1948755352742508033', N'9002103012846028043', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1950173432943430076', N'7717125713058643462', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1954422792705916887', N'4621010208621441385', N'2446393712426238476', N'vda_control', N'Monitoring of the use of networks and network services
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1966797673665874328', N'4446937691758113903', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1966869985261014779', N'1120752410112341728', N'2446393712426238476', N'vda_control', N'Definition of the scope', N'Definition of the scope', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1969681471746322715', N'3769511507179910760', N'2446393712426238476', N'vda_control', N'Using authorization roles
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1971929898204511011', N'7660761452469075933', N'2446393712426238476', N'vda_control', N'Monitoring procedures (e.g. traffic flow analyses, availability measurements)
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1972262243599993908', N'3765269860613113296', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'19801877142981808', N'864361214830988020', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1982937437159574258', N'7263176691532253207', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1990908102004684788', N'4219216699790635890', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1993749680507800792', N'2822939335208841323', N'2446393712426238476', N'vda_control', N'Separate areas for information processing facilities
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'1993863779875900674', N'8415326567274166733', N'2446393712426238476', N'vda_control', N'Retaining proof of purchase
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2003040487180513772', N'1935802179444259856', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2011043653428624339', N'3572098075769287034', N'2446393712426238476', N'vda_control', N'Use
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2024743897832046918', N'5704734735790882250', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2029088265548709302', N'6451081473101480568', N'2446393712426238476', N'vda_question', N'18.04 To what extent is the effectiveness of policies, guidelines and other relevant information security standards reviewed and documented (relevant procedures and processes, incl. technical tests)?', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2057536649821505706', N'9171023884945702168', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2061293739540825108', N'7372772745630957562', N'2446393712426238476', N'vda_control', N'Special protective measures for network connections on public networks (e.g. VPN) 
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2063503330669016333', N'2580699408937075743', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'206668651216486213', N'7705788632137289142', N'2446393712426238476', N'vda_control', N'Initiating the enforcement of the policy by the executive management', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2073217201601531037', N'7631906540230951320', N'2446393712426238476', N'vda_control', N'Drawing up a policy for developing software and systems, taking the following aspects into account:
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2075997612187432609', N'8920120925801856435', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2076182751237655658', N'1588725606522597516', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2076382367720455995', N'3524699065838714382', N'2446393712426238476', N'vda_control', N'Passwords must be changed immediately in the event of a suspected breach
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2076910085238799405', N'6430832177588752293', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2086608416077201903', N'2786020278950278081', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2092529747338836084', N'7867511743990117731', N'2446393712426238476', N'vda_control', N'Defining regulations and procedures to meet the identified requirements 
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2092587445209417745', N'934090292783788281', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2093093000950925653', N'3488212218909864631', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2095980699425682411', N'2967691768391746221', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
GO
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2109549229909456047', N'628959589561841643', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2111182700524226900', N'7819941519113566272', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2112253346534671852', N'5267372810882337188', N'2446393712426238476', N'vda_question', N'13.05 To what extent are non-disclosure agreements applied before an exchange of information and are the requirements or needs for the protection of information documented and regularly reviewed?', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2117253299388303466', N'6778690051557666963', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2118567800466656112', N'5677686945274837279', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2120605192508624344', N'219568277629809980', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2124562559771492724', N'3769511507179910760', N'2446393712426238476', N'vda_control', N'Restrictions on export or print of information
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2125583783325318851', N'3685324712191740021', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2145877674001021474', N'9174752761940458137', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2156185763270866999', N'2967691768391746221', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2159834254031630988', N'6027388460646420136', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2167519934235167767', N'4354499083210409643', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2173226187187532968', N'7080143568760977467', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2176100430515358233', N'786883916095769041', N'2446393712426238476', N'vda_control', N'Implementing the security requirements defined in the SLA for external and internal network services
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2177958725933315236', N'4000995305092067456', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'218832212144243795', N'1935802179444259856', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2190337624265280531', N'2302879250113970355', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2192516696910771000', N'8321890986152080410', N'2446393712426238476', N'vda_control', N'Process for the entire life cycle, including generating, storing, archiving, retrieving, distributing, deactivating and deleting cryptographic keys
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'219568277629809980', N'2112253346534671852', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2200555233025607822', N'5411079989568385727', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2204071124448622837', N'8607741720424726003', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2205967896795856519', N'302356315297593204', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2209876336200366486', N'2786020278950278081', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2218834439314321869', N'5689751047852870156', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2226016247515297962', N'7362935636816972988', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2230153198914812109', N'3238636703974273548', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2235142272737167153', N'4296767145667834442', N'2446393712426238476', N'vda_control', N'Having the organization''s ISMS checked by an independent instance on a regular basis', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2241037810812931342', N'302356315297593204', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2248063576555865842', N'77565357065325982', N'2446393712426238476', N'vda_control', N'Water sensors
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2250461784119555141', N'7802308159384436141', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2257519128754929686', N'7641759018810820108', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2257944528794501752', N'2680725599794868691', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2261407954872285997', N'8290341358220299826', N'2446393712426238476', N'vda_control', N'Modifying the monitoring approach 
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2267792316787699864', N'81699944739484533', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2284067316201965742', N'4354499083210409643', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2284675650051785105', N'1695260001442614506', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2288977409527035916', N'4409711832180280168', N'2446393712426238476', N'vda_control', N'Updating this protective software on a regular basis, including all malware detection patterns
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2302479540715668780', N'7627182786995572549', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2302879250113970355', N'5267372810882337188', N'2446393712426238476', N'vda_question', N'13.02 To what extent are requirements related to security mechanisms and service levels and also management requirements related to network services identified and documented in service level agreements?', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2309835442421058153', N'7627182786995572549', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2312511310806628747', N'5470561549400885328', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2314425181505277230', N'4037699994964180525', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2321934155271552377', N'4256795901706194484', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2323654920182282247', N'2218834439314321869', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2323720150095017741', N'2073217201601531037', N'2446393712426238476', N'vda_control', N'Security check points in project milestones 
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'233137237502085995', N'7263176691532253207', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2342025906619399703', N'8614217399273210372', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2355109180263151512', N'4037699994964180525', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2356932601335693156', N'0', N'2446393712426238476', N'vda_chapter', N'Chapter 15 - Supplier Relationships', N'null', 11)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2357732228154281534', N'3209443312862344145', N'2446393712426238476', N'vda_control', N'Back-up intervals
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2366714623158534508', N'7705788632137289142', N'2446393712426238476', N'vda_control', N'Identifying information security requirements based on sources such as the corporate strategy, legislation, business agreements', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2374232727210933357', N'4396660567703469276', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2376542365846450337', N'3666288561411176842', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2378222761345990550', N'1695260001442614506', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2383194638803291292', N'1462625753231214594', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2395844745724772404', N'81699944739484533', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2414452596990889593', N'298494701158774411', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2418095443603996541', N'7627182786995572549', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'241881567465390335', N'7315823352824444299', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2429481050638692405', N'8083740153066732067', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2431598224862197076', N'81699944739484533', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2436651568728226858', N'2986904555670949348', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'244214759682979060', N'6339331164620370059', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2452060469604794881', N'219568277629809980', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2458761905806984545', N'7627182786995572549', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2464833197694799551', N'8314496301358794284', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2465647820071941811', N'8083740153066732067', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2480158759946897208', N'4396660567703469276', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2482266583756750338', N'4369137836422182815', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2500071189860796798', N'3035577444191127728', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2505900185452759445', N'5418960253962896192', N'2446393712426238476', N'vda_control', N'Distinguishing between user IDs for privileged accounts and “normal” user accounts (i.e. users with privileged rights have two or more user accounts)
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2506150352559491703', N'1292927790196177105', N'2446393712426238476', N'vda_control', N'Defining security zones 
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2513407859160139313', N'414534463031886028', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2515165505708704216', N'7156568234970597231', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2516998912538266149', N'6871682044773249194', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2517126404662475315', N'0', N'2446393712426238476', N'vda_chapter', N'Chapter 7 - Human Resources Security', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2525198864346493831', N'3685324712191740021', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2528997469920344781', N'7385165034763734230', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2531341477852918109', N'5556458022462667274', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2531834333557601942', N'5677686945274837279', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2541608934742472663', N'7301978007165354953', N'2446393712426238476', N'vda_control', N'Report form 
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2545351043608854196', N'3286773150959026682', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2548806523037828323', N'3685324712191740021', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2557644287366184694', N'8840334893425537852', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2563205397744667003', N'6145188349350818363', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2564259395273117491', N'5641109781045201587', N'2446393712426238476', N'vda_control', N'Having users sign a commitment regarding mobile computing issues (e.g. protecting the device against theft, downloading software, installing software)', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2568463166864445211', N'1729678792110591453', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2572870488756012001', N'4564445657832246851', N'2446393712426238476', N'vda_control', N'Using results to derive measures
', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2575721180374679395', N'8279026105303253843', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2578715057576263174', N'4219216699790635890', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2580699408937075743', N'5989651952545120277', N'2446393712426238476', N'vda_question', N'05.01 To what extent are information security guidelines created, published (internally and to external partners), communicated and are they checked in regular time intervals?', N'this is 05.01', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2584061275438298050', N'3249676086441233552', N'2446393712426238476', N'vda_control', N'Limiting the use of collective accounts
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2586226559706445244', N'8952466254042938799', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2588180902787002522', N'6436046772422591067', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2592532313255097542', N'2029088265548709302', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2593821524248184264', N'436470360644730885', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2594213566408048684', N'4670963482615827542', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2597740611938270166', N'2749653142999746764', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2617967119191684170', N'5030015607291556998', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2620333625366985281', N'9002103012846028043', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
GO
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2622772723948895187', N'2905129055304594022', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2625341067945032629', N'3035577444191127728', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2626276142417726678', N'7732212412860708035', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2634245801876174990', N'8318474133686956399', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2636022613178467926', N'8920120925801856435', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2638029920574590808', N'3968880645732610918', N'2446393712426238476', N'vda_control', N'The right to audit implementation of confidentiality regulations
', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2664121176358995905', N'8379922137397834324', N'2446393712426238476', N'vda_control', N'Implementing the resulting measures to protect personal data in the company
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2668811165724788511', N'8176573296684087932', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2669744679498957827', N'5470561549400885328', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2670936734161587694', N'4710365557256897929', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2671877905052777969', N'1161551723938464109', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2680266747095369648', N'1312687200770504351', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2680725599794868691', N'4834216213960148639', N'2446393712426238476', N'vda_question', N'12.01 To what extent are changes to the organization, business processes, information processing facilities and systems in accordance with their relevance to Information Security  implemented?', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2685291654754450677', N'4219216699790635890', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2685938004741108428', N'7263176691532253207', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2686608356004741157', N'4914448263003588419', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2697678802736269768', N'2987417188956287684', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2697894969095729945', N'6436046772422591067', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2701975955560809994', N'1724971185380345309', N'2446393712426238476', N'vda_control', N'Registration of mobile devices', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2706503373630979952', N'302356315297593204', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2714216558024016090', N'436470360644730885', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2716025925598725944', N'2749653142999746764', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2721620950656004754', N'2786020278950278081', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2732665421282627505', N'1695260001442614506', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2734249653273605711', N'7660761452469075933', N'2446393712426238476', N'vda_control', N'Security technology (e.g. authentication, encryption)
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2739198799457336920', N'436470360644730885', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2745248176896557822', N'7080143568760977467', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2745692861453021747', N'5408953602222963723', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2749653142999746764', N'8052998701961952393', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2751257232339482777', N'2905129055304594022', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2774973189850023893', N'3278709966472458285', N'2446393712426238476', N'vda_control', N'Distributing them to employees on a regular basis', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2775707180876870064', N'3968880645732610918', N'2446393712426238476', N'vda_control', N'Usage rights to information
', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2776517391250244567', N'1588725606522597516', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2786020278950278081', N'303240869343872635', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2787922464528680733', N'4621010208621441385', N'2446393712426238476', N'vda_control', N'Defining regulations related to access to networks and network services, taking the following aspects into account:
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2790818287928915068', N'6339331164620370059', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2793843291636740927', N'2967691768391746221', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2800039913735173575', N'7099696374069443482', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2802993752268782633', N'8614217399273210372', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'280667601004769999', N'8083740153066732067', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2810063610331482697', N'6929410738603864518', N'2446393712426238476', N'vda_control', N'Planning and testing changes that have an effect on information security
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2813342625334079515', N'2986904555670949348', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2822939335208841323', N'3458759513755173980', N'2446393712426238476', N'vda_control', N'Identifying requirements related to the protection of goods entry and exit zones, e.g.
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2836064100067721802', N'5408953602222963723', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2836513111855053093', N'77565357065325982', N'2446393712426238476', N'vda_control', N'Fire prevention systems
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2861870802976814960', N'4367432358476952', N'2446393712426238476', N'vda_control', N'EDI
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'286283654420254187', N'8290341358220299826', N'2446393712426238476', N'vda_control', N'Increasing awareness
', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'286415415906908721', N'436470360644730885', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'289073908248824711', N'8318213536775425161', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2892091700951142057', N'7020990952976333939', N'2446393712426238476', N'vda_control', N'Identifying requirements for the IS regarding the continuation of ordinary business operations
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'290070183613215968', N'7156568234970597231', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2902094349248906742', N'7641759018810820108', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2902355234451535301', N'9021558642274419982', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2905129055304594022', N'2912344849604784380', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2905259498141956220', N'1304309769780900013', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2908378043074693795', N'7372772745630957562', N'2446393712426238476', N'vda_control', N'Use of other tools, e.g. firewall systems, intrusion detection and prevention systems (IDS/IPS), network management tools, security software for networks
', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2912124494145540073', N'1729678792110591453', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2912344849604784380', N'1717433407670144658', N'2446393712426238476', N'vda_question', N'09.01 To what extent are policies and procedures existent regarding access to networks and network services? ', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2913805306812611279', N'8607741720424726003', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'292435640447877295', N'7631906540230951320', N'2446393712426238476', N'vda_control', N'Ensuring that the development environment is secure
', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2926439474677723427', N'8657428221751507721', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2932357084776320684', N'1588725606522597516', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2936086915465887867', N'6929410738603864518', N'2446393712426238476', N'vda_control', N'Developing fallback solutions in the event of an error
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2948149666011235765', N'7263176691532253207', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2951878999141664348', N'1724971185380345309', N'2446393712426238476', N'vda_control', N'Requirements regarding the physical protection of devices', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2952689286457476370', N'3524699065838714382', N'2446393712426238476', N'vda_control', N'Regulations for the quality of passwords, e.g. their length and types of character
', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2964754621152840859', N'5418960253962896192', N'2446393712426238476', N'vda_control', N'Identifying the relevant/affected systems
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2967691768391746221', N'4914448263003588419', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2973508181622083170', N'1729678792110591453', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2978399416411964697', N'3035577444191127728', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2978702482445024374', N'298494701158774411', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'298494701158774411', N'4369137836422182815', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2986904555670949348', N'7732212412860708035', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2987417188956287684', N'1366774916130688728', N'2446393712426238476', N'vda_question', N'14.01 To what extent are security-relevant requirements taken into account for new information systems (incl. systems that are accessible from the public) and for extensions to existing systems?', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'2987702993627691382', N'4002216311868994970', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3000294966146218917', N'4568910555719748584', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'302356315297593204', N'5569017024415776444', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'303240869343872635', N'5670341167644785292', N'2446393712426238476', N'vda_question', N'08.03 To what extent are appropriate procedures implemented for the management of information  on mobile storage devices?', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3035577444191127728', N'2580699408937075743', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3035907999666388905', N'9171023884945702168', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3038646457597671415', N'5240279992052003076', N'2446393712426238476', N'vda_control', N'Introducing sustainable procedures to existing security-relevant processes to assure the effectiveness of measures', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3041521358613923088', N'5470561549400885328', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3043968204241747351', N'4991228226246365047', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3054731793037441101', N'6430832177588752293', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3058754168052794142', N'2073217201601531037', N'2446393712426238476', N'vda_control', N'Requirements for developers when creating systems/applications, taking information security issues into account (avoiding, discovering and rectifying weaknesses).
', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3060019532563761717', N'5240279992052003076', N'2446393712426238476', N'vda_control', N'Having the effectiveness of the company''s ISMS reviewed by the management on a regular basis', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3066526511470851026', N'3685324712191740021', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3070068498069500237', N'218832212144243795', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3087535892514978414', N'7099696374069443482', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'308846590865723092', N'7867511743990117731', N'2446393712426238476', N'vda_control', N'Identifying security-relevant requirements related to the handling of event logs, e.g.
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3089011966513230150', N'3765269860613113296', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3100736114996199292', N'323552400698329885', N'2446393712426238476', N'vda_control', N'Identifying requirements relating to the segmentation of the network
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3104597142491317806', N'4977714127999514507', N'2446393712426238476', N'vda_control', N'Applying shorter review intervals for critical access rights
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'310894446411598770', N'7099696374069443482', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3116446654941672481', N'2592532313255097542', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3135311981833007717', N'9181822893540030566', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3147481110165145759', N'1753689860860628328', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'31491883176446379', N'302356315297593204', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3179339820726436376', N'934090292783788281', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3187828553165259783', N'9173590026127690039', N'2446393712426238476', N'vda_control', N'Training employees upon induction about handling of corporate information', N'null', 1)
GO
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3199483363799514036', N'628959589561841643', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3200394860099356889', N'8083740153066732067', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'320090266460992174', N'4070957027057156848', N'2446393712426238476', N'vda_control', N'Conducting dedicated compliance audits (including technical audits) for regulations and procedures related to information security in various departments throughout the organization', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3209443312862344145', N'6337414847540251164', N'2446393712426238476', N'vda_control', N'Defining data back-up requirements, e.g.
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3210558170525841840', N'1161551723938464109', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3213550615597069499', N'1716415031914246884', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3214259424358188949', N'8637792722049321083', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'321937221477709482', N'8884472200872412517', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3230335249134253', N'9002103012846028043', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3231295755103586967', N'81699944739484533', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'323552400698329885', N'5408953602222963723', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3235761981933139923', N'132623902904041965', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3238636703974273548', N'5569017024415776444', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3249676086441233552', N'4670963482615827542', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3250086003476053174', N'7732212412860708035', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3253989776587899843', N'8318474133686956399', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3272373821927898008', N'132623902904041965', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'327421156733792754', N'4568910555719748584', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3277210343032470270', N'303240869343872635', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3278709966472458285', N'7705788632137289142', N'2446393712426238476', N'vda_control', N'Publishing the policy and associated guidelines, e.g. by', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3286773150959026682', N'4002216311868994970', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3295128618706683746', N'8952466254042938799', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3296827946895326461', N'8290341358220299826', N'2446393712426238476', N'vda_control', N'Disconnecting  affected systems
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3307687403711646204', N'7144060494460374828', N'2446393712426238476', N'vda_control', N'Creating authorization concepts
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3310483437528923374', N'7954271716132801106', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3315878035562411362', N'1740714899683391276', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3317504512590788888', N'1120752410112341728', N'2446393712426238476', N'vda_control', N'Requirements management', N'中文', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3324089646985951168', N'3666288561411176842', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3340947806316216611', N'7020990952976333939', N'2446393712426238476', N'vda_control', N'Identifying preventative measures for minimizing damage
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3344694037435170401', N'8637792722049321083', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3352085699857660960', N'1724971185380345309', N'2446393712426238476', N'vda_control', N'Data back-up', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3353233398312188858', N'6439853853397829899', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'335855503912027512', N'1366774916130688728', N'2446393712426238476', N'vda_question', N'14.03 To what extent are test data created, protected and used in a careful and controlled manner?', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3360306622268094102', N'5107871605434631222', N'2446393712426238476', N'vda_control', N'Documentation drawn up by third parties
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3365419684368136996', N'7954271716132801106', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3375989325394166960', N'2905129055304594022', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3386973083409300373', N'7020990952976333939', N'2446393712426238476', N'vda_control', N'Carrying out emergency exercises
', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3387431121592824044', N'3769511507179910760', N'2446393712426238476', N'vda_control', N'Limiting access to menus for application system functions using access rights
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'33903159772857720', N'1564221234243876582', N'2446393712426238476', N'vda_control', N'Disposal
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'339436817887965328', N'5237337735037276107', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3400300727190703996', N'2749653142999746764', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3403666888959149064', N'6582475819231523265', N'2446393712426238476', N'vda_question', N'11.01 To what extent are secure areas for the protection of sensitive or critical information and information processing facilities defined, protected and monitored (entrance control)?', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3403944067394813892', N'5418960253962896192', N'2446393712426238476', N'vda_control', N'Not issuing rights until approval has been given
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3411027712898516026', N'864361214830988020', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3420644060841033354', N'0', N'2446393712426238476', N'vda_chapter', N'Chapter 6 - Organization of Information Security', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3423769354751789060', N'3763268604848422382', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3428652922652964741', N'6439853853397829899', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3442941105764417428', N'8840334893425537852', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3455040493736706789', N'7080143568760977467', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3455460551822491692', N'7627182786995572549', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3458759513755173980', N'6927670239089046210', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3459346599927788925', N'8358859035717880984', N'2446393712426238476', N'vda_control', N'Issuing approval for the use of external services (e.g. instant messaging, web meeting, web mail)
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3464317141475636879', N'4710365557256897929', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3465369040468985437', N'7301978007165354953', N'2446393712426238476', N'vda_control', N'Reporting channel
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3473589560409632909', N'2749653142999746764', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3488212218909864631', N'5267372810882337188', N'2446393712426238476', N'vda_question', N'13.01 To what extent are networks managed and controlled to protect information in systems and applications? ', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3494128778387079697', N'2967691768391746221', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3498303511776217832', N'2987702993627691382', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'351905640437562656', N'2749653142999746764', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'352102293104277860', N'9181822893540030566', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3524699065838714382', N'3250086003476053174', N'2446393712426238476', N'vda_control', N'Defining and publishing rules on how to create, handle and ensure the quality of personal log-in data/passwords, taking the following points into account:
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3536269291520345925', N'4037013385646814962', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3558060781374124034', N'3035577444191127728', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3568418356177843491', N'5868323546433342812', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3572098075769287034', N'8250845726462134421', N'2446393712426238476', N'vda_control', N'Identifying security requirements for company equipment, relating to points such as
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3572171605317075594', N'3458759513755173980', N'2446393712426238476', N'vda_control', N'Implementing defined protective measures
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3585808491515101995', N'4354499083210409643', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3594990371359405929', N'4516609756518828403', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3595383429273206654', N'8657428221751507721', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3603914075323743672', N'4905327411624851893', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3611953773668354972', N'4564445657832246851', N'2446393712426238476', N'vda_control', N'Coordinating the system audit with the system''s operator and its users
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3616780368542349534', N'1033143989727507129', N'2446393712426238476', N'vda_control', N'Reporting violations to the responsible Instance (e.g. CERT)
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3616839557812761233', N'4991228226246365047', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3629837367720456619', N'218832212144243795', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3654907651292444416', N'8435538797966412299', N'2446393712426238476', N'vda_control', N'Defining an IS risk management concept including elements such as:', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3655534570910103049', N'5943740905399929573', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3658960598793043245', N'4379493647776630466', N'2446393712426238476', N'vda_question', N'01.03 To what extent is the effectiveness of the ISMS ensured?', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3666288561411176842', N'6871682044773249194', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3667689496895340006', N'4958050508595838646', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'366783382632482646', N'5349977230501722156', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3673489463744612934', N'864361214830988020', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'367754664677915878', N'2112253346534671852', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3680060778679781856', N'8657428221751507721', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3684202244654610659', N'6339331164620370059', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3685324712191740021', N'303240869343872635', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3685364053811675644', N'4912214181397901368', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3686045218276593475', N'3458759513755173980', N'2446393712426238476', N'vda_control', N'Defining necessary protective measures
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3689239942086833009', N'3249676086441233552', N'2446393712426238476', N'vda_control', N'Checking that authorization rights are appropriate for the respective areas of responsibility
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3695747596520408252', N'1716415031914246884', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3696205926359845579', N'9002103012846028043', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3696212130530703574', N'1312687200770504351', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3697089442881846572', N'9181822893540030566', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3701415345409117250', N'9002103012846028043', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3702521485078645326', N'2986904555670949348', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3718662455399959010', N'8852500088393413628', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3720951505377145701', N'8052998701961952393', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3722969531634959236', N'8318474133686956399', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3730042686040948581', N'9174752761940458137', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3730700572853712346', N'1716415031914246884', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'373932535906519565', N'4081845364262914993', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
GO
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3744436703482001412', N'3666288561411176842', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3763268604848422382', N'8532613753999700289', N'2446393712426238476', N'vda_question', N'16.02 To what extend is the handling on security events performed?', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3765269860613113296', N'1304309769780900013', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3768958351974286709', N'4296767145667834442', N'2446393712426238476', N'vda_control', N'Suggesting corrective measures in the event of deviation from the standard', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3769511507179910760', N'7144060494460374828', N'2446393712426238476', N'vda_control', N'Drawing up a policy, taking the following aspects into account:
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3772623099718318981', N'5677686945274837279', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3780367844474402848', N'8852500088393413628', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3783770930459787556', N'6390672126418766666', N'2446393712426238476', N'vda_control', N'Assessing risks', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'378976430934474946', N'7867511743990117731', N'2446393712426238476', N'vda_control', N'Implementing the defined measures
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'379117869708259541', N'414534463031886028', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3797524881233525898', N'3962911900284439090', N'2446393712426238476', N'vda_control', N'Adjusting access rights in the case of changes of the employment status', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3801274712896747147', N'58123075627302365', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3823742222563819968', N'6259070028902449894', N'2446393712426238476', N'vda_control', N'Defining an approach to classifying projects with regard to information security requirements', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3833110093011992563', N'8607741720424726003', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3840289901971682990', N'3685324712191740021', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3852454277293097080', N'7631906540230951320', N'2446393712426238476', N'vda_control', N'Conducting technical checks when systems have changed platform
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3855988250630930188', N'7627182786995572549', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'387804599140530362', N'5569017024415776444', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3881496471282629422', N'2749653142999746764', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3882974333961353141', N'4354499083210409643', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3883813590544465893', N'6027388460646420136', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3883978788093673222', N'7627182786995572549', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3888759653112986683', N'4568910555719748584', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3895377028148710102', N'9181822893540030566', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3902245555422739766', N'9173590026127690039', N'2446393712426238476', N'vda_control', N'Having the management check that training courses/information programs are being carried out', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'390487297629664123', N'7156568234970597231', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3907527681286950528', N'6145188349350818363', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3908074378624941611', N'1740714899683391276', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3911495963430177665', N'7372772745630957562', N'2446393712426238476', N'vda_control', N'Adequate monitoring and tracking of security-relevant actions within the network
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3918931659027137834', N'8657428221751507721', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3919672589393281205', N'132623902904041965', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3922564554611575388', N'335855503912027512', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3927010943581504692', N'9181822893540030566', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3942796083047124980', N'8415326567274166733', N'2446393712426238476', N'vda_control', N'Monitoring adherence to licensing conditions
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3946794773951198656', N'5242420844855446377', N'2446393712426238476', N'vda_control', N'Necessity of logging for specific systems
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3954758589829760725', N'4991228226246365047', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3955386586108480561', N'7144060494460374828', N'2446393712426238476', N'vda_control', N'Reviewing which access rights have been granted to users and technical accounts
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3957528030288691394', N'5868323546433342812', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3962911900284439090', N'7717125713058643462', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3965772508886973415', N'8311201229576883614', N'2446393712426238476', N'vda_control', N'Applying an approval process for copying data from the productive environment
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3968880645732610918', N'8336376657789435660', N'2446393712426238476', N'vda_control', N'Identifying requirements for the content of non-disclosure agreements, e.g.
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3978795761353273575', N'628959589561841643', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3981468951351217375', N'5237337735037276107', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3981719715550575842', N'2786020278950278081', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3985494218478472828', N'7156568234970597231', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3988246802866288742', N'3238636703974273548', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3988661453337572124', N'414534463031886028', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'3989395139574776246', N'4396660567703469276', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4000995305092067456', N'3658960598793043245', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4002216311868994970', N'1717433407670144658', N'2446393712426238476', N'vda_question', N'09.03 To what extent is the allocation and use of privileged access rights restricted and controlled?', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4009194896579514115', N'3488212218909864631', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4015327788382506567', N'3654907651292444416', N'2446393712426238476', N'vda_control', N'Criteria for risk analyses', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4016400334104839055', N'3765269860613113296', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4019444505425523625', N'8610289929990196451', N'2446393712426238476', N'vda_control', N'Ensuring that the respective responsible persons within the organization have received the required information security training', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4023901505144535769', N'1161551723938464109', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4025006187863166754', N'956677221217816208', N'2446393712426238476', N'vda_control', N'Data protection law
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4029168914559418415', N'6931418442267119106', N'2446393712426238476', N'vda_control', N'Checking the system for adherence to specifications prior to approval/use
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4037013385646814962', N'4834216213960148639', N'2446393712426238476', N'vda_question', N'12.04 To what extent are backups created and tested regularly in accordance with an agreed backup policy?', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4037521297794709246', N'8321890986152080410', N'2446393712426238476', N'vda_control', N'Strength of encryption
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4037699994964180525', N'7732212412860708035', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4038474511789998867', N'298494701158774411', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'403904678341754779', N'5943740905399929573', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4046718016145110387', N'132623902904041965', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4049200842004805694', N'9173590026127690039', N'2446393712426238476', N'vda_control', N'Ensuring that participation in training sessions and information events is mandatory for every employee', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4049494900342278634', N'1462625753231214594', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'40505502063376284', N'8657428221751507721', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'405276376137875843', N'7705788632137289142', N'2446393712426238476', N'vda_control', N'Drawing up a policy (security policy) on information security that contains the company''s objectives when it comes to protecting information', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4056632845172819584', N'2912344849604784380', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4060546518795437627', N'7802308159384436141', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4065480859462684102', N'6339331164620370059', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4068903134807280389', N'7944147556408839282', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4070957027057156848', N'2029088265548709302', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4073159070483628057', N'6390672126418766666', N'2446393712426238476', N'vda_control', N'Dealing with risks', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4081845364262914993', N'8705199034629078297', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4096683323398011802', N'2987702993627691382', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4101613576703553576', N'7315823352824444299', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4111581492639674532', N'5414281579345591235', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4115565571800777757', N'8435538797966412299', N'2446393712426238476', N'vda_control', N'Implementing elements in the IS risk management concept ', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'41171989210378899', N'8336376657789435660', N'2446393712426238476', N'vda_control', N'Checking requirements for regulations and procedures for using non-disclosure agreements on a regular basis', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4127464311300441059', N'6145188349350818363', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4135942564689496413', N'9174752761940458137', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'414534463031886028', N'3763268604848422382', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4153430562732064925', N'7944147556408839282', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4157836197044504946', N'7954271716132801106', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4165945172467366176', N'7944147556408839282', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4173189605881563355', N'8920120925801856435', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4173816118031465710', N'7259108058589738373', N'2446393712426238476', N'vda_control', N'Scope
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4188110115124394410', N'1740714899683391276', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4217781452338184497', N'219568277629809980', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4218856270110637779', N'1729678792110591453', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4219216699790635890', N'5414281579345591235', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4226532600476843539', N'9002103012846028043', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4239102290381590307', N'1695260001442614506', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'424815593335113878', N'8626676484264314191', N'2446393712426238476', N'vda_control', N'Observation of legal terms for the use of encryption methods
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4250372033764506146', N'5030015607291556998', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4252658464866219303', N'2822939335208841323', N'2446393712426238476', N'vda_control', N'Access only for identified and authorized personnel
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4253847440840638036', N'8852500088393413628', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4256469117856758879', N'58123075627302365', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4256795901706194484', N'4834216213960148639', N'2446393712426238476', N'vda_question', N'12.03. To what extent are protection controls (e.g. endpoint security) against malware (Viruses, Worms, Trojans, Spyware, ...) implemented and combined with appropriate user awareness?', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4272861463383983628', N'8318213536775425161', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
GO
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4287982503156563670', N'1194820175680393069', N'2446393712426238476', N'vda_question', N'10.01 To what extent are rules on the use of cryptography including the management of cryptographic keys (entire lifecycle process) developed and implemented?', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4292834865660773978', N'3278709966472458285', N'2446393712426238476', N'vda_control', N'Distributing them (or excerpts) to external business partners on a case-by-case basis', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4296286810609660721', N'4621010208621441385', N'2446393712426238476', N'vda_control', N'Defining user authentication requirements
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4296767145667834442', N'8515238375542573571', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4298673342137286527', N'5177630288575249506', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4298967403777601936', N'1312687200770504351', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4305638047517553737', N'3666288561411176842', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4311906379210604048', N'1740714899683391276', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4320948692344062383', N'5177630288575249506', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4321450129121260343', N'7080143568760977467', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4325898871477157820', N'414534463031886028', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4345485858922610044', N'8884472200872412517', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4345899386150274530', N'81699944739484533', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4349590510524124366', N'8840334893425537852', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4352693692072115416', N'7802308159384436141', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4354499083210409643', N'5689751047852870156', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4363003818983144788', N'5556458022462667274', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'436470360644730885', N'5408953602222963723', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4367432358476952', N'2482266583756750338', N'2446393712426238476', N'vda_control', N'Identifying the services used for transferring information, e.g.
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4369137836422182815', N'5267372810882337188', N'2446393712426238476', N'vda_question', N'13.04 To what extent are protective measures taken when information is exchanged or transmitted?', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4371950335383351804', N'7797525598597170939', N'2446393712426238476', N'vda_control', N'Physical Checks - "Distribution Room"
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4377161333039581304', N'6312936561959258669', N'2446393712426238476', N'vda_control', N'Implementing the ISMS', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4379493647776630466', N'0', N'2446393712426238476', N'vda_chapter', N'Chapter 1 - General Aspects', N'第一章 - 综述', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4386670811625405047', N'7315823352824444299', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4387391612573664929', N'81699944739484533', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4396660567703469276', N'4905327411624851893', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4409711832180280168', N'593267024857579085', N'2446393712426238476', N'vda_control', N'Defining technical and organizational measures, e.g.
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4436193297551110374', N'2986904555670949348', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4446937691758113903', N'4834216213960148639', N'2446393712426238476', N'vda_question', N'12.07 To what extent is information regarding technical vulnerabilities of information processing systems acquired at an early stage, assessed and appropriate measures are taken (e.g. patch management)?', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'446319336620311894', N'4958050508595838646', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4463848036760506272', N'8705199034629078297', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4464378974453740176', N'8920120925801856435', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4470611368066528256', N'2073217201601531037', N'2446393712426238476', N'vda_control', N'Security findings for application systems
', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4478155548176764733', N'308846590865723092', N'2446393712426238476', N'vda_control', N'Contractual obligations
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4494292200158837093', N'2592532313255097542', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4494747305145711164', N'5868323546433342812', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4498168043850518506', N'593267024857579085', N'2446393712426238476', N'vda_control', N'Identifying requirements related to protection against malware
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4502452227546789295', N'4000995305092067456', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'451110436867323164', N'4568910555719748584', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4514740762745682453', N'1729678792110591453', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4516215123905720901', N'8004111779270247061', N'2446393712426238476', N'vda_control', N'Installation location
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4516609756518828403', N'2987417188956287684', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'452850078226860922', N'9002103012846028043', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4530872408119361049', N'1753689860860628328', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'453588084333393026', N'6439853853397829899', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'453904232964733049', N'7362935636816972988', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4540089522724162589', N'7301978007165354953', N'2446393712426238476', N'vda_control', N'Specifications for feedback procedures 
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4564445657832246851', N'7362935636816972988', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4568910555719748584', N'4256795901706194484', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4579885201192471670', N'8435538797966412299', N'2446393712426238476', N'vda_control', N'Implementing the defined IS risk management concept ', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4586060526694019469', N'3968880645732610918', N'2446393712426238476', N'vda_control', N'Term of the agreement (limited period or unlimited)
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4603935793589041418', N'7717125713058643462', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4606797532170337678', N'8290341358220299826', N'2446393712426238476', N'vda_control', N'Installing patches
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4612823884831018526', N'7802308159384436141', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4612941222735857987', N'6526154558131620914', N'2446393712426238476', N'vda_control', N'Legal requirements (e.g. data protection)
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4615285729924133163', N'8279026105303253843', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4621010208621441385', N'2912344849604784380', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4630208111288995266', N'6027388460646420136', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4632205242653192603', N'1161551723938464109', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4634070251758111894', N'4002216311868994970', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4638804560903387798', N'6778690051557666963', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4643049377193477277', N'1120752410112341728', N'2446393712426238476', N'vda_control', N'Risk management (see Control 1.2)', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4648738065140828448', N'8626676484264314191', N'2446393712426238476', N'vda_control', N'Implementing the encryption concept
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4650033969390242849', N'8250845726462134421', N'2446393712426238476', N'vda_control', N'Implementation of the specifications for the use of company equipment
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4651778451607434441', N'4568910555719748584', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4654417393798367456', N'4446937691758113903', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4657915012700945574', N'5677686945274837279', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4661798009486030664', N'3962911900284439090', N'2446393712426238476', N'vda_control', N'Integrating provisions on duties and rights related to handling confidential information into employment contracts', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4667194419262017059', N'7372772745630957562', N'2446393712426238476', N'vda_control', N'Restrictions related to connecting systems to the network
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4670146821607701750', N'1703662072763625572', N'2446393712426238476', N'vda_control', N'Contractually agreeing on measures for protecting information
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4670894422966566', N'2987702993627691382', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4670963482615827542', N'1717433407670144658', N'2446393712426238476', N'vda_question', N'09.02 To what extent are procedures for a formal user registration, change and de-registration implemented to enable assignment of access rights and is the allocation of secret authentication information controlled?', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4685568852108292479', N'6778690051557666963', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4687543537671883601', N'628959589561841643', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4704292138372711918', N'2786020278950278081', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4705556696133186792', N'8614217399273210372', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4709568038795393238', N'3968880645732610918', N'2446393712426238476', N'vda_control', N'Responsibilities of the obligated party
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4710365557256897929', N'3488212218909864631', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4712688775410399601', N'335855503912027512', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4716619992720953165', N'1716415031914246884', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4718419267967234641', N'7156568234970597231', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4735384225314260553', N'3295128618706683746', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4735419235657105379', N'7351878481076241502', N'2446393712426238476', N'vda_control', N'Defining a standard structure for classifying information 
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4735730414357559401', N'3488212218909864631', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4736099377455711924', N'8415326567274166733', N'2446393712426238476', N'vda_control', N'Documenting ownership
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4739306807171857526', N'5868323546433342812', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4746785715027097840', N'58123075627302365', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4749142480219030739', N'3295128618706683746', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4754207275105601735', N'2073217201601531037', N'2446393712426238476', N'vda_control', N'Security when using repositories
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4761648500219202277', N'298494701158774411', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4761739342296794882', N'81699944739484533', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4765681545174431033', N'8607741720424726003', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4766642312781214235', N'1724971185380345309', N'2446393712426238476', N'vda_control', N'Remote wiping procedures', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'477235587037547043', N'7263176691532253207', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4779343203530552918', N'7802308159384436141', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'478476659836274896', N'864361214830988020', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4798393051372959741', N'2986904555670949348', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4809314969934934291', N'3524699065838714382', N'2446393712426238476', N'vda_control', N'Temporary or initial passwords must be changed after the user has logged in for the first time
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4823244145740201682', N'5237337735037276107', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'483136443255703819', N'5177630288575249506', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
GO
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'483420329077657460', N'6286910819413609355', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4834216213960148639', N'0', N'2446393712426238476', N'vda_chapter', N'Chapter 12 - Operations Security', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4834496299161044480', N'4000995305092067456', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4840312473336331373', N'8614217399273210372', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4843148142048424590', N'4958050508595838646', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4848839100340746950', N'7777371919219969459', N'2446393712426238476', N'vda_control', N'Defining specifications for transferring software from development and test status to productive status
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4854071181997002654', N'2787922464528680733', N'2446393712426238476', N'vda_control', N'Authorization authority
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4869545097042375431', N'2749653142999746764', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4870954537041480570', N'8358859035717880984', N'2446393712426238476', N'vda_control', N'Adhering to legal regulations such as the use of digital signatures
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4872713154873346837', N'2073217201601531037', N'2446393712426238476', N'vda_control', N'Security of the development environment
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4874222007395727345', N'3765269860613113296', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'488019403834701790', N'8318213536775425161', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4884225340737211365', N'7351878481076241502', N'2446393712426238476', N'vda_control', N'Ensuring that all employees are aware of the classification structure 
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4888920093541776365', N'8626676484264314191', N'2446393712426238476', N'vda_control', N'Creating a set of rules containing encryption requirements for protecting information in line with its classification
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4890394629019123029', N'3295128618706683746', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4895858413593906778', N'5177630288575249506', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4905327411624851893', N'4834216213960148639', N'2446393712426238476', N'vda_question', N'12.02 To what extent are development and testing environments kept separate from productive environments?', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4912214181397901368', N'8052998701961952393', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4914448263003588419', N'1366774916130688728', N'2446393712426238476', N'vda_question', N'14.02 To what extent are security-relevant aspects taken into account within the software development process (incl. change management)?', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4918881079257941378', N'2986904555670949348', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4919310186299999660', N'335855503912027512', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4933720760971997338', N'2029088265548709302', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4935075576085565169', N'298494701158774411', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4940941688698026713', N'568355512251269661', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4947389397423929570', N'81699944739484533', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4958050508595838646', N'8515238375542573571', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'496041759649083961', N'6337414847540251164', N'2446393712426238476', N'vda_control', N'Checking backed up data on a regular basis
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4962747538336627587', N'5943740905399929573', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4964782992745318435', N'1462625753231214594', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4965931353308286087', N'6390672126418766666', N'2446393712426238476', N'vda_control', N'Analyzing risks', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4972792920640501083', N'4037699994964180525', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4975942497620675111', N'7156568234970597231', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4977714127999514507', N'5418960253962896192', N'2446393712426238476', N'vda_control', N'Observing the following points when reviewing the rights that have been granted:
', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4982908558200292181', N'6339331164620370059', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4984945854854444567', N'5177630288575249506', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4991228226246365047', N'7362935636816972988', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'4993842650816493023', N'2218834439314321869', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'500202788123491956', N'7315823352824444299', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5006444531242126577', N'7944147556408839282', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5012159135793038446', N'2987702993627691382', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5027696456171275483', N'8614217399273210372', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5030015607291556998', N'7719009940699824773', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5032561307505346515', N'7660761452469075933', N'2446393712426238476', N'vda_control', N'Procedures for protection and using network services
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5032975196390377892', N'8920120925801856435', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5063759569351560434', N'6430832177588752293', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5067712456276948798', N'7777371919219969459', N'2446393712426238476', N'vda_control', N'Constructing separate development, test and productive systems (physical or virtual)
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5069526620856076159', N'1740714899683391276', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5078449336433620377', N'8607741720424726003', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5083867046268745848', N'4912214181397901368', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5090333277955341674', N'8318213536775425161', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'509584887554554899', N'5237337735037276107', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5097170102219290942', N'4000995305092067456', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5107871605434631222', N'1491569192298105923', N'2446393712426238476', N'vda_control', N'Monitoring and checking of
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5113407983076000357', N'3238636703974273548', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5125322668374340973', N'6439853853397829899', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5134072773461034541', N'2592532313255097542', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5136259487803786088', N'1695260001442614506', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5154938393493783597', N'8083740153066732067', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'515663954377656367', N'3420644060841033354', N'2446393712426238476', N'vda_question', N'06.03 To what extent is a policy in place regarding the use of mobile devices and remote access to company data?


', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5162871173962252165', N'4912214181397901368', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'516625037093093209', N'1588725606522597516', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5177630288575249506', N'2987417188956287684', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5196300901683147639', N'6931418442267119106', N'2446393712426238476', N'vda_control', N'Identifying information security requirements when procuring or extending systems
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5198452488985331662', N'8840334893425537852', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5201360121611963097', N'5641109781045201587', N'2446393712426238476', N'vda_control', N'Implementing the measures defined in the policy', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5202331210942204748', N'6430832177588752293', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5204380894434735568', N'4446937691758113903', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5205891597008457602', N'8318474133686956399', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5215264607321867445', N'8279026105303253843', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5219858871964814383', N'6868268575369873698', N'2446393712426238476', N'vda_control', N'Separation of development, testing and productive systems
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5236043594634410543', N'1695260001442614506', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5237337735037276107', N'7362935636816972988', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5237945870371632734', N'7099696374069443482', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5239000231297631965', N'5943740905399929573', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5240279992052003076', N'3658960598793043245', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5242420844855446377', N'1033143989727507129', N'2446393712426238476', N'vda_control', N'Identifying security-relevant requirements related to logging activities carried out by system administrators and operators, e.g.
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5249662477504758319', N'7020990952976333939', N'2446393712426238476', N'vda_control', N'Checking that measures have been implemented or that it is possible to claim insurance premiums
', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5267372810882337188', N'0', N'2446393712426238476', N'vda_chapter', N'Chapter 13 - Communications Security', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5275994439101923837', N'6038869103286767587', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5278541383862761067', N'3238636703974273548', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5282326261626978907', N'4409711832180280168', N'2446393712426238476', N'vda_control', N'Ensuring that users aren''t able to change settings of the protective software
', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5283834020230575744', N'8852500088393413628', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5290586025737276369', N'7259108058589738373', N'2446393712426238476', N'vda_control', N'Processes and procedures', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5320982553306943074', N'7099696374069443482', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5325498966636644383', N'5349977230501722156', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5325666229833452818', N'8279026105303253843', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5331735363017656826', N'4081845364262914993', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5342738206184718841', N'3286773150959026682', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5344339911587377332', N'6436046772422591067', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5349977230501722156', N'515663954377656367', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5351443858264114922', N'4219216699790635890', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5380707737262994321', N'628959589561841643', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5383706976895745937', N'3249676086441233552', N'2446393712426238476', N'vda_control', N'Having access approved by the system''s owner
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5384334804211286906', N'934090292783788281', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5408953602222963723', N'5267372810882337188', N'2446393712426238476', N'vda_question', N'13.03 To what extent are groups of information services, users and information systems segregated on networks?', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5411079989568385727', N'8532613753999700289', N'2446393712426238476', N'vda_question', N'16.01 To what extent are responsibilities, procedures, reporting channels and criticality levels established to ensure an effective response to information security incidents or vulnerabilities?', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5414281579345591235', N'6451081473101480568', N'2446393712426238476', N'vda_question', N'18.01 To what extent are relevant lagal (country-specific), statutory, regulatory and contractual requirements ensured (e.g. protection of intellectual property rights, use of encryption technology and protection of records)?', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5417930857124575951', N'1703662072763625572', N'2446393712426238476', N'vda_control', N'Carrying out a risk analysis every time a contract is awarded to a third party
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5418960253962896192', N'4002216311868994970', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5423230207901676358', N'5849071236573869285', N'2446393712426238476', N'vda_control', N'Existing register of all corporate assets', N'null', 0)
GO
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5427217775752297406', N'7944147556408839282', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5456371755682083227', N'2592532313255097542', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'546249474334308520', N'4081845364262914993', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5468755248728356569', N'132623902904041965', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5470561549400885328', N'8515238375542573571', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5475666003695583349', N'1724971185380345309', N'2446393712426238476', N'vda_control', N'Restrictions for installing software', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5488402310531822979', N'7080143568760977467', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5490539115401622405', N'4256795901706194484', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'549216873050780183', N'3968880645732610918', N'2446393712426238476', N'vda_control', N'Procedure for publishing information that is subject to non-disclosure agreements
', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5493700360728328343', N'9171023884945702168', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5521506028123736665', N'4409711832180280168', N'2446393712426238476', N'vda_control', N'Automatically checking all received files and programs before their execution for malware (on-access scan)
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5538878144623194346', N'6430832177588752293', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5538986174925748724', N'9002103012846028043', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5542026518568913521', N'5641109781045201587', N'2446393712426238476', N'vda_control', N'Using secure authentication methods (e.g. 2-factor authentication, certificates, one-time passwords)', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5547850822497777108', N'5943740905399929573', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5549382611034027678', N'5556458022462667274', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5556458022462667274', N'2680725599794868691', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5557491182042263927', N'568355512251269661', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5558097506221537537', N'5177630288575249506', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5569017024415776444', N'6582475819231523265', N'2446393712426238476', N'vda_question', N'11.04 To what extent are policies and procedures defined and implemented regarding the use of company equipment, including off-site use, disposal and re-use?', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5577600090718750671', N'5030015607291556998', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5578922271405787787', N'4037699994964180525', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5589014770286937556', N'1033143989727507129', N'2446393712426238476', N'vda_control', N'Checking logs on a regular basis for any regulatory violations
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5591363964318498663', N'5030015607291556998', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5593802845274291756', N'2987417188956287684', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5596436856429133551', N'77565357065325982', N'2446393712426238476', N'vda_control', N'Emergency power supply
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5600746453126564111', N'8318474133686956399', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5602269028875388795', N'5868323546433342812', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5602655395007412123', N'1588725606522597516', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5603278773872801626', N'4958050508595838646', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5610630596743445692', N'7641759018810820108', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'562359301863421410', N'8705199034629078297', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5628240980161350807', N'9174752761940458137', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5630653174755802146', N'8004111779270247061', N'2446393712426238476', N'vda_control', N'Manufacturer
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5641109781045201587', N'515663954377656367', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5651255912618282662', N'9171023884945702168', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'565276042409521449', N'2986904555670949348', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5657278932825783827', N'1120752410112341728', N'2446393712426238476', N'vda_control', N'Awareness aspects', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5662481950914363057', N'7944147556408839282', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'566848919713235225', N'8610289929990196451', N'2446393712426238476', N'vda_control', N'Making employees and external business partners aware of the security organization', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5670341167644785292', N'0', N'2446393712426238476', N'vda_chapter', N'Chapter 8 - Asset Management', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5677686945274837279', N'2029088265548709302', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'567877240612603359', N'5177630288575249506', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5680644472275778167', N'3035577444191127728', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5682162033473569402', N'4000995305092067456', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'568355512251269661', N'8176573296684087932', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5683765198871443907', N'1388216959422713235', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'568718538566485351', N'7156568234970597231', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5687976004019503460', N'5414281579345591235', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5688551323010645335', N'6145188349350818363', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5689751047852870156', N'3420644060841033354', N'2446393712426238476', N'vda_question', N'06.01 To what extent are responsibilities for information security defined and allocated?', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5690369330375970620', N'5704734735790882250', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5693565001295772078', N'7641759018810820108', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5695828317719842659', N'5411079989568385727', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5696656132208083126', N'5704734735790882250', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5704734735790882250', N'6871682044773249194', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5705889814516091039', N'3035577444191127728', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'571065538138978108', N'3666288561411176842', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5712659482319896180', N'8358859035717880984', N'2446393712426238476', N'vda_control', N'Ensuring that services are available and reliable
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5720752142628965831', N'8336376657789435660', N'2446393712426238476', N'vda_control', N'Using non-disclosure agreements with service providers and employees
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5722485940222932361', N'4958050508595838646', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5727047338525347249', N'4516609756518828403', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5732134319355087957', N'4037699994964180525', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5736581211172748354', N'4977714127999514507', N'2446393712426238476', N'vda_control', N'Conducting checks on a regular basis
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5745840171033606122', N'8336376657789435660', N'2446393712426238476', N'vda_control', N'Defining regulations and procedures for the use of non-disclosure agreements
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5746895154118375923', N'7315823352824444299', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5748036403578422583', N'4296767145667834442', N'2446393712426238476', N'vda_control', N'Defining the conditions for these reviews, e.g. scope, schedule and approach', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5757732494572370731', N'4568910555719748584', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5758059617232703106', N'4409711832180280168', N'2446393712426238476', N'vda_control', N'Ensuring that users are not allowed to deactivate malware protection software
', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5771580727494162718', N'4037699994964180525', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5776367061520595567', N'3035577444191127728', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5779004115038326576', N'3423769354751789060', N'2446393712426238476', N'vda_control', N'Appropriately responding to information security incidents/weaknesses
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5805920728435540935', N'8920120925801856435', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5809156198016303944', N'1312687200770504351', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'58123075627302365', N'2580699408937075743', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5813410832141011691', N'628959589561841643', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5815637551469148194', N'436470360644730885', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'581711301705222527', N'6439853853397829899', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5822526532881826845', N'6312936561959258669', N'2446393712426238476', N'vda_control', N'Having the ISMS approved by top management (e.g. Board of Management, Executive Management)', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5845712601944011855', N'568355512251269661', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5846366677801612694', N'4919310186299999660', N'2446393712426238476', N'vda_control', N'Avoiding the use of productive data for test purposes as far as possible
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5849071236573869285', N'1935802179444259856', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5852893178796130573', N'302356315297593204', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5862283738637616111', N'3238636703974273548', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5862741405021091555', N'7668780768378533084', N'2446393712426238476', N'vda_control', N'Detection of potentially affected infrastructure, assets and systems
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5865810962660871427', N'1312687200770504351', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5866133499912634292', N'5849071236573869285', N'2446393712426238476', N'vda_control', N'Categorizing corporate assets (for example in accordance with the categories in ISO 27005).', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5866329018936309852', N'132623902904041965', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5866508844591659938', N'81699944739484533', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5868323546433342812', N'5411079989568385727', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5874010821349098132', N'2592532313255097542', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'587641753569506036', N'3286773150959026682', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5888963501649475492', N'4354499083210409643', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5897597023140625562', N'3763268604848422382', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5904499127595086411', N'8637792722049321083', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5910284282822177863', N'3968880645732610918', N'2446393712426238476', N'vda_control', N'Details related to the people/companies involved
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5924536265796833236', N'7080143568760977467', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'593267024857579085', N'4256795901706194484', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5935392302310472409', N'956677221217816208', N'2446393712426238476', N'vda_control', N'KonTraG (German Control and Transparency in Business Act)
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'593838558502369466', N'7080143568760977467', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
GO
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5943740905399929573', N'515663954377656367', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5950469923839455599', N'3765269860613113296', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'596338136250863517', N'8920120925801856435', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5970402420229322622', N'9181822893540030566', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5978592465968741941', N'4396660567703469276', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'598471990743514037', N'4914448263003588419', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'5989651952545120277', N'0', N'2446393712426238476', N'vda_chapter', N'Chapter 5 - Information Security Policies', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6007575611975157236', N'5349977230501722156', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6008452127389993845', N'8637792722049321083', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6010814752694291681', N'4287982503156563670', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6027388460646420136', N'6927670239089046210', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6028297424971741770', N'7156568234970597231', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'603571153014076233', N'1724971185380345309', N'2446393712426238476', N'vda_control', N'Access controls', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6036350036350945864', N'5349977230501722156', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6037310074441581338', N'7627182786995572549', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6037823106779755772', N'8884472200872412517', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6038869103286767587', N'4834216213960148639', N'2446393712426238476', N'vda_question', N'12.05 To what extent are event-logs (containing e.g. user activities, exceptions, errors and security events) created, stored, reviewed and protected against modification?', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6047093008141666461', N'2786020278950278081', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6052725212389422823', N'7954271716132801106', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6061870596794594375', N'302356315297593204', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6068358921985802782', N'8637792722049321083', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6072981334140237566', N'3295128618706683746', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6073160144285709518', N'3286773150959026682', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6075917498356118563', N'414534463031886028', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6079171649652702981', N'1753689860860628328', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6080867848071655485', N'4396660567703469276', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6083424906734948115', N'8379922137397834324', N'2446393712426238476', N'vda_control', N'Publishing regulations to all people involved in processing personal data
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6101279580169682530', N'219568277629809980', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6108173345847883101', N'6430832177588752293', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6113250002122879282', N'7719009940699824773', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'611844604605347087', N'7641759018810820108', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'612943757308050354', N'2680725599794868691', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'613636691133052048', N'1564221234243876582', N'2446393712426238476', N'vda_control', N'Protecting mobile storage devices
', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6144678456854559687', N'8415326567274166733', N'2446393712426238476', N'vda_control', N'Procuring software from secure sources
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6145188349350818363', N'2302879250113970355', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6146888058923300102', N'8637792722049321083', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6154449218861482112', N'4710365557256897929', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6158074995336131705', N'9171023884945702168', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6158351617008746566', N'8852500088393413628', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6167022956953776631', N'934090292783788281', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'616807067585301274', N'4396660567703469276', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6170346345295428171', N'6430832177588752293', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6173718748272742365', N'6931418442267119106', N'2446393712426238476', N'vda_control', N'Checking specifications against information security policies
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6179170193885542858', N'7802308159384436141', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6183381605957547405', N'1753689860860628328', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6205530091025813350', N'7631906540230951320', N'2446393712426238476', N'vda_control', N'Limiting changes to software packages
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6222640354037643184', N'2967691768391746221', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6226649602168737463', N'7351878481076241502', N'2446393712426238476', N'vda_control', N'Labelling and making information available in accordance with its classification
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6228700989899059526', N'4516609756518828403', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6228976132477925063', N'6145188349350818363', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6240329528519969617', N'7954271716132801106', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6251363563452385301', N'7372772745630957562', N'2446393712426238476', N'vda_control', N'System authentication within the network
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'625900684289459549', N'6430832177588752293', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6259070028902449894', N'7385165034763734230', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6261507259963980210', N'7080143568760977467', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6275221474998700018', N'5677686945274837279', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6277839192902972121', N'3765269860613113296', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6285941445331369765', N'1588725606522597516', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6286910819413609355', N'6582475819231523265', N'2446393712426238476', N'vda_question', N'11.02 To what extent has the company established measures to protect itself against the effects of natural disasters, malicious attacks and accidents?', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'628959589561841643', N'7385165034763734230', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6294405293742930954', N'6027388460646420136', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6297850347587287963', N'5030015607291556998', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6310621762233451336', N'6027388460646420136', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6312936561959258669', N'8952466254042938799', N'2446393712426238476', N'vda_level', N'Level 1', N'中文提示1', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6313926116434266761', N'6436046772422591067', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6314581295430810281', N'1966797673665874328', N'2446393712426238476', N'vda_control', N'Acquiring and assessing information about technical weaknesses of assets in use
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6315040742809976406', N'4409711832180280168', N'2446393712426238476', N'vda_control', N'Installing software to protect against malware
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6327481707611246252', N'2680725599794868691', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6331528762928968996', N'8637792722049321083', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6337414847540251164', N'4037013385646814962', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6339331164620370059', N'7719009940699824773', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6345693146765279789', N'5569017024415776444', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6348099604372305584', N'5704734735790882250', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'636375594307306610', N'5677686945274837279', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6365813100460785900', N'219568277629809980', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6368345412018718164', N'4111581492639674532', N'2446393712426238476', N'vda_control', N'Raising awareness among employees
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6384264820386608596', N'1564221234243876582', N'2446393712426238476', N'vda_control', N'Protective measures, e.g. encryption 
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6388766156127620311', N'5177630288575249506', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6389218280264648985', N'8657428221751507721', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6390672126418766666', N'8435538797966412299', N'2446393712426238476', N'vda_control', N'Defining an IS risk management process, covering the following points:', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6395403394082978225', N'1729678792110591453', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6396559597949531775', N'5240279992052003076', N'2446393712426238476', N'vda_control', N'Reviewing the adequacy of effectiveness checks for the ISMS on a regular basis', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6400225202493015770', N'1716415031914246884', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6403889368938070775', N'7802308159384436141', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6406422263997418614', N'8279026105303253843', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6412335610335152217', N'4219216699790635890', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6412542335922977587', N'6436046772422591067', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6418200684867898165', N'218832212144243795', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6430832177588752293', N'2112253346534671852', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6432957335028413145', N'8358859035717880984', N'2446393712426238476', N'vda_control', N'Protecting messages from unauthorized access
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6436046772422591067', N'1304309769780900013', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6439853853397829899', N'6038869103286767587', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6442472681689468567', N'5242420844855446377', N'2446393712426238476', N'vda_control', N'Procedure for dealing with a violation of regulations
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6445220884168917956', N'3278709966472458285', N'2446393712426238476', N'vda_control', N'Publishing them on the Intranet', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6449307387561200421', N'3249676086441233552', N'2446393712426238476', N'vda_control', N'Withdrawing authorization rights of service providers once a task has been completed
', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'644976186701231870', N'5470561549400885328', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6451081473101480568', N'0', N'2446393712426238476', N'vda_chapter', N'Chapter 18 - Compliance', N'null', 14)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6465089393112891136', N'5849071236573869285', N'2446393712426238476', N'vda_control', N'Naming a person responsible for each form of corporate asset', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6476033142865377770', N'8318213536775425161', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6480894506126756257', N'7385165034763734230', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
GO
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6491075233780551666', N'3685324712191740021', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'650524007134414996', N'6439853853397829899', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6508730301048507754', N'218832212144243795', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6511531253224224680', N'4002216311868994970', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6520599703300517900', N'628959589561841643', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6521853150333521710', N'3295128618706683746', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6526154558131620914', N'7351878481076241502', N'2446393712426238476', N'vda_control', N'Classifying information according to the following:
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6528151204174410777', N'4568910555719748584', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6536077390703773806', N'5943740905399929573', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6541003639798347699', N'3685324712191740021', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6556954218343412994', N'8884472200872412517', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6559528834896251480', N'77565357065325982', N'2446393712426238476', N'vda_control', N'Emergency plans
', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6567168733370036358', N'9174752761940458137', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6569104135721732978', N'8318474133686956399', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6573798534645791194', N'1724971185380345309', N'2446393712426238476', N'vda_control', N'Use of web services and web apps', N'null', 10)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6582475819231523265', N'0', N'2446393712426238476', N'vda_chapter', N'Chapter 11 - Physical and Environmental Security', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6583877903776985864', N'1753689860860628328', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6590290002954833299', N'4568910555719748584', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6590432125741646426', N'7099696374069443482', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'659061669053088910', N'8637792722049321083', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6591011960231148557', N'1724971185380345309', N'2446393712426238476', N'vda_control', N'Requirements regarding software versions for mobile devices and patch management', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'65954566125142960', N'8610289929990196451', N'2446393712426238476', N'vda_control', N'Defining and documenting a suitable security organization within the company, including the assignment of areas of duty', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6617651902726292778', N'3238636703974273548', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6619748583893154787', N'3250086003476053174', N'2446393712426238476', N'vda_control', N'Providing users with information and adequate training on password regulations
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6636452456669822427', N'132623902904041965', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6640352817218210840', N'4219216699790635890', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6641463479959897641', N'9171023884945702168', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6642285831590032246', N'4991228226246365047', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6644751589748355365', N'4000995305092067456', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6655869503285772584', N'4354499083210409643', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6676451235734373790', N'8314496301358794284', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6682679314167973727', N'8052998701961952393', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6688763626634428668', N'4396660567703469276', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6690392308022265743', N'2905129055304594022', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6692146210861696436', N'8515238375542573571', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6701741306893874936', N'1831146676005024376', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6709998848762596836', N'3238636703974273548', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6710158766101870236', N'5349977230501722156', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6714976776857406154', N'5030015607291556998', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6728054623526339757', N'308846590865723092', N'2446393712426238476', N'vda_control', N'Auditing acceptability
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6733416980728820746', N'8657428221751507721', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'673506211154512068', N'4296767145667834442', N'2446393712426238476', N'vda_control', N'Having the organization''s ISMS checked by an independent instance following significant changes', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6742248216686313561', N'8290341358220299826', N'2446393712426238476', N'vda_control', N'Modifying access options,  e.g. firewalls 
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'674528216857556027', N'77565357065325982', N'2446393712426238476', N'vda_control', N'Fire alarms
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6745945936049452893', N'6027388460646420136', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6753473667264891738', N'5470561549400885328', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6758625561265914032', N'1312687200770504351', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6762488593834983687', N'4958050508595838646', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6763951481844841640', N'3666288561411176842', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6765529547127342004', N'4409711832180280168', N'2446393712426238476', N'vda_control', N'Regularly checking the entire data pool of all systems for malware
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6769561524025537308', N'4037699994964180525', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6773499176586622552', N'8318213536775425161', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6778690051557666963', N'5414281579345591235', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6781684938064744348', N'4516609756518828403', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6787812344279354530', N'8920120925801856435', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'679044576395936723', N'1462625753231214594', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6791936540558474065', N'8314496301358794284', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'679240471299378976', N'3666288561411176842', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6796278502642434754', N'4977714127999514507', N'2446393712426238476', N'vda_control', N'Applying shorter review intervals for critical access rights
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6797942223396029955', N'2218834439314321869', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6805514485184154358', N'7802308159384436141', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6809211573666626541', N'6145188349350818363', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'681024566288235060', N'436470360644730885', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6812693265890587020', N'8852500088393413628', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6814309173728921220', N'6430832177588752293', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6816554788715804585', N'6337414847540251164', N'2446393712426238476', N'vda_control', N'Backing up data
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6820031740296214436', N'6868268575369873698', N'2446393712426238476', N'vda_control', N'Use of development and system tools that not are used in productive systems
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6832017695631588919', N'414534463031886028', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6842623295563123815', N'8083740153066732067', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'684420790478588700', N'0', N'2446393712426238476', N'vda_chapter', N'Chapter 17 - Information Security Aspects of Business Continuity Management', N'null', 13)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6852150092144623600', N'218832212144243795', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6864224195457205737', N'5237337735037276107', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6868268575369873698', N'7777371919219969459', N'2446393712426238476', N'vda_control', N'Defining requirements for development and testing environments, e.g.
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6871682044773249194', N'1717433407670144658', N'2446393712426238476', N'vda_question', N'09.05 To what extent is access to information and applications restricted to authorized personnel?', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'687459035009207046', N'7020990952976333939', N'2446393712426238476', N'vda_control', N'Creating emergency plans
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6875111526581290367', N'7263176691532253207', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6876382479817984407', N'1753689860860628328', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6891823622200669590', N'864361214830988020', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6905417616419932209', N'1724971185380345309', N'2446393712426238476', N'vda_control', N'Encryption solutions', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'690641352980936951', N'1161551723938464109', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6914364182580642187', N'7797525598597170939', N'2446393712426238476', N'vda_control', N'Physical Checks - "Data Room"
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6927670239089046210', N'6582475819231523265', N'2446393712426238476', N'vda_question', N'11.03 To what extent are protective measures established to protect delivery and loading areas from being accessed by unauthorized persons?', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6929410738603864518', N'612943757308050354', N'2446393712426238476', N'vda_control', N'Defining security relevant requirements for changes within the organization, corporate processes, facilities and systems that process information, e.g.
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'693056275011516815', N'6027388460646420136', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6931099656110950557', N'3209443312862344145', N'2446393712426238476', N'vda_control', N'Back-up methods
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6931418442267119106', N'2987417188956287684', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6942998657065795191', N'3238636703974273548', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6956560147027636955', N'3572098075769287034', N'2446393712426238476', N'vda_control', N'Transport
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6960461915383285776', N'4564445657832246851', N'2446393712426238476', N'vda_control', N'Documenting results of system audits
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6969083336702210946', N'5349977230501722156', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'6972851704540908717', N'6339331164620370059', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7005038938894191835', N'298494701158774411', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7007848102716030394', N'1161551723938464109', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7017803298761426865', N'1304309769780900013', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7020176615983565407', N'2112253346534671852', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7020990952976333939', N'8705199034629078297', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7036240667541522936', N'3249676086441233552', N'2446393712426238476', N'vda_control', N'Using unique user identities
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7041246640727281017', N'7641759018810820108', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7046045670295253939', N'7301978007165354953', N'2446393712426238476', N'vda_control', N'Organization that deals with the incident
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7048301324131387145', N'1831146676005024376', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
GO
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7058900247216896374', N'8321890986152080410', N'2446393712426238476', N'vda_control', N'Key code management 
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'706108775754610550', N'3035577444191127728', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7078067565548160044', N'4354499083210409643', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7080143568760977467', N'3658960598793043245', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7081270304523140195', N'3423769354751789060', N'2446393712426238476', N'vda_control', N'Documenting information security incidents/weaknesses to ensure traceability
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7095123227672987430', N'2905129055304594022', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7099696374069443482', N'4905327411624851893', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7100339041211468026', N'4958050508595838646', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7110959262130681427', N'3765269860613113296', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7138809771369871082', N'2749653142999746764', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7144060494460374828', N'6871682044773249194', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7149788145824975422', N'5704734735790882250', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7156568234970597231', N'8705199034629078297', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7173264880353915132', N'3238636703974273548', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7179732316065676595', N'2592532313255097542', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7183487243933335672', N'2967691768391746221', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'718557931563404559', N'8607741720424726003', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7188705698097218816', N'5704734735790882250', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7205709357829017446', N'864361214830988020', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7221921702254262270', N'414534463031886028', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7229446813031119575', N'3249676086441233552', N'2446393712426238476', N'vda_control', N'Having access rights reviewed by the information owner on a regular basis
', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7238090784051409128', N'1729678792110591453', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7239631809308082522', N'6027388460646420136', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7248233497039253954', N'9171023884945702168', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7248840481789988116', N'3572098075769287034', N'2446393712426238476', N'vda_control', N'Re-use
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7252966058344690860', N'8314496301358794284', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7254432889890489463', N'5556458022462667274', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7258237867493179868', N'8614217399273210372', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7259108058589738373', N'4070957027057156848', N'2446393712426238476', N'vda_control', N'Defining the conditions and contents of reviews, e.g.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7263176691532253207', N'5411079989568385727', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7268114588258747718', N'4296767145667834442', N'2446393712426238476', N'vda_control', N'Documenting the results', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7274623185612915954', N'8083740153066732067', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7283118859916887128', N'7020990952976333939', N'2446393712426238476', N'vda_control', N'Identifying the assets affected (see Control 8.1 and 8.2)
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7287790467166485893', N'5418960253962896192', N'2446393712426238476', N'vda_control', N'Issuing rights on a needs-orientated basis
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7287820153507460706', N'7944147556408839282', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7288443258686520068', N'8311201229576883614', N'2446393712426238476', N'vda_control', N'Logging the copying process and the use of information relevant to operations (audit trail).
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7301978007165354953', N'2200555233025607822', N'2446393712426238476', N'vda_control', N'Planning and implementing measures to prevent similar security incidents from occurring again
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7305219557647364771', N'5704734735790882250', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7305917114144829600', N'4912214181397901368', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7315823352824444299', N'4037013385646814962', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7320576161906508541', N'1740714899683391276', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7334934463375232675', N'7668780768378533084', N'2446393712426238476', N'vda_control', N'Implementing any defined security measures
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7337613184606581443', N'1462625753231214594', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7340569629385077054', N'8614217399273210372', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7347388676200182940', N'8314496301358794284', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7350533529542934873', N'3286773150959026682', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7351878481076241502', N'8176573296684087932', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7362935636816972988', N'4834216213960148639', N'2446393712426238476', N'vda_question', N'12.08 To what extent are audit requirements and activities that are used to check information processing systems  planned and coordinated?', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7368189955772233751', N'5556458022462667274', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'736904140690050804', N'4287982503156563670', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7372391092515129191', N'8311201229576883614', N'2446393712426238476', N'vda_control', N'Using the same access checks in the test system as in the productive system
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7372772745630957562', N'4735730414357559401', N'2446393712426238476', N'vda_control', N'Identifying requirements related to the management and administration of networks, e.g.
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7372780847105554676', N'5237337735037276107', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7383159682925086738', N'3962911900284439090', N'2446393712426238476', N'vda_control', N'Ensuring that confidentiality provisions are valid beyond the employment relationship/contractual relationship', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7385165034763734230', N'3420644060841033354', N'2446393712426238476', N'vda_question', N'06.02 To what extent are information security requirements taken into account in project work (irrespective of project type)?', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7390773925140608413', N'1564221234243876582', N'2446393712426238476', N'vda_control', N'Transfer
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7401863830443897749', N'6927670239089046210', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7404766422694448939', N'5237337735037276107', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7407568655461666388', N'934090292783788281', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7411102892214734210', N'2580699408937075743', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7411864258888053892', N'7156568234970597231', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7426683562244065938', N'5470561549400885328', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7438283531764479755', N'2967691768391746221', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7438744756379667156', N'7099696374069443482', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7445358061182141522', N'7372772745630957562', N'2446393712426238476', N'vda_control', N'Separation of network operations and computer operations
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7451737379480321218', N'1740714899683391276', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7462631131511307183', N'5349977230501722156', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7471959215269065692', N'5107871605434631222', N'2446393712426238476', N'vda_control', N'Implementation of agreed technical and organizational specifications
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7472791344185784860', N'4000995305092067456', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7476757115665563070', N'3403666888959149064', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7482114107317336454', N'4912214181397901368', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7490342986383799849', N'8379922137397834324', N'2446393712426238476', N'vda_control', N'Identifying personal references in information on a case-by-case basis
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7511135599393881241', N'2218834439314321869', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7511413328875635559', N'8314496301358794284', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7513387774408177985', N'8311201229576883614', N'2446393712426238476', N'vda_control', N'Rendering productive data anonymous wherever possible 
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7519610534752307694', N'568355512251269661', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7521641797586144843', N'3968880645732610918', N'2446393712426238476', N'vda_control', N'Type of information
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7525530806677621428', N'4081845364262914993', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7530180642311786331', N'4912214181397901368', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7535733757809963810', N'786883916095769041', N'2446393712426238476', N'vda_control', N'Defining SLAs
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7540588053557850968', N'6526154558131620914', N'2446393712426238476', N'vda_control', N'Its value 
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7541090166280207225', N'218832212144243795', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7541862869712389287', N'1716415031914246884', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7542160972582635687', N'58123075627302365', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7545486803739262560', N'4081845364262914993', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7549262467395008688', N'132623902904041965', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7549903635145666856', N'1564221234243876582', N'2446393712426238476', N'vda_control', N'Deletion
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7554042504356412053', N'1724971185380345309', N'2446393712426238476', N'vda_control', N'Protection against malware', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7557200653260180437', N'8279026105303253843', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7566998517682188907', N'7797525598597170939', N'2446393712426238476', N'vda_control', N'Physical Checks - "Peripheral Computer Room"
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'757221429500068150', N'4710365557256897929', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7579514006882635198', N'1388216959422713235', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'758027213428310220', N'2592532313255097542', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7582430503547260671', N'5030015607291556998', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7584929341653207916', N'1740714899683391276', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'758993952136146955', N'8318474133686956399', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7627182786995572549', N'2680725599794868691', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7631906540230951320', N'4914448263003588419', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'763365683332234618', N'3524699065838714382', N'2446393712426238476', N'vda_control', N'Confidential log-in information must not be passed on to third parties, even not to persons in authority
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7637460505458066209', N'302356315297593204', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
GO
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7638453094960575321', N'2218834439314321869', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7641759018810820108', N'1388216959422713235', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7642098485937616010', N'864361214830988020', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7648150403657744045', N'7954271716132801106', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7649987457740750140', N'8318213536775425161', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7653696980372206677', N'2749653142999746764', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7657457734054031525', N'8321890986152080410', N'2446393712426238476', N'vda_control', N'The encryption algorithm, based on industry standards
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7660761452469075933', N'786883916095769041', N'2446393712426238476', N'vda_control', N'Identifying security requirements for network services, e.g.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7661180156874044798', N'218832212144243795', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'766615625312390652', N'6337414847540251164', N'2446393712426238476', N'vda_control', N'Drawing up a data back-up concept
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7666732924499965292', N'2592532313255097542', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7668780768378533084', N'6286910819413609355', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7674120193800228634', N'414534463031886028', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7681789198052247342', N'7080143568760977467', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7693356909532168682', N'956677221217816208', N'2446393712426238476', N'vda_control', N'Copyright
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7693426377900275876', N'3403666888959149064', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7702523974061605792', N'6439853853397829899', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7705788632137289142', N'2580699408937075743', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7705796128773094072', N'3968880645732610918', N'2446393712426238476', N'vda_control', N'Object of the agreement
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7717125713058643462', N'2517126404662475315', N'2446393712426238476', N'vda_question', N'07.01 To what extent is staff (internal and external) contractually bound to comply with information security policies?', N'', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7719009940699824773', N'4379493647776630466', N'2446393712426238476', N'vda_question', N'01.02 To what extent is an Information Security risk management as well as risk treatment defined, documented and implemented?', N'www', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7719058574963985411', N'58123075627302365', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7732212412860708035', N'1717433407670144658', N'2446393712426238476', N'vda_question', N'09.04 To what extent have binding policies been defined concerning creation and handling of secret authentication information?', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'773238606206815349', N'58123075627302365', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'773498576055875519', N'8318474133686956399', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7735700327444558698', N'6778690051557666963', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7736569876617969924', N'3249676086441233552', N'2446393712426238476', N'vda_control', N'Handling users'' confidential log-in information in a secure manner
', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7743020203150392801', N'9174752761940458137', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7745242959803822624', N'8884472200872412517', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7747881005699121166', N'6027388460646420136', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'77488432992399817', N'8435538797966412299', N'2446393712426238476', N'vda_control', N'Reviewing the IS risk management concept on a regular basis', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7755610745479672130', N'3249676086441233552', N'2446393712426238476', N'vda_control', N'Having authorization rights authorized by the owner of the information
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'77565357065325982', N'7668780768378533084', N'2446393712426238476', N'vda_control', N'Defining security measures, e.g.
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7768112364219155225', N'1462625753231214594', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7768636551269693779', N'3666288561411176842', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7777371919219969459', N'4905327411624851893', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7790159863585486342', N'8435538797966412299', N'2446393712426238476', N'vda_control', N'Documenting the IS risk management concept ', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7796709129340800045', N'1935802179444259856', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7796836557598864585', N'6778690051557666963', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7797044740734994414', N'3765269860613113296', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7797525598597170939', N'1292927790196177105', N'2446393712426238476', N'vda_control', N'Protecting security zones
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7802308159384436141', N'4914448263003588419', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'780262044380476621', N'7144060494460374828', N'2446393712426238476', N'vda_control', N'Ensuring that the policy is mandatory for anyone who uses information and applications
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7803507003810493301', N'4958050508595838646', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'780481070627664397', N'6339331164620370059', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7807662534160594561', N'4369137836422182815', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7809468284473357591', N'8840334893425537852', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7819941519113566272', N'2356932601335693156', N'2446393712426238476', N'vda_question', N'15.01 To what extent are information security requirements agreed with suppliers to mitigate risks contractually  when suppliers have access to corporate assets (particularly information and communication  services and in case such assets are used by sub-contractors)?', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7833507051737599424', N'2905129055304594022', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7833522998936424099', N'9174752761940458137', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7834811996621260860', N'7641759018810820108', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7843383218948624189', N'4564445657832246851', N'2446393712426238476', N'vda_control', N'Determining the scope in due time prior to the start of the audit
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7844830854539593458', N'4991228226246365047', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7860336330375250966', N'8920120925801856435', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7867511743990117731', N'6038869103286767587', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'786883916095769041', N'2302879250113970355', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7871873031535281698', N'3572098075769287034', N'2446393712426238476', N'vda_control', N'Disposal
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7873078800438610377', N'2987702993627691382', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7877338346803514780', N'934090292783788281', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7877452038535137647', N'1161551723938464109', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7883723124950453891', N'3765269860613113296', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7883874509233176181', N'7641759018810820108', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7887130772676692988', N'4568910555719748584', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'79344449659057301', N'6145188349350818363', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7941562842860571951', N'4367432358476952', N'2446393712426238476', N'vda_control', N'Web meeting
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7944147556408839282', N'9021558642274419982', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7944950962430165687', N'302356315297593204', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7950217347382623057', N'8379922137397834324', N'2446393712426238476', N'vda_control', N'Drawing up internal regulations for adherence to legal and contractual requirements for the protection of personal data', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7954271716132801106', N'3763268604848422382', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7972460946956241515', N'3524699065838714382', N'2446393712426238476', N'vda_control', N'Users must not use identical passwords for professional and private purposes
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7980413433543543778', N'5556458022462667274', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7983208998262191065', N'6526154558131620914', N'2446393712426238476', N'vda_control', N'Sensitivity 
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'7992441894979944203', N'8250845726462134421', N'2446393712426238476', N'vda_control', N'Creating policies and procedures for the use of company equipment
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8002864652845693459', N'934090292783788281', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8004111779270247061', N'1966797673665874328', N'2446393712426238476', N'vda_control', N'Recording necessary data about these assets, e.g.
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8007050484600779664', N'7797525598597170939', N'2446393712426238476', N'vda_control', N'Physical Checks - "Control Cabinet"
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8018006529037979426', N'5943740905399929573', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8021401567536824628', N'3295128618706683746', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8035854109853137239', N'4912214181397901368', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8045970795186441260', N'568355512251269661', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8052998701961952393', N'6451081473101480568', N'2446393712426238476', N'vda_question', N'18.02 To what extent is confidentiality and the protection of personal data ensured (taking into account national legislation)?', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'805732604066312757', N'6436046772422591067', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8065495994420448562', N'9181822893540030566', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8068221605019862859', N'593267024857579085', N'2446393712426238476', N'vda_control', N'Implementing the defined measures
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8079858801405742759', N'8176573296684087932', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8080190087900053796', N'4905327411624851893', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8083740153066732067', N'4670963482615827542', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8091971672611046799', N'2986904555670949348', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8092466149635700025', N'1729678792110591453', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8111374345434908696', N'5107871605434631222', N'2446393712426238476', N'vda_control', N'Service reports drawn up by third parties 
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8113525886372758772', N'1831146676005024376', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8114591010658601596', N'6526154558131620914', N'2446393712426238476', N'vda_control', N'Criticality 
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8118073902403928012', N'5107871605434631222', N'2446393712426238476', N'vda_control', N'Adherence to contractual agreements
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8119232301088720303', N'3765269860613113296', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8120266373166772890', N'436470360644730885', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8130146048251022355', N'6145188349350818363', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8137118338126859241', N'3962911900284439090', N'2446393712426238476', N'vda_control', N'Integrating security-relevant provisions into employment contracts under consideration of the company''s security policies', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8146556563434026204', N'6778690051557666963', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8160748159825326843', N'7099696374069443482', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8163334982486214594', N'5868323546433342812', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
GO
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'81699944739484533', N'9021558642274419982', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8174410166552120964', N'6927670239089046210', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8176573296684087932', N'5670341167644785292', N'2446393712426238476', N'vda_question', N'08.02 To what extent is information classified  regarding the corresponding protection level?', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8186859443791705430', N'7627182786995572549', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8186908811374606163', N'3658960598793043245', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8189761496335300814', N'8840334893425537852', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8190057648233726751', N'4354499083210409643', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8192542304802419310', N'934090292783788281', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'81937814704405955', N'1161551723938464109', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8194701350047234758', N'6339331164620370059', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'820212712990226683', N'1966797673665874328', N'2446393712426238476', N'vda_control', N'Identifying systems and software (assets) that may be affected
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8227126736808620821', N'7631906540230951320', N'2446393712426238476', N'vda_control', N'Anonymization of the productive data, whenever possible
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8245457320259502797', N'2822939335208841323', N'2446393712426238476', N'vda_control', N'Inspection of deliveries to detect potential threats 
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8248771257453331568', N'2786020278950278081', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8250845726462134421', N'5569017024415776444', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8255029299383258319', N'323552400698329885', N'2446393712426238476', N'vda_control', N'Defining rules and procedures regarding the segmentation of the network
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8266912045129578024', N'8607741720424726003', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8279026105303253843', N'7819941519113566272', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8281522864913664241', N'6390672126418766666', N'2446393712426238476', N'vda_control', N'Identifying risks', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8290341358220299826', N'1966797673665874328', N'2446393712426238476', N'vda_control', N'Implementing suitable measures, e.g.
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8296906105266916247', N'2786020278950278081', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8299347522499134701', N'6038869103286767587', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8303600602729500321', N'934090292783788281', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8305455143697496611', N'4000995305092067456', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8311201229576883614', N'4919310186299999660', N'2446393712426238476', N'vda_control', N'Adhering to the following regulations when using productive data for test purposes: 
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8314496301358794284', N'3488212218909864631', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8318213536775425161', N'4670963482615827542', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8318221131324014943', N'3035577444191127728', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8318474133686956399', N'4369137836422182815', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8320574423626791640', N'3654907651292444416', N'2446393712426238476', N'vda_control', N'Criteria related to the acceptance of risks', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8321890986152080410', N'8626676484264314191', N'2446393712426238476', N'vda_control', N'Creating an encryption concept containing provisions for the following points (as a minimum):
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8323843593726507204', N'4564445657832246851', N'2446393712426238476', N'vda_control', N'Identifying auditing requirements for information processing systems
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8330007663386380750', N'9002103012846028043', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8336376657789435660', N'2112253346534671852', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8341519476935671060', N'4977714127999514507', N'2446393712426238476', N'vda_control', N'Documenting checks
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'834406960408935209', N'8607741720424726003', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8344860338081254968', N'81699944739484533', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8356774509002509312', N'3295128618706683746', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8358859035717880984', N'2482266583756750338', N'2446393712426238476', N'vda_control', N'Drawing up rules and procedures in accordance with information classification specifications, taking the following points into account:
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8366841267346755143', N'1120752410112341728', N'2446393712426238476', N'vda_control', N'Risk oriented approach including consideration of the life cycle', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8375509235772771704', N'6778690051557666963', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8379922137397834324', N'8052998701961952393', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8385506296443915684', N'3209443312862344145', N'2446393712426238476', N'vda_control', N'Storage of back-up media (various protected locations, a number of different fire protection zones)
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8388433088594463335', N'1462625753231214594', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8395645163181068265', N'7954271716132801106', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8397025453412364663', N'2787922464528680733', N'2446393712426238476', N'vda_control', N'Relevant networks and network services
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8397370230727593852', N'4111581492639674532', N'2446393712426238476', N'vda_control', N'Taking the integrity of records into account in accordance with legal or contractual obligations and classification regulations (access protection, retention)
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8402669076602243661', N'2986904555670949348', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8405374111723599707', N'2592532313255097542', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8414421736646425254', N'5177630288575249506', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8415326567274166733', N'4111581492639674532', N'2446393712426238476', N'vda_control', N'Defining measures for meeting these requirements, e.g.:
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8417743487907118364', N'8358859035717880984', N'2446393712426238476', N'vda_control', N'Ensuring that right addresses are used and that the messages are transported correctly
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8420435030945383455', N'3286773150959026682', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8420866507390303354', N'1831146676005024376', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8431192634231799648', N'3685324712191740021', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8435538797966412299', N'7719009940699824773', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8436126166121754899', N'7301978007165354953', N'2446393712426238476', N'vda_control', N'How to react to incidents in accordance with their criticality 
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8440569080032412965', N'4037013385646814962', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8450556135619838082', N'7631906540230951320', N'2446393712426238476', N'vda_control', N'Testing the security of new products
', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8453274593121124288', N'568355512251269661', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8457736734601624234', N'1740714899683391276', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8459530185215619461', N'1753689860860628328', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8459929170767727806', N'3295128618706683746', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8460879576951730185', N'4710365557256897929', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8462225708688650913', N'6430832177588752293', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8472664042925113266', N'8637792722049321083', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8489356665991770890', N'7263176691532253207', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8493781072671846867', N'5470561549400885328', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8495584267047947392', N'2787922464528680733', N'2446393712426238476', N'vda_control', N'Instance that assigns or withdraws approved access rights
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8502551435269653437', N'5411079989568385727', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8508921122367357115', N'4409711832180280168', N'2446393712426238476', N'vda_control', N'Automatically checking all data transmitted via the central gateways (e.g. emails, Internet, third party networks) using malware protection software (including encrypted connections)
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8515238375542573571', N'6451081473101480568', N'2446393712426238476', N'vda_question', N'18.03 To what extent is the ISMS reviewed independently on a regular basis or in the course of significant changes?', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8528952785538235955', N'6778690051557666963', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8531548389126157377', N'4516609756518828403', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8531995496298363828', N'8952466254042938799', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8532613753999700289', N'0', N'2446393712426238476', N'vda_chapter', N'Chapter 16 - Information Security Incident Management', N'null', 12)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8542257862829689568', N'4369137836422182815', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8542346054178029486', N'7802308159384436141', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8543479060733869739', N'5237337735037276107', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8547344751624829524', N'4710365557256897929', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8550844779296176897', N'4991228226246365047', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8554457399652009965', N'5414281579345591235', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8564336897546994082', N'4958050508595838646', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8568166320873686499', N'218832212144243795', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8577407447203493371', N'1462625753231214594', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8580518418042931615', N'7802308159384436141', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8591873261189480806', N'2073217201601531037', N'2446393712426238476', N'vda_control', N'Security aspects in the software development life cycle
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8596001622870019703', N'7631906540230951320', N'2446393712426238476', N'vda_control', N'Taking security requirements into account in change management
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8600637131492670473', N'7631906540230951320', N'2446393712426238476', N'vda_control', N'Applying engineering principles for secure system development
', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8607741720424726003', N'1935802179444259856', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8610289929990196451', N'5689751047852870156', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8614217399273210372', N'6038869103286767587', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8626676484264314191', N'4287982503156563670', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8637792722049321083', N'7717125713058643462', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8641901760939667987', N'9181822893540030566', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'864361214830988020', N'7717125713058643462', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8645339404352702874', N'132623902904041965', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8646628756689172577', N'3286773150959026682', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8657428221751507721', N'6927670239089046210', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8658684504136372082', N'58123075627302365', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
GO
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8678323558403062275', N'5943740905399929573', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8695189533077028936', N'9174752761940458137', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8705199034629078297', N'684420790478588700', N'2446393712426238476', N'vda_question', N'17.01 To what extent are information security requirements (including the redundancy of corresponding facilities) and the continuation of the ISMS in the event of a crisis defined, implemented, checked and evaluated?', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8706399666608161684', N'9171023884945702168', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8707931463623358851', N'2218834439314321869', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8720229658169855941', N'323552400698329885', N'2446393712426238476', N'vda_control', N'Implementing the segmented network
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8720843674172243532', N'1564221234243876582', N'2446393712426238476', N'vda_control', N'Storage
', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8728120512153432674', N'3035577444191127728', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8732691447361941812', N'4219216699790635890', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'873741839748055099', N'8318474133686956399', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8739921451275566747', N'568355512251269661', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8741783975823230998', N'5237337735037276107', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8746970286644216678', N'4710365557256897929', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8748258142943200722', N'1831146676005024376', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8750458993125340670', N'8637792722049321083', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8756517358198017726', N'5349977230501722156', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8757819482392213022', N'219568277629809980', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8773693760738734197', N'3423769354751789060', N'2446393712426238476', N'vda_control', N'Planning and implementing measures to prevent similar security incidents from occurring again
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8788693421686997783', N'5470561549400885328', N'2446393712426238476', N'vda_control', N'Areas of overlap between responsibilities are managed.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8792647397748030464', N'4670963482615827542', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8792963942704985106', N'2029088265548709302', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8794261538056941841', N'6286910819413609355', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8806408624788095886', N'1831146676005024376', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8808198906763392071', N'3962911900284439090', N'2446393712426238476', N'vda_control', N'Describing the way that violations against the security-relevant provisions in employment contracts are dealt with', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8809647168203503022', N'1703662072763625572', N'2446393712426238476', N'vda_control', N'Defining a standard method for analyzing risks when awarding contracts to third parties
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8811678658303278984', N'6436046772422591067', N'2446393712426238476', N'vda_control', N'The process is planned, monitored and adjusted where necessary.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8823722634654928518', N'934090292783788281', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8827158169314508339', N'2987702993627691382', N'2446393712426238476', N'vda_control', N'Areas of responsibility and authorization are defined and allocated; all parties involved are aware of these areas.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8835620408431298165', N'7263176691532253207', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8837402218403941045', N'1161551723938464109', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8839309443616390620', N'1161551723938464109', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'884023931926001167', N'7641759018810820108', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8840334893425537852', N'7385165034763734230', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8842772616153576933', N'4037699994964180525', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8845613823622561136', N'218832212144243795', N'2446393712426238476', N'vda_control', N'Suitable methods are defined for monitoring the process.', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8846539809005485526', N'1120752410112341728', N'2446393712426238476', N'vda_control', N'Documentation', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8852500088393413628', N'4037013385646814962', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'885382803833309282', N'6312936561959258669', N'2446393712426238476', N'vda_control', N'Checking the adequacy of the ISMS on a regular basis', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8855994117462575488', N'3658960598793043245', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8871363665685295577', N'8884472200872412517', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8871804500623079021', N'4568910555719748584', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8872331120148462703', N'628959589561841643', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8879532727600696976', N'9181822893540030566', N'2446393712426238476', N'vda_control', N'Staffs are equipped with the skills and expertise needed.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8879864909578454783', N'2302879250113970355', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8884472200872412517', N'1388216959422713235', N'2446393712426238476', N'vda_level', N'Level 2', NULL, 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8893647185275994820', N'4735730414357559401', N'2446393712426238476', N'vda_control', N'Defining procedures for managing networks
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'890628486410358728', N'9171023884945702168', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8907988853663383293', N'3249676086441233552', N'2446393712426238476', N'vda_control', N'Immediately withdrawing a user''s authorization rights should the employee change to another department or leave the company
', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8920120925801856435', N'4446937691758113903', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8931262563402955958', N'5237337735037276107', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8935735083593544267', N'298494701158774411', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8952466254042938799', N'4379493647776630466', N'2446393712426238476', N'vda_question', N'01.01 To what extent is an ISMS approved by the Top Management and is the scope documented?', N'由最高管理层批准的信息安全管理体系及备有证明文件的范围到何种程度？', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8954940806932840153', N'8852500088393413628', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8961961718151756162', N'308846590865723092', N'2446393712426238476', N'vda_control', N'Legal requirements such as retention periods and the protection of privacy rights
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8964463358298179852', N'1312687200770504351', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8972341249819494190', N'9002103012846028043', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8977444457237333219', N'8852500088393413628', N'2446393712426238476', N'vda_control', N'The process is linked to and overlaps with other processes in the company.', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8987038187647880613', N'414534463031886028', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'8989018915250159202', N'7020990952976333939', N'2446393712426238476', N'vda_control', N'Assessing risks using a risk analysis (see Control 1.3)
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9002103012846028043', N'3403666888959149064', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9013521052023372907', N'3962911900284439090', N'2446393712426238476', N'vda_control', N'Concluding separate non-disclosure-agreements (NDA) for the case that employees are required to handle confidential information', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9017354328426462256', N'7156568234970597231', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9021558642274419982', N'2356932601335693156', N'2446393712426238476', N'vda_question', N'15.02 To what extent are the services performed by suppliers/sub-contractors monitored, reviewed and audited on a regular basis?', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9023427902968123335', N'4991228226246365047', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9024927753039886488', N'6929410738603864518', N'2446393712426238476', N'vda_control', N'Applying formal approval processes
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9033819756319886915', N'303240869343872635', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9035893183238029015', N'9181822893540030566', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9036246658488319938', N'4367432358476952', N'2446393712426238476', N'vda_control', N'Email
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9040382415428893494', N'5677686945274837279', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9103600579170056012', N'2592532313255097542', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9107445391898528637', N'6436046772422591067', N'2446393712426238476', N'vda_control', N'Any necessary resources are identified and made available.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9120457304230350718', N'6259070028902449894', N'2446393712426238476', N'vda_control', N'Conducting a risk evaluation at an early stage in projects using this approach as a basis', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9125181810748441507', N'3295128618706683746', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9129485449027499782', N'2218834439314321869', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9130693559154067300', N'8318213536775425161', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9144390454042772440', N'414534463031886028', N'2446393712426238476', N'vda_control', N'Measures are applied to ensure the required infrastructure and working environment is in place.', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9166391447107517084', N'8657428221751507721', N'2446393712426238476', N'vda_control', N'The objectives of the process are defined and published with those involved.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9171023884945702168', N'5408953602222963723', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9171863351574182845', N'5689751047852870156', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9173590026127690039', N'1388216959422713235', N'2446393712426238476', N'vda_level', N'Level 1', NULL, 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9174752761940458137', N'335855503912027512', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9181822893540030566', N'7819941519113566272', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9186683684654892676', N'2912344849604784380', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9187155096413977540', N'1716415031914246884', N'2446393712426238476', N'vda_control', N'The intended work results plus the methods for documentation and monitoring are defined.', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9191154470183877042', N'4991228226246365047', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9200543601937238858', N'7641759018810820108', N'2446393712426238476', N'vda_control', N'The roles, skills and authorizations needed for the process are defined.', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'92030432850851825', N'7705788632137289142', N'2446393712426238476', N'vda_control', N'Drawing up information security guidelines', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9219224592286268464', N'3286773150959026682', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'9221940178986843039', N'2786020278950278081', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'924529105985555462', N'1740714899683391276', N'2446393712426238476', N'vda_control', N'Suitable data is recorded for analyzing effectiveness.', N'null', 9)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'929070055608633463', N'7660761452469075933', N'2446393712426238476', N'vda_control', N'Network security services (e.g. firewall, IDS/IPS)
', N'null', 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'932205812096283051', N'8358859035717880984', N'2446393712426238476', N'vda_control', N'Using strong authentication methods when accessing services from public networks 
', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'932513364407241014', N'77565357065325982', N'2446393712426238476', N'vda_control', N'Double floors
', N'null', 5)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'934090292783788281', N'4287982503156563670', N'2446393712426238476', N'vda_level', N'Level 3', NULL, 2)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'93749532653604804', N'5868323546433342812', N'2446393712426238476', N'vda_control', N'The work results are reviewed and adjusted.', N'null', 7)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'939906536410467942', N'7732212412860708035', N'2446393712426238476', N'vda_level', N'Level 5', NULL, 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'953088673937666527', N'7797525598597170939', N'2446393712426238476', N'vda_control', N'Physical Checks - "Office Premises"
', N'null', 4)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'956677221217816208', N'4111581492639674532', N'2446393712426238476', N'vda_control', N' Identifying requirements for the IS required by legal and contractual provisions, e.g.
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'957353038586335063', N'9173590026127690039', N'2446393712426238476', N'vda_control', N'Making sure that employees are aware about roles and responsibilities related to information security within the company', N'null', 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'967628468857322309', N'6339331164620370059', N'2446393712426238476', N'vda_control', N'Everything needed to perform the defined process is made available.', N'null', 5)
GO
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'970219264432555085', N'8515238375542573571', N'2446393712426238476', N'vda_level', N'Level 4', NULL, 3)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'975919892775651036', N'1292927790196177105', N'2446393712426238476', N'vda_control', N'Identifying requirements related to protecting the information assets affected 
', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'978371417035094331', N'4081845364262914993', N'2446393712426238476', N'vda_control', N'Work results are determined, documented and checked. ', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'978922111801443272', N'7263176691532253207', N'2446393712426238476', N'vda_control', N'The roles, responsibilities and authorization related to performing the process are assigned.', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'982367669578452551', N'8004111779270247061', N'2446393712426238476', N'vda_control', N'Version
', N'null', 1)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'982611793187654058', N'5943740905399929573', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'983899485271473016', N'568355512251269661', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'984896932059265885', N'5177630288575249506', N'2446393712426238476', N'vda_control', N'A standard process is defined.', N'null', 0)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'99498862889615829', N'4564445657832246851', N'2446393712426238476', N'vda_control', N'Reporting audit results to the management
', N'null', 6)
INSERT [dbo].[standard_libary_node] ([id], [parent_id], [standard_id], [type], [name], [description], [node_position]) VALUES (N'995870189411549133', N'628959589561841643', N'2446393712426238476', N'vda_control', N'The working conditions and infrastructure needed to carry out the process are made available, managed and maintained.', N'null', 8)
INSERT [dbo].[user] ([id], [username], [password], [nick_name], [register_date], [dept_id], [phone], [email], [status]) VALUES (N'1', N'admin', N'a3175a452c7a8fea80c62a198a40f6c9', N'系统管理员', CAST(N'2017-06-23T14:24:23.0000000' AS DateTime2), N'1', N'111111', N'abc@ds.com', N'1')
INSERT [dbo].[user_role] ([user_id], [role_id]) VALUES (N'1', N'964f8bb2cd8c4a469b8d761d9ac58cf2')
ALTER TABLE [dbo].[applicability_libary] ADD  DEFAULT (N'') FOR [id]
GO
ALTER TABLE [dbo].[applicability_libary] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[applicability_libary] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[applicability_libary] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[applicability_libary] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [dbo].[applicability_libary] ADD  DEFAULT (NULL) FOR [standard_id]
GO
ALTER TABLE [dbo].[attachment] ADD  DEFAULT (N'') FOR [id]
GO
ALTER TABLE [dbo].[attachment] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[attachment] ADD  DEFAULT (NULL) FOR [size]
GO
ALTER TABLE [dbo].[attachment] ADD  DEFAULT (NULL) FOR [biz_id]
GO
ALTER TABLE [dbo].[attachment] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [dbo].[attachment] ADD  DEFAULT (NULL) FOR [path]
GO
ALTER TABLE [dbo].[dept] ADD  DEFAULT (NULL) FOR [parent]
GO
ALTER TABLE [dbo].[dept] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[dept] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[dept] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[evaluation_libary] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[evaluation_libary] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[evaluation_libary] ADD  DEFAULT (NULL) FOR [status]
GO
ALTER TABLE [dbo].[evaluation_libary] ADD  DEFAULT (NULL) FOR [applicability_id]
GO
ALTER TABLE [dbo].[evaluation_libary] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [dbo].[evaluation_libary] ADD  DEFAULT (NULL) FOR [evaluation_type]
GO
ALTER TABLE [dbo].[evaluation_libary] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[evaluation_libary] ADD  DEFAULT (NULL) FOR [creator]
GO
ALTER TABLE [dbo].[evaluation_libary_node] ADD  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[evaluation_libary_node] ADD  DEFAULT (NULL) FOR [evaluation_id]
GO
ALTER TABLE [dbo].[evaluation_libary_node] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[evaluation_libary_node] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[evaluation_libary_node] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[evaluation_libary_node] ADD  DEFAULT (NULL) FOR [target_value]
GO
ALTER TABLE [dbo].[evaluation_libary_node] ADD  DEFAULT (NULL) FOR [assign_user]
GO
ALTER TABLE [dbo].[evaluation_libary_node] ADD  DEFAULT (NULL) FOR [status]
GO
ALTER TABLE [dbo].[evaluation_libary_node] ADD  DEFAULT (NULL) FOR [severity_level]
GO
ALTER TABLE [dbo].[evaluation_libary_node] ADD  DEFAULT (NULL) FOR [level_is_approved]
GO
ALTER TABLE [dbo].[evaluation_libary_node] ADD  DEFAULT (NULL) FOR [compliance_level]
GO
ALTER TABLE [dbo].[evaluation_libary_node] ADD  DEFAULT ((0)) FOR [node_position]
GO
ALTER TABLE [dbo].[evaluation_libary_node] ADD  DEFAULT (NULL) FOR [applicability_node_id]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [module]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [parent]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT ((0)) FOR [position]
GO
ALTER TABLE [dbo].[menu_resource] ADD  DEFAULT (NULL) FOR [menu_id]
GO
ALTER TABLE [dbo].[menu_resource] ADD  DEFAULT (NULL) FOR [url]
GO
ALTER TABLE [dbo].[role] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[role] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[role] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[role_menu] ADD  DEFAULT (NULL) FOR [role_id]
GO
ALTER TABLE [dbo].[role_menu] ADD  DEFAULT (NULL) FOR [menu_id]
GO
ALTER TABLE [dbo].[standard_libary] ADD  DEFAULT (N'') FOR [id]
GO
ALTER TABLE [dbo].[standard_libary] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[standard_libary] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[standard_libary] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[standard_libary] ADD  DEFAULT (NULL) FOR [creat_time]
GO
ALTER TABLE [dbo].[standard_libary_node] ADD  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[standard_libary_node] ADD  DEFAULT (NULL) FOR [standard_id]
GO
ALTER TABLE [dbo].[standard_libary_node] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[standard_libary_node] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[standard_libary_node] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[standard_libary_node] ADD  DEFAULT ((0)) FOR [node_position]
GO
ALTER TABLE [dbo].[task_log] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[task_log] ADD  DEFAULT (NULL) FOR [time]
GO
ALTER TABLE [dbo].[task_log] ADD  DEFAULT (NULL) FOR [user]
GO
ALTER TABLE [dbo].[task_log] ADD  DEFAULT (NULL) FOR [dept]
GO
ALTER TABLE [dbo].[task_log] ADD  DEFAULT (NULL) FOR [question]
GO
ALTER TABLE [dbo].[task_log] ADD  DEFAULT (NULL) FOR [question_severity]
GO
ALTER TABLE [dbo].[task_log] ADD  DEFAULT (NULL) FOR [question_status]
GO
ALTER TABLE [dbo].[task_log] ADD  DEFAULT (NULL) FOR [evaluation_id]
GO
ALTER TABLE [dbo].[task_log] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[task_log] ADD  DEFAULT (NULL) FOR [chapter]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [nick_name]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [dept_id]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [status]
GO
ALTER TABLE [dbo].[user_role] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[user_role] ADD  DEFAULT (NULL) FOR [role_id]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'app.applicability_libary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'applicability_libary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'app.attachment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'attachment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'app.dept' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dept'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'app.evaluation_libary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'evaluation_libary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'app.evaluation_libary_node' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'evaluation_libary_node'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'app.menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'menu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'app.menu_resource' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'menu_resource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'app.role' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'app.role_menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'role_menu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'app.standard_libary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'standard_libary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'app.standard_libary_node' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'standard_libary_node'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'app.task_log' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'task_log'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'app.`user`' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'app.user_role' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user_role'
GO
