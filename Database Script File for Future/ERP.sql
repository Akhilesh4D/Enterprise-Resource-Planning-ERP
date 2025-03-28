USE [ERP]
GO
/****** Object:  Table [dbo].[Assets]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AssetName] [varchar](100) NULL,
	[PurchaseDate] [date] NULL,
	[Cost] [decimal](10, 2) NULL,
	[AssignedTo] [int] NULL,
	[Status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[AttendanceId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[CheckIn] [datetime] NOT NULL,
	[CheckOut] [datetime] NULL,
	[TotalHours] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[AttendanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditLogs]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditLogs](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Action] [nvarchar](255) NOT NULL,
	[Timestamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](100) NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[Designation] [nvarchar](100) NOT NULL,
	[Salary] [decimal](18, 2) NOT NULL,
	[HireDate] [datetime] NULL,
	[Status] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Expenses]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expenses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [varchar](50) NULL,
	[Amount] [decimal](10, 2) NULL,
	[ExpenseDate] [date] NULL,
	[Description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientName] [varchar](100) NULL,
	[InvoiceDate] [date] NULL,
	[DueDate] [date] NULL,
	[Amount] [decimal](10, 2) NULL,
	[Status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LeaveRequests]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveRequests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[LeaveType] [varchar](50) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Status] [varchar](20) NULL,
	[Comments] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meetings]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meetings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MeetingTitle] [varchar](100) NULL,
	[MeetingDate] [datetime] NULL,
	[OrganizedBy] [int] NULL,
	[Status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[IsRead] [bit] NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [int] NULL,
	[PaymentDate] [date] NULL,
	[AmountPaid] [decimal](10, 2) NULL,
	[PaymentMethod] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payroll]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payroll](
	[PayrollId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[Salary] [decimal](18, 2) NOT NULL,
	[Deductions] [decimal](18, 2) NULL,
	[NetSalary]  AS ([Salary]-[Deductions]),
	[PaymentDate] [date] NULL,
	[Status] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[PayrollId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerformanceReviews]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerformanceReviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[ReviewDate] [date] NULL,
	[Rating] [int] NULL,
	[Comments] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[PermissionId] [int] IDENTITY(1,1) NOT NULL,
	[PermissionName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[ProjectId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[Status] [nvarchar](20) NULL,
	[CreatedBy] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[PermissionId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[TaskId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[AssignedTo] [int] NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [nvarchar](20) NULL,
	[DueDate] [date] NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainingSessions]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingSessions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TrainingTitle] [varchar](100) NULL,
	[Trainer] [varchar](100) NULL,
	[TrainingDate] [date] NULL,
	[DurationHours] [int] NULL,
	[Status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/20/2025 5:14:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[PasswordHash] [nvarchar](255) NOT NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[ProfilePicture] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Assets] ON 

INSERT [dbo].[Assets] ([Id], [AssetName], [PurchaseDate], [Cost], [AssignedTo], [Status]) VALUES (1, N'Laptop - Dell XPS', CAST(N'2024-01-05' AS Date), CAST(1500.00 AS Decimal(10, 2)), 3, N'In Use')
INSERT [dbo].[Assets] ([Id], [AssetName], [PurchaseDate], [Cost], [AssignedTo], [Status]) VALUES (2, N'Projector', CAST(N'2023-11-15' AS Date), CAST(1200.00 AS Decimal(10, 2)), NULL, N'Available')
INSERT [dbo].[Assets] ([Id], [AssetName], [PurchaseDate], [Cost], [AssignedTo], [Status]) VALUES (3, N'Office Chairs', CAST(N'2023-12-20' AS Date), CAST(200.00 AS Decimal(10, 2)), NULL, N'Available')
INSERT [dbo].[Assets] ([Id], [AssetName], [PurchaseDate], [Cost], [AssignedTo], [Status]) VALUES (4, N'MacBook Pro', CAST(N'2024-02-01' AS Date), CAST(2200.00 AS Decimal(10, 2)), 4, N'In Use')
INSERT [dbo].[Assets] ([Id], [AssetName], [PurchaseDate], [Cost], [AssignedTo], [Status]) VALUES (5, N'Workstation PC', CAST(N'2023-10-10' AS Date), CAST(1800.00 AS Decimal(10, 2)), 5, N'In Use')
SET IDENTITY_INSERT [dbo].[Assets] OFF
GO
SET IDENTITY_INSERT [dbo].[Attendance] ON 

INSERT [dbo].[Attendance] ([AttendanceId], [EmployeeId], [CheckIn], [CheckOut], [TotalHours]) VALUES (1, 1, CAST(N'2024-03-20T09:00:00.000' AS DateTime), CAST(N'2024-03-20T18:00:00.000' AS DateTime), CAST(9.00 AS Decimal(5, 2)))
INSERT [dbo].[Attendance] ([AttendanceId], [EmployeeId], [CheckIn], [CheckOut], [TotalHours]) VALUES (2, 2, CAST(N'2024-03-20T08:30:00.000' AS DateTime), CAST(N'2024-03-20T17:30:00.000' AS DateTime), CAST(9.00 AS Decimal(5, 2)))
INSERT [dbo].[Attendance] ([AttendanceId], [EmployeeId], [CheckIn], [CheckOut], [TotalHours]) VALUES (3, 3, CAST(N'2024-03-20T09:15:00.000' AS DateTime), CAST(N'2024-03-20T18:15:00.000' AS DateTime), CAST(9.00 AS Decimal(5, 2)))
INSERT [dbo].[Attendance] ([AttendanceId], [EmployeeId], [CheckIn], [CheckOut], [TotalHours]) VALUES (4, 4, CAST(N'2024-03-20T10:00:00.000' AS DateTime), CAST(N'2024-03-20T19:00:00.000' AS DateTime), CAST(9.00 AS Decimal(5, 2)))
INSERT [dbo].[Attendance] ([AttendanceId], [EmployeeId], [CheckIn], [CheckOut], [TotalHours]) VALUES (5, 5, CAST(N'2024-03-20T08:45:00.000' AS DateTime), CAST(N'2024-03-20T17:45:00.000' AS DateTime), CAST(9.00 AS Decimal(5, 2)))
INSERT [dbo].[Attendance] ([AttendanceId], [EmployeeId], [CheckIn], [CheckOut], [TotalHours]) VALUES (6, 6, CAST(N'2024-03-20T08:50:00.000' AS DateTime), CAST(N'2024-03-20T17:50:00.000' AS DateTime), CAST(9.00 AS Decimal(5, 2)))
INSERT [dbo].[Attendance] ([AttendanceId], [EmployeeId], [CheckIn], [CheckOut], [TotalHours]) VALUES (7, 7, CAST(N'2024-03-20T09:05:00.000' AS DateTime), CAST(N'2024-03-20T18:05:00.000' AS DateTime), CAST(9.00 AS Decimal(5, 2)))
INSERT [dbo].[Attendance] ([AttendanceId], [EmployeeId], [CheckIn], [CheckOut], [TotalHours]) VALUES (8, 8, CAST(N'2024-03-20T09:20:00.000' AS DateTime), CAST(N'2024-03-20T18:20:00.000' AS DateTime), CAST(9.00 AS Decimal(5, 2)))
INSERT [dbo].[Attendance] ([AttendanceId], [EmployeeId], [CheckIn], [CheckOut], [TotalHours]) VALUES (9, 9, CAST(N'2024-03-20T10:15:00.000' AS DateTime), CAST(N'2024-03-20T19:15:00.000' AS DateTime), CAST(9.00 AS Decimal(5, 2)))
INSERT [dbo].[Attendance] ([AttendanceId], [EmployeeId], [CheckIn], [CheckOut], [TotalHours]) VALUES (10, 10, CAST(N'2024-03-20T08:30:00.000' AS DateTime), CAST(N'2024-03-20T17:30:00.000' AS DateTime), CAST(9.00 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[Attendance] OFF
GO
SET IDENTITY_INSERT [dbo].[AuditLogs] ON 

INSERT [dbo].[AuditLogs] ([LogId], [UserId], [Action], [Timestamp]) VALUES (1, 1, N'Logged in', CAST(N'2024-03-20T09:00:00.000' AS DateTime))
INSERT [dbo].[AuditLogs] ([LogId], [UserId], [Action], [Timestamp]) VALUES (2, 2, N'Updated payroll records', CAST(N'2024-03-20T10:15:00.000' AS DateTime))
INSERT [dbo].[AuditLogs] ([LogId], [UserId], [Action], [Timestamp]) VALUES (3, 3, N'Assigned a new task', CAST(N'2024-03-20T11:45:00.000' AS DateTime))
INSERT [dbo].[AuditLogs] ([LogId], [UserId], [Action], [Timestamp]) VALUES (4, 4, N'Approved leave request', CAST(N'2024-03-20T12:30:00.000' AS DateTime))
INSERT [dbo].[AuditLogs] ([LogId], [UserId], [Action], [Timestamp]) VALUES (5, 5, N'Marked attendance', CAST(N'2024-03-20T08:45:00.000' AS DateTime))
INSERT [dbo].[AuditLogs] ([LogId], [UserId], [Action], [Timestamp]) VALUES (6, 6, N'Logged in', CAST(N'2024-03-20T09:05:00.000' AS DateTime))
INSERT [dbo].[AuditLogs] ([LogId], [UserId], [Action], [Timestamp]) VALUES (7, 7, N'Generated payroll report', CAST(N'2024-03-20T10:30:00.000' AS DateTime))
INSERT [dbo].[AuditLogs] ([LogId], [UserId], [Action], [Timestamp]) VALUES (8, 8, N'Updated task details', CAST(N'2024-03-20T11:50:00.000' AS DateTime))
INSERT [dbo].[AuditLogs] ([LogId], [UserId], [Action], [Timestamp]) VALUES (9, 9, N'Requested leave approval', CAST(N'2024-03-20T12:40:00.000' AS DateTime))
INSERT [dbo].[AuditLogs] ([LogId], [UserId], [Action], [Timestamp]) VALUES (10, 10, N'Checked attendance records', CAST(N'2024-03-20T13:20:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[AuditLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName], [CreatedAt]) VALUES (1, N'Human Resources', CAST(N'2025-03-20T14:44:59.537' AS DateTime))
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName], [CreatedAt]) VALUES (2, N'Finance', CAST(N'2025-03-20T14:44:59.537' AS DateTime))
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName], [CreatedAt]) VALUES (3, N'Engineering', CAST(N'2025-03-20T14:44:59.537' AS DateTime))
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName], [CreatedAt]) VALUES (4, N'Sales', CAST(N'2025-03-20T14:44:59.537' AS DateTime))
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName], [CreatedAt]) VALUES (5, N'Customer Support', CAST(N'2025-03-20T14:44:59.537' AS DateTime))
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName], [CreatedAt]) VALUES (6, N'IT Support', CAST(N'2025-03-20T14:48:56.257' AS DateTime))
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName], [CreatedAt]) VALUES (7, N'Marketing', CAST(N'2025-03-20T14:48:56.257' AS DateTime))
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName], [CreatedAt]) VALUES (8, N'Legal', CAST(N'2025-03-20T14:48:56.257' AS DateTime))
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName], [CreatedAt]) VALUES (9, N'Operations', CAST(N'2025-03-20T14:48:56.257' AS DateTime))
INSERT [dbo].[Departments] ([DepartmentId], [DepartmentName], [CreatedAt]) VALUES (10, N'Procurement', CAST(N'2025-03-20T14:48:56.257' AS DateTime))
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeId], [UserId], [DepartmentId], [Designation], [Salary], [HireDate], [Status]) VALUES (1, 1, 1, N'HR Manager', CAST(60000.00 AS Decimal(18, 2)), CAST(N'2020-01-15T00:00:00.000' AS DateTime), N'Active')
INSERT [dbo].[Employees] ([EmployeeId], [UserId], [DepartmentId], [Designation], [Salary], [HireDate], [Status]) VALUES (2, 2, 2, N'Finance Manager', CAST(75000.00 AS Decimal(18, 2)), CAST(N'2019-07-20T00:00:00.000' AS DateTime), N'Active')
INSERT [dbo].[Employees] ([EmployeeId], [UserId], [DepartmentId], [Designation], [Salary], [HireDate], [Status]) VALUES (3, 3, 3, N'Software Engineer', CAST(55000.00 AS Decimal(18, 2)), CAST(N'2021-05-10T00:00:00.000' AS DateTime), N'Active')
INSERT [dbo].[Employees] ([EmployeeId], [UserId], [DepartmentId], [Designation], [Salary], [HireDate], [Status]) VALUES (4, 4, 4, N'Sales Executive', CAST(50000.00 AS Decimal(18, 2)), CAST(N'2018-11-30T00:00:00.000' AS DateTime), N'Active')
INSERT [dbo].[Employees] ([EmployeeId], [UserId], [DepartmentId], [Designation], [Salary], [HireDate], [Status]) VALUES (5, 5, 5, N'Customer Support Rep', CAST(45000.00 AS Decimal(18, 2)), CAST(N'2022-03-25T00:00:00.000' AS DateTime), N'Active')
INSERT [dbo].[Employees] ([EmployeeId], [UserId], [DepartmentId], [Designation], [Salary], [HireDate], [Status]) VALUES (6, 6, 1, N'HR Assistant', CAST(48000.00 AS Decimal(18, 2)), CAST(N'2023-06-01T00:00:00.000' AS DateTime), N'Active')
INSERT [dbo].[Employees] ([EmployeeId], [UserId], [DepartmentId], [Designation], [Salary], [HireDate], [Status]) VALUES (7, 7, 2, N'Accountant', CAST(53000.00 AS Decimal(18, 2)), CAST(N'2022-09-10T00:00:00.000' AS DateTime), N'Active')
INSERT [dbo].[Employees] ([EmployeeId], [UserId], [DepartmentId], [Designation], [Salary], [HireDate], [Status]) VALUES (8, 8, 3, N'Software Developer', CAST(62000.00 AS Decimal(18, 2)), CAST(N'2021-12-15T00:00:00.000' AS DateTime), N'Active')
INSERT [dbo].[Employees] ([EmployeeId], [UserId], [DepartmentId], [Designation], [Salary], [HireDate], [Status]) VALUES (9, 9, 4, N'Marketing Executive', CAST(55000.00 AS Decimal(18, 2)), CAST(N'2023-02-20T00:00:00.000' AS DateTime), N'Active')
INSERT [dbo].[Employees] ([EmployeeId], [UserId], [DepartmentId], [Designation], [Salary], [HireDate], [Status]) VALUES (10, 10, 5, N'Operations Manager', CAST(70000.00 AS Decimal(18, 2)), CAST(N'2019-08-30T00:00:00.000' AS DateTime), N'Active')
INSERT [dbo].[Employees] ([EmployeeId], [UserId], [DepartmentId], [Designation], [Salary], [HireDate], [Status]) VALUES (11, 11, 1, N'Senior Software Developer', CAST(500000.00 AS Decimal(18, 2)), CAST(N'2025-03-20T11:28:09.357' AS DateTime), N'Active')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Expenses] ON 

INSERT [dbo].[Expenses] ([Id], [Category], [Amount], [ExpenseDate], [Description]) VALUES (1, N'Office Supplies', CAST(500.00 AS Decimal(10, 2)), CAST(N'2024-03-10' AS Date), N'Purchased printer ink and paper')
INSERT [dbo].[Expenses] ([Id], [Category], [Amount], [ExpenseDate], [Description]) VALUES (2, N'Travel', CAST(1200.00 AS Decimal(10, 2)), CAST(N'2024-03-15' AS Date), N'Business trip expenses')
INSERT [dbo].[Expenses] ([Id], [Category], [Amount], [ExpenseDate], [Description]) VALUES (3, N'Software Licenses', CAST(3000.00 AS Decimal(10, 2)), CAST(N'2024-03-05' AS Date), N'Annual software renewal')
INSERT [dbo].[Expenses] ([Id], [Category], [Amount], [ExpenseDate], [Description]) VALUES (4, N'Marketing', CAST(1500.00 AS Decimal(10, 2)), CAST(N'2024-03-20' AS Date), N'Social media ads campaign')
INSERT [dbo].[Expenses] ([Id], [Category], [Amount], [ExpenseDate], [Description]) VALUES (5, N'Utilities', CAST(800.00 AS Decimal(10, 2)), CAST(N'2024-03-18' AS Date), N'Electricity and internet bills')
SET IDENTITY_INSERT [dbo].[Expenses] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoices] ON 

INSERT [dbo].[Invoices] ([Id], [ClientName], [InvoiceDate], [DueDate], [Amount], [Status]) VALUES (1, N'ABC Corp', CAST(N'2024-03-01' AS Date), CAST(N'2024-03-31' AS Date), CAST(5000.00 AS Decimal(10, 2)), N'Paid')
INSERT [dbo].[Invoices] ([Id], [ClientName], [InvoiceDate], [DueDate], [Amount], [Status]) VALUES (2, N'XYZ Ltd', CAST(N'2024-03-05' AS Date), CAST(N'2024-04-05' AS Date), CAST(12000.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Invoices] ([Id], [ClientName], [InvoiceDate], [DueDate], [Amount], [Status]) VALUES (3, N'Global Tech', CAST(N'2024-02-15' AS Date), CAST(N'2024-03-15' AS Date), CAST(8000.00 AS Decimal(10, 2)), N'Overdue')
INSERT [dbo].[Invoices] ([Id], [ClientName], [InvoiceDate], [DueDate], [Amount], [Status]) VALUES (4, N'Innovate IT', CAST(N'2024-03-10' AS Date), CAST(N'2024-04-10' AS Date), CAST(15000.00 AS Decimal(10, 2)), N'Paid')
INSERT [dbo].[Invoices] ([Id], [ClientName], [InvoiceDate], [DueDate], [Amount], [Status]) VALUES (5, N'Mega Solutions', CAST(N'2024-03-20' AS Date), CAST(N'2024-04-20' AS Date), CAST(11000.00 AS Decimal(10, 2)), N'Pending')
SET IDENTITY_INSERT [dbo].[Invoices] OFF
GO
SET IDENTITY_INSERT [dbo].[LeaveRequests] ON 

INSERT [dbo].[LeaveRequests] ([Id], [EmployeeId], [LeaveType], [StartDate], [EndDate], [Status], [Comments]) VALUES (1, 1, N'Sick Leave', CAST(N'2024-04-01' AS Date), CAST(N'2024-04-03' AS Date), N'Approved', N'Medical emergency')
INSERT [dbo].[LeaveRequests] ([Id], [EmployeeId], [LeaveType], [StartDate], [EndDate], [Status], [Comments]) VALUES (2, 2, N'Annual Leave', CAST(N'2024-05-15' AS Date), CAST(N'2024-05-25' AS Date), N'Pending', N'Vacation')
INSERT [dbo].[LeaveRequests] ([Id], [EmployeeId], [LeaveType], [StartDate], [EndDate], [Status], [Comments]) VALUES (3, 3, N'Work From Home', CAST(N'2024-03-25' AS Date), CAST(N'2024-03-26' AS Date), N'Approved', N'WFH approved')
INSERT [dbo].[LeaveRequests] ([Id], [EmployeeId], [LeaveType], [StartDate], [EndDate], [Status], [Comments]) VALUES (4, 4, N'Maternity Leave', CAST(N'2024-06-01' AS Date), CAST(N'2024-09-01' AS Date), N'Pending', N'Pending HR approval')
INSERT [dbo].[LeaveRequests] ([Id], [EmployeeId], [LeaveType], [StartDate], [EndDate], [Status], [Comments]) VALUES (5, 5, N'Paternity Leave', CAST(N'2024-04-10' AS Date), CAST(N'2024-04-20' AS Date), N'Approved', N'Newborn baby care')
SET IDENTITY_INSERT [dbo].[LeaveRequests] OFF
GO
SET IDENTITY_INSERT [dbo].[Meetings] ON 

INSERT [dbo].[Meetings] ([Id], [MeetingTitle], [MeetingDate], [OrganizedBy], [Status]) VALUES (1, N'Project Kickoff', CAST(N'2024-03-22T10:00:00.000' AS DateTime), 1, N'Scheduled')
INSERT [dbo].[Meetings] ([Id], [MeetingTitle], [MeetingDate], [OrganizedBy], [Status]) VALUES (2, N'Quarterly Review', CAST(N'2024-04-05T14:00:00.000' AS DateTime), 2, N'Scheduled')
INSERT [dbo].[Meetings] ([Id], [MeetingTitle], [MeetingDate], [OrganizedBy], [Status]) VALUES (3, N'HR Policies Update', CAST(N'2024-04-10T11:00:00.000' AS DateTime), 3, N'Scheduled')
INSERT [dbo].[Meetings] ([Id], [MeetingTitle], [MeetingDate], [OrganizedBy], [Status]) VALUES (4, N'Sales Strategy', CAST(N'2024-03-25T15:00:00.000' AS DateTime), 4, N'Completed')
INSERT [dbo].[Meetings] ([Id], [MeetingTitle], [MeetingDate], [OrganizedBy], [Status]) VALUES (5, N'Tech Innovations', CAST(N'2024-03-28T13:00:00.000' AS DateTime), 5, N'Scheduled')
SET IDENTITY_INSERT [dbo].[Meetings] OFF
GO
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([NotificationId], [UserId], [Message], [IsRead], [CreatedAt]) VALUES (1, 1, N'Your payroll has been processed.', 0, CAST(N'2024-03-20T10:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [UserId], [Message], [IsRead], [CreatedAt]) VALUES (2, 2, N'A new task has been assigned to you.', 0, CAST(N'2024-03-20T11:30:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [UserId], [Message], [IsRead], [CreatedAt]) VALUES (3, 3, N'Project deadline approaching.', 1, CAST(N'2024-03-19T15:45:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [UserId], [Message], [IsRead], [CreatedAt]) VALUES (4, 4, N'Your attendance has been recorded.', 0, CAST(N'2024-03-20T08:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [UserId], [Message], [IsRead], [CreatedAt]) VALUES (5, 5, N'Your leave request has been approved.', 1, CAST(N'2024-03-19T14:20:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [UserId], [Message], [IsRead], [CreatedAt]) VALUES (6, 6, N'New HR report is available.', 0, CAST(N'2024-03-21T09:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [UserId], [Message], [IsRead], [CreatedAt]) VALUES (7, 7, N'Payroll processing started.', 0, CAST(N'2024-03-21T10:15:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [UserId], [Message], [IsRead], [CreatedAt]) VALUES (8, 8, N'Your task deadline is tomorrow.', 1, CAST(N'2024-03-20T15:45:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [UserId], [Message], [IsRead], [CreatedAt]) VALUES (9, 9, N'System maintenance scheduled for Sunday.', 0, CAST(N'2024-03-19T08:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [UserId], [Message], [IsRead], [CreatedAt]) VALUES (10, 10, N'Performance review meeting scheduled.', 1, CAST(N'2024-03-19T14:20:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([Id], [InvoiceId], [PaymentDate], [AmountPaid], [PaymentMethod]) VALUES (1, 1, CAST(N'2024-03-15' AS Date), CAST(5000.00 AS Decimal(10, 2)), N'Bank Transfer')
INSERT [dbo].[Payments] ([Id], [InvoiceId], [PaymentDate], [AmountPaid], [PaymentMethod]) VALUES (2, 3, CAST(N'2024-03-16' AS Date), CAST(4000.00 AS Decimal(10, 2)), N'Credit Card')
INSERT [dbo].[Payments] ([Id], [InvoiceId], [PaymentDate], [AmountPaid], [PaymentMethod]) VALUES (3, 4, CAST(N'2024-03-20' AS Date), CAST(15000.00 AS Decimal(10, 2)), N'PayPal')
INSERT [dbo].[Payments] ([Id], [InvoiceId], [PaymentDate], [AmountPaid], [PaymentMethod]) VALUES (4, 5, CAST(N'2024-03-25' AS Date), CAST(11000.00 AS Decimal(10, 2)), N'Bank Transfer')
INSERT [dbo].[Payments] ([Id], [InvoiceId], [PaymentDate], [AmountPaid], [PaymentMethod]) VALUES (5, 2, CAST(N'2024-03-30' AS Date), CAST(6000.00 AS Decimal(10, 2)), N'Check')
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[Payroll] ON 

INSERT [dbo].[Payroll] ([PayrollId], [EmployeeId], [Salary], [Deductions], [PaymentDate], [Status]) VALUES (1, 1, CAST(60000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(N'2024-03-31' AS Date), N'Paid')
INSERT [dbo].[Payroll] ([PayrollId], [EmployeeId], [Salary], [Deductions], [PaymentDate], [Status]) VALUES (2, 2, CAST(75000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(N'2024-03-31' AS Date), N'Paid')
INSERT [dbo].[Payroll] ([PayrollId], [EmployeeId], [Salary], [Deductions], [PaymentDate], [Status]) VALUES (3, 3, CAST(55000.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), CAST(N'2024-03-31' AS Date), N'Pending')
INSERT [dbo].[Payroll] ([PayrollId], [EmployeeId], [Salary], [Deductions], [PaymentDate], [Status]) VALUES (4, 4, CAST(50000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(N'2024-03-31' AS Date), N'Pending')
INSERT [dbo].[Payroll] ([PayrollId], [EmployeeId], [Salary], [Deductions], [PaymentDate], [Status]) VALUES (5, 5, CAST(45000.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), CAST(N'2024-03-31' AS Date), N'Paid')
INSERT [dbo].[Payroll] ([PayrollId], [EmployeeId], [Salary], [Deductions], [PaymentDate], [Status]) VALUES (6, 6, CAST(48000.00 AS Decimal(18, 2)), CAST(1600.00 AS Decimal(18, 2)), CAST(N'2024-03-31' AS Date), N'Paid')
INSERT [dbo].[Payroll] ([PayrollId], [EmployeeId], [Salary], [Deductions], [PaymentDate], [Status]) VALUES (7, 7, CAST(53000.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), CAST(N'2024-03-31' AS Date), N'Paid')
INSERT [dbo].[Payroll] ([PayrollId], [EmployeeId], [Salary], [Deductions], [PaymentDate], [Status]) VALUES (8, 8, CAST(62000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(N'2024-03-31' AS Date), N'Pending')
INSERT [dbo].[Payroll] ([PayrollId], [EmployeeId], [Salary], [Deductions], [PaymentDate], [Status]) VALUES (9, 9, CAST(55000.00 AS Decimal(18, 2)), CAST(1700.00 AS Decimal(18, 2)), CAST(N'2024-03-31' AS Date), N'Pending')
INSERT [dbo].[Payroll] ([PayrollId], [EmployeeId], [Salary], [Deductions], [PaymentDate], [Status]) VALUES (10, 10, CAST(70000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(N'2024-03-31' AS Date), N'Paid')
SET IDENTITY_INSERT [dbo].[Payroll] OFF
GO
SET IDENTITY_INSERT [dbo].[PerformanceReviews] ON 

INSERT [dbo].[PerformanceReviews] ([Id], [EmployeeId], [ReviewDate], [Rating], [Comments]) VALUES (1, 1, CAST(N'2024-03-10' AS Date), 4, N'Good leadership skills')
INSERT [dbo].[PerformanceReviews] ([Id], [EmployeeId], [ReviewDate], [Rating], [Comments]) VALUES (2, 2, CAST(N'2024-03-12' AS Date), 3, N'Needs improvement in finance operations')
INSERT [dbo].[PerformanceReviews] ([Id], [EmployeeId], [ReviewDate], [Rating], [Comments]) VALUES (3, 3, CAST(N'2024-03-14' AS Date), 5, N'Outstanding performance in development')
INSERT [dbo].[PerformanceReviews] ([Id], [EmployeeId], [ReviewDate], [Rating], [Comments]) VALUES (4, 4, CAST(N'2024-03-16' AS Date), 4, N'Strong sales skills')
INSERT [dbo].[PerformanceReviews] ([Id], [EmployeeId], [ReviewDate], [Rating], [Comments]) VALUES (5, 5, CAST(N'2024-03-18' AS Date), 3, N'Average performance')
SET IDENTITY_INSERT [dbo].[PerformanceReviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Permissions] ON 

INSERT [dbo].[Permissions] ([PermissionId], [PermissionName], [Description]) VALUES (1, N'View Dashboard', N'Allows user to view dashboard')
INSERT [dbo].[Permissions] ([PermissionId], [PermissionName], [Description]) VALUES (2, N'Manage Employees', N'Allows user to add, edit, and remove employees')
INSERT [dbo].[Permissions] ([PermissionId], [PermissionName], [Description]) VALUES (3, N'Manage Projects', N'Allows user to create and manage projects')
INSERT [dbo].[Permissions] ([PermissionId], [PermissionName], [Description]) VALUES (4, N'Approve Leaves', N'Allows user to approve or reject leaves')
INSERT [dbo].[Permissions] ([PermissionId], [PermissionName], [Description]) VALUES (5, N'Process Payroll', N'Allows user to process employee payroll')
SET IDENTITY_INSERT [dbo].[Permissions] OFF
GO
SET IDENTITY_INSERT [dbo].[Projects] ON 

INSERT [dbo].[Projects] ([ProjectId], [ProjectName], [Description], [StartDate], [EndDate], [Status], [CreatedBy]) VALUES (1, N'ERP System', N'Building an internal ERP system', CAST(N'2024-01-01' AS Date), CAST(N'2024-06-30' AS Date), N'In Progress', 1)
INSERT [dbo].[Projects] ([ProjectId], [ProjectName], [Description], [StartDate], [EndDate], [Status], [CreatedBy]) VALUES (2, N'HR Portal', N'Developing a new HR management portal', CAST(N'2023-10-15' AS Date), CAST(N'2024-04-10' AS Date), N'Pending', 2)
INSERT [dbo].[Projects] ([ProjectId], [ProjectName], [Description], [StartDate], [EndDate], [Status], [CreatedBy]) VALUES (3, N'Sales CRM', N'A CRM for sales tracking', CAST(N'2024-02-01' AS Date), CAST(N'2024-07-01' AS Date), N'In Progress', 3)
INSERT [dbo].[Projects] ([ProjectId], [ProjectName], [Description], [StartDate], [EndDate], [Status], [CreatedBy]) VALUES (4, N'Payroll Automation', N'Automating payroll calculations', CAST(N'2023-12-05' AS Date), CAST(N'2024-05-20' AS Date), N'On Hold', 4)
INSERT [dbo].[Projects] ([ProjectId], [ProjectName], [Description], [StartDate], [EndDate], [Status], [CreatedBy]) VALUES (5, N'Support Ticketing', N'Building a customer support ticketing system', CAST(N'2024-03-01' AS Date), CAST(N'2024-08-01' AS Date), N'Pending', 5)
INSERT [dbo].[Projects] ([ProjectId], [ProjectName], [Description], [StartDate], [EndDate], [Status], [CreatedBy]) VALUES (6, N'HR Analytics', N'Analytics dashboard for HR', CAST(N'2024-02-01' AS Date), CAST(N'2024-07-01' AS Date), N'In Progress', 1)
INSERT [dbo].[Projects] ([ProjectId], [ProjectName], [Description], [StartDate], [EndDate], [Status], [CreatedBy]) VALUES (7, N'Payroll Integration', N'Automate payroll with bank API', CAST(N'2023-11-15' AS Date), CAST(N'2024-05-20' AS Date), N'Pending', 2)
INSERT [dbo].[Projects] ([ProjectId], [ProjectName], [Description], [StartDate], [EndDate], [Status], [CreatedBy]) VALUES (8, N'Inventory Management', N'Track and manage company inventory', CAST(N'2024-03-10' AS Date), CAST(N'2024-09-30' AS Date), N'On Hold', 3)
INSERT [dbo].[Projects] ([ProjectId], [ProjectName], [Description], [StartDate], [EndDate], [Status], [CreatedBy]) VALUES (9, N'Customer Relationship Management', N'Develop a CRM for sales', CAST(N'2024-01-05' AS Date), CAST(N'2024-06-30' AS Date), N'In Progress', 4)
INSERT [dbo].[Projects] ([ProjectId], [ProjectName], [Description], [StartDate], [EndDate], [Status], [CreatedBy]) VALUES (10, N'E-Learning Platform', N'Internal training system for employees', CAST(N'2024-04-01' AS Date), CAST(N'2024-10-01' AS Date), N'Pending', 5)
SET IDENTITY_INSERT [dbo].[Projects] OFF
GO
SET IDENTITY_INSERT [dbo].[RolePermissions] ON 

INSERT [dbo].[RolePermissions] ([Id], [RoleId], [PermissionId]) VALUES (1, 1, 1)
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [PermissionId]) VALUES (2, 1, 2)
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [PermissionId]) VALUES (3, 2, 3)
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [PermissionId]) VALUES (4, 3, 4)
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [PermissionId]) VALUES (5, 4, 5)
SET IDENTITY_INSERT [dbo].[RolePermissions] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (4, N'Developer')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (5, N'Employee')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (3, N'HR')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (2, N'Manager')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Tasks] ON 

INSERT [dbo].[Tasks] ([TaskId], [ProjectId], [AssignedTo], [Title], [Description], [Status], [DueDate], [CreatedAt]) VALUES (1, 1, 3, N'Setup Database', N'Design and create tables for ERP', N'In Progress', CAST(N'2024-03-30' AS Date), CAST(N'2025-03-20T14:44:59.540' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [ProjectId], [AssignedTo], [Title], [Description], [Status], [DueDate], [CreatedAt]) VALUES (2, 2, 4, N'Design UI', N'Create wireframes for HR Portal', N'Pending', CAST(N'2024-04-15' AS Date), CAST(N'2025-03-20T14:44:59.540' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [ProjectId], [AssignedTo], [Title], [Description], [Status], [DueDate], [CreatedAt]) VALUES (3, 3, 5, N'Implement API', N'Develop REST API for CRM', N'To Do', CAST(N'2024-05-10' AS Date), CAST(N'2025-03-20T14:44:59.540' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [ProjectId], [AssignedTo], [Title], [Description], [Status], [DueDate], [CreatedAt]) VALUES (4, 4, 1, N'Payroll Calculation Logic', N'Build logic for payroll processing', N'To Do', CAST(N'2024-06-20' AS Date), CAST(N'2025-03-20T14:44:59.540' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [ProjectId], [AssignedTo], [Title], [Description], [Status], [DueDate], [CreatedAt]) VALUES (5, 5, 2, N'Support Ticket Flow', N'Define workflow for support tickets', N'Pending', CAST(N'2024-07-01' AS Date), CAST(N'2025-03-20T14:44:59.540' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [ProjectId], [AssignedTo], [Title], [Description], [Status], [DueDate], [CreatedAt]) VALUES (6, 6, 6, N'Data Analytics Dashboard', N'Create HR data visualization', N'In Progress', CAST(N'2024-06-30' AS Date), CAST(N'2025-03-20T14:48:56.257' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [ProjectId], [AssignedTo], [Title], [Description], [Status], [DueDate], [CreatedAt]) VALUES (7, 7, 7, N'Payroll Bank API', N'Integrate payroll system with bank API', N'To Do', CAST(N'2024-07-10' AS Date), CAST(N'2025-03-20T14:48:56.257' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [ProjectId], [AssignedTo], [Title], [Description], [Status], [DueDate], [CreatedAt]) VALUES (8, 8, 8, N'Stock Management Module', N'Develop inventory tracking feature', N'Pending', CAST(N'2024-08-20' AS Date), CAST(N'2025-03-20T14:48:56.257' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [ProjectId], [AssignedTo], [Title], [Description], [Status], [DueDate], [CreatedAt]) VALUES (9, 9, 9, N'Lead Scoring System', N'Create AI-powered lead scoring in CRM', N'Pending', CAST(N'2024-09-01' AS Date), CAST(N'2025-03-20T14:48:56.257' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [ProjectId], [AssignedTo], [Title], [Description], [Status], [DueDate], [CreatedAt]) VALUES (10, 10, 10, N'Course Management', N'Build e-learning course structure', N'In Progress', CAST(N'2024-09-15' AS Date), CAST(N'2025-03-20T14:48:56.257' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tasks] OFF
GO
SET IDENTITY_INSERT [dbo].[TrainingSessions] ON 

INSERT [dbo].[TrainingSessions] ([Id], [TrainingTitle], [Trainer], [TrainingDate], [DurationHours], [Status]) VALUES (1, N'Angular Advanced Workshop', N'John Doe', CAST(N'2024-03-15' AS Date), 6, N'Completed')
INSERT [dbo].[TrainingSessions] ([Id], [TrainingTitle], [Trainer], [TrainingDate], [DurationHours], [Status]) VALUES (2, N'Cybersecurity Awareness', N'Jane Smith', CAST(N'2024-03-20' AS Date), 3, N'Scheduled')
INSERT [dbo].[TrainingSessions] ([Id], [TrainingTitle], [Trainer], [TrainingDate], [DurationHours], [Status]) VALUES (3, N'Leadership Development', N'Mike Johnson', CAST(N'2024-03-25' AS Date), 4, N'Scheduled')
INSERT [dbo].[TrainingSessions] ([Id], [TrainingTitle], [Trainer], [TrainingDate], [DurationHours], [Status]) VALUES (4, N'Sales Strategies', N'Sara Williams', CAST(N'2024-04-01' AS Date), 5, N'Scheduled')
INSERT [dbo].[TrainingSessions] ([Id], [TrainingTitle], [Trainer], [TrainingDate], [DurationHours], [Status]) VALUES (5, N'Cloud Computing Essentials', N'David Brown', CAST(N'2024-04-05' AS Date), 6, N'Scheduled')
SET IDENTITY_INSERT [dbo].[TrainingSessions] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRoles] ON 

INSERT [dbo].[UserRoles] ([Id], [UserId], [RoleId]) VALUES (1, 1, 1)
INSERT [dbo].[UserRoles] ([Id], [UserId], [RoleId]) VALUES (2, 2, 2)
INSERT [dbo].[UserRoles] ([Id], [UserId], [RoleId]) VALUES (3, 3, 3)
INSERT [dbo].[UserRoles] ([Id], [UserId], [RoleId]) VALUES (4, 4, 4)
INSERT [dbo].[UserRoles] ([Id], [UserId], [RoleId]) VALUES (5, 5, 5)
SET IDENTITY_INSERT [dbo].[UserRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [PasswordHash], [PhoneNumber], [ProfilePicture], [IsActive], [CreatedAt], [UpdatedAt]) VALUES (1, N'John', N'Doe', N'john.doe@example.com', N'hashed_password_1', N'1234567890', NULL, 1, CAST(N'2025-03-20T14:44:59.530' AS DateTime), CAST(N'2025-03-20T14:44:59.530' AS DateTime))
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [PasswordHash], [PhoneNumber], [ProfilePicture], [IsActive], [CreatedAt], [UpdatedAt]) VALUES (2, N'Jane', N'Smith', N'jane.smith@example.com', N'hashed_password_2', N'9876543210', NULL, 1, CAST(N'2025-03-20T14:44:59.530' AS DateTime), CAST(N'2025-03-20T14:44:59.530' AS DateTime))
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [PasswordHash], [PhoneNumber], [ProfilePicture], [IsActive], [CreatedAt], [UpdatedAt]) VALUES (3, N'Mike', N'Johnson', N'mike.johnson@example.com', N'hashed_password_3', N'4561237890', NULL, 1, CAST(N'2025-03-20T14:44:59.530' AS DateTime), CAST(N'2025-03-20T14:44:59.530' AS DateTime))
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [PasswordHash], [PhoneNumber], [ProfilePicture], [IsActive], [CreatedAt], [UpdatedAt]) VALUES (4, N'Sara', N'Williams', N'sara.williams@example.com', N'hashed_password_4', N'7894561230', NULL, 1, CAST(N'2025-03-20T14:44:59.530' AS DateTime), CAST(N'2025-03-20T14:44:59.530' AS DateTime))
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [PasswordHash], [PhoneNumber], [ProfilePicture], [IsActive], [CreatedAt], [UpdatedAt]) VALUES (5, N'David', N'Brown', N'david.brown@example.com', N'hashed_password_5', N'3216549870', NULL, 1, CAST(N'2025-03-20T14:44:59.530' AS DateTime), CAST(N'2025-03-20T14:44:59.530' AS DateTime))
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [PasswordHash], [PhoneNumber], [ProfilePicture], [IsActive], [CreatedAt], [UpdatedAt]) VALUES (6, N'Akhilesh', N'Deshmukh', N'deshmukhakhilesh4@gmail.com', N'1', N'9834903768', N'', 1, CAST(N'2025-03-20T16:11:08.417' AS DateTime), CAST(N'2025-03-20T16:11:08.417' AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Departme__D949CC345091076C]    Script Date: 3/20/2025 5:14:35 PM ******/
ALTER TABLE [dbo].[Departments] ADD UNIQUE NONCLUSTERED 
(
	[DepartmentName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Permissi__0FFDA357E5313ACD]    Script Date: 3/20/2025 5:14:35 PM ******/
ALTER TABLE [dbo].[Permissions] ADD UNIQUE NONCLUSTERED 
(
	[PermissionName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Roles__8A2B61603D8EE2C2]    Script Date: 3/20/2025 5:14:35 PM ******/
ALTER TABLE [dbo].[Roles] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__A9D1053407ADC29F]    Script Date: 3/20/2025 5:14:35 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AuditLogs] ADD  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (getdate()) FOR [HireDate]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ('Active') FOR [Status]
GO
ALTER TABLE [dbo].[Notifications] ADD  DEFAULT ((0)) FOR [IsRead]
GO
ALTER TABLE [dbo].[Notifications] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Payroll] ADD  DEFAULT ((0)) FOR [Deductions]
GO
ALTER TABLE [dbo].[Payroll] ADD  DEFAULT (getdate()) FOR [PaymentDate]
GO
ALTER TABLE [dbo].[Payroll] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[Projects] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[Tasks] ADD  DEFAULT ('To Do') FOR [Status]
GO
ALTER TABLE [dbo].[Tasks] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddEmployee]    Script Date: 3/20/2025 5:14:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddEmployee]
	@UserId INT,
	@Designation NVARCHAR(100),
    @DepartmentId INT,
    @Salary DECIMAL(18,2),
	@HireDate DateTime,
	@Status NVARCHAR(20),
    @NewId INT OUTPUT
AS
BEGIN
    INSERT INTO Employees (UserId, DepartmentId, Designation, Salary,HireDate,Status)
    VALUES (@UserId, @DepartmentId, @Designation, @Salary,@HireDate,@Status);
    
    SET @NewId = SCOPE_IDENTITY();
END;

select * from Employees
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteEmployee]    Script Date: 3/20/2025 5:14:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteEmployee]
    @Id INT
AS
BEGIN
    DELETE FROM Employees WHERE EmployeeId = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllEmployees]    Script Date: 3/20/2025 5:14:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetAllEmployees]
AS
BEGIN
    SELECT * FROM Employees;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetEmployeeById]    Script Date: 3/20/2025 5:14:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetEmployeeById]
    @Id INT
AS
BEGIN
    SELECT * FROM Employees WHERE EmployeeId = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateEmployee]    Script Date: 3/20/2025 5:14:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateEmployee]
   @UserId INT,
	@Designation NVARCHAR(100),
    @DepartmentId INT,
    @Salary DECIMAL(18,2),
	@HireDate DateTime,
	@Status NVARCHAR(20),
	@Id INT
	AS
BEGIN
    UPDATE Employees
    SET UserId = @UserId, Designation = @Designation, DepartmentId = @DepartmentId, Salary = @Salary,HireDate=@HireDate,Status=@Status
    WHERE EmployeeId = @Id;
END;
GO
