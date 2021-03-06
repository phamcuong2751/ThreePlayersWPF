USE [QuanLySinhVien]
GO
/****** Object:  Table [dbo].[CDMO]    Script Date: 12/14/2021 6:40:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDMO](
	[MACD] [char](10) NOT NULL,
	[HOCKY] [int] NOT NULL,
	[NAM] [int] NOT NULL,
 CONSTRAINT [PK_CDMO] PRIMARY KEY CLUSTERED 
(
	[MACD] ASC,
	[HOCKY] ASC,
	[NAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CDNGANH]    Script Date: 12/14/2021 6:40:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CDNGANH](
	[MACD] [char](10) NOT NULL,
	[MANGANH] [char](15) NOT NULL,
 CONSTRAINT [PK_CDN] PRIMARY KEY CLUSTERED 
(
	[MACD] ASC,
	[MANGANH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUYENDE]    Script Date: 12/14/2021 6:40:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUYENDE](
	[MACD] [char](10) NOT NULL,
	[TENCD] [nvarchar](120) NULL,
	[SOSVTD] [int] NULL,
 CONSTRAINT [PK_CD] PRIMARY KEY CLUSTERED 
(
	[MACD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANGKY]    Script Date: 12/14/2021 6:40:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANGKY](
	[MASV] [int] NOT NULL,
	[MACD] [char](10) NOT NULL,
	[HOCKY] [int] NULL,
	[NAM] [int] NULL,
	[DIEM] [int] NULL,
 CONSTRAINT [PK_DANGKY] PRIMARY KEY CLUSTERED 
(
	[MASV] ASC,
	[MACD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGANH]    Script Date: 12/14/2021 6:40:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGANH](
	[MANGANH] [char](15) NOT NULL,
	[TENNGANH] [nvarchar](30) NULL,
	[SOCD] [int] NULL,
	[TSSV] [int] NULL,
 CONSTRAINT [PK_NGANH] PRIMARY KEY CLUSTERED 
(
	[MANGANH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 12/14/2021 6:40:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MASV] [int] NOT NULL,
	[HOTEN] [nvarchar](30) NULL,
	[PHAI] [nvarchar](3) NULL,
	[NGAYSINH] [date] NULL,
	[DIACHI] [nvarchar](100) NULL,
	[MANGANH] [char](15) NULL,
 CONSTRAINT [PK_SV] PRIMARY KEY CLUSTERED 
(
	[MASV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CDMO] ([MACD], [HOCKY], [NAM]) VALUES (N'CD01      ', 1, 2021)
INSERT [dbo].[CDMO] ([MACD], [HOCKY], [NAM]) VALUES (N'CD02      ', 1, 2021)
INSERT [dbo].[CDMO] ([MACD], [HOCKY], [NAM]) VALUES (N'CD03      ', 2, 2021)
INSERT [dbo].[CDMO] ([MACD], [HOCKY], [NAM]) VALUES (N'CD04      ', 1, 2021)
INSERT [dbo].[CDMO] ([MACD], [HOCKY], [NAM]) VALUES (N'CD05      ', 2, 2021)
GO
INSERT [dbo].[CDNGANH] ([MACD], [MANGANH]) VALUES (N'CD01      ', N'1              ')
INSERT [dbo].[CDNGANH] ([MACD], [MANGANH]) VALUES (N'CD02      ', N'2              ')
INSERT [dbo].[CDNGANH] ([MACD], [MANGANH]) VALUES (N'CD03      ', N'3              ')
INSERT [dbo].[CDNGANH] ([MACD], [MANGANH]) VALUES (N'CD04      ', N'4              ')
INSERT [dbo].[CDNGANH] ([MACD], [MANGANH]) VALUES (N'CD05      ', N'5              ')
GO
INSERT [dbo].[CHUYENDE] ([MACD], [TENCD], [SOSVTD]) VALUES (N'CD01      ', N'CƠ CẤU BỘ MÁY QUẢN LÍ', 50)
INSERT [dbo].[CHUYENDE] ([MACD], [TENCD], [SOSVTD]) VALUES (N'CD02      ', N'MẠNG MÁY TÍNH', 45)
INSERT [dbo].[CHUYENDE] ([MACD], [TENCD], [SOSVTD]) VALUES (N'CD03      ', N'KHAI THÁC DỮ LIỆU KHÁCH HÀNG', 50)
INSERT [dbo].[CHUYENDE] ([MACD], [TENCD], [SOSVTD]) VALUES (N'CD04      ', N'XỬ LÍ NGÔN NGỮ NHẬT HỌC', 50)
INSERT [dbo].[CHUYENDE] ([MACD], [TENCD], [SOSVTD]) VALUES (N'CD05      ', N'LUẬT XUẤT NHẬP KHẨU', 50)
GO
INSERT [dbo].[DANGKY] ([MASV], [MACD], [HOCKY], [NAM], [DIEM]) VALUES (18600007, N'CD04      ', 1, 2021, 9)
INSERT [dbo].[DANGKY] ([MASV], [MACD], [HOCKY], [NAM], [DIEM]) VALUES (18600038, N'CD03      ', 2, 2021, 6)
INSERT [dbo].[DANGKY] ([MASV], [MACD], [HOCKY], [NAM], [DIEM]) VALUES (18600123, N'CD05      ', 2, 2021, 7)
INSERT [dbo].[DANGKY] ([MASV], [MACD], [HOCKY], [NAM], [DIEM]) VALUES (18600177, N'CD02      ', 1, 2021, 8)
INSERT [dbo].[DANGKY] ([MASV], [MACD], [HOCKY], [NAM], [DIEM]) VALUES (18600188, N'CD01      ', 1, 2021, 7)
GO
INSERT [dbo].[NGANH] ([MANGANH], [TENNGANH], [SOCD], [TSSV]) VALUES (N'1              ', N'QUẢN TRỊ KINH DOANH', 3, 15)
INSERT [dbo].[NGANH] ([MANGANH], [TENNGANH], [SOCD], [TSSV]) VALUES (N'2              ', N'CÔNG NGHỆ THÔNG TIN', 4, 20)
INSERT [dbo].[NGANH] ([MANGANH], [TENNGANH], [SOCD], [TSSV]) VALUES (N'3              ', N'MARKETING', 5, 30)
INSERT [dbo].[NGANH] ([MANGANH], [TENNGANH], [SOCD], [TSSV]) VALUES (N'4              ', N'NGÔN NGỮ ANH', 2, 20)
INSERT [dbo].[NGANH] ([MANGANH], [TENNGANH], [SOCD], [TSSV]) VALUES (N'5              ', N'KẾ TOÁN', 3, 30)
GO
INSERT [dbo].[SINHVIEN] ([MASV], [HOTEN], [PHAI], [NGAYSINH], [DIACHI], [MANGANH]) VALUES (18600007, N'Nguyễn Thị Yến Ngọc', N'Nữ', CAST(N'2000-08-10' AS Date), N'162 Đức Hòa', N'4              ')
INSERT [dbo].[SINHVIEN] ([MASV], [HOTEN], [PHAI], [NGAYSINH], [DIACHI], [MANGANH]) VALUES (18600038, N'Phạm Phong Phú Cường', N'Nam', CAST(N'1998-03-15' AS Date), N'113 Nguyễn Trãi', N'3              ')
INSERT [dbo].[SINHVIEN] ([MASV], [HOTEN], [PHAI], [NGAYSINH], [DIACHI], [MANGANH]) VALUES (18600123, N'Hoàng Trí Dương', N'Nam', CAST(N'1999-02-12' AS Date), N'13 Năm Châu', N'5              ')
INSERT [dbo].[SINHVIEN] ([MASV], [HOTEN], [PHAI], [NGAYSINH], [DIACHI], [MANGANH]) VALUES (18600177, N'Nguyễn Trung Nam', N'Nam', CAST(N'2000-09-03' AS Date), N'145 Trường Chinh', N'2              ')
INSERT [dbo].[SINHVIEN] ([MASV], [HOTEN], [PHAI], [NGAYSINH], [DIACHI], [MANGANH]) VALUES (18600188, N'Nguyễn Thị Như Anh', N'Nữ', CAST(N'1999-09-20' AS Date), N'232 Nguyễn Thị Minh Khai', N'1              ')
GO
ALTER TABLE [dbo].[CDMO]  WITH CHECK ADD  CONSTRAINT [FK_CDN_M] FOREIGN KEY([MACD])
REFERENCES [dbo].[CHUYENDE] ([MACD])
GO
ALTER TABLE [dbo].[CDMO] CHECK CONSTRAINT [FK_CDN_M]
GO
ALTER TABLE [dbo].[CDNGANH]  WITH CHECK ADD  CONSTRAINT [FK_CDN_CD] FOREIGN KEY([MACD])
REFERENCES [dbo].[CHUYENDE] ([MACD])
GO
ALTER TABLE [dbo].[CDNGANH] CHECK CONSTRAINT [FK_CDN_CD]
GO
ALTER TABLE [dbo].[CDNGANH]  WITH CHECK ADD  CONSTRAINT [FK_CDN_N] FOREIGN KEY([MANGANH])
REFERENCES [dbo].[NGANH] ([MANGANH])
GO
ALTER TABLE [dbo].[CDNGANH] CHECK CONSTRAINT [FK_CDN_N]
GO
ALTER TABLE [dbo].[DANGKY]  WITH CHECK ADD  CONSTRAINT [FK_DK_CDM] FOREIGN KEY([MACD], [HOCKY], [NAM])
REFERENCES [dbo].[CDMO] ([MACD], [HOCKY], [NAM])
GO
ALTER TABLE [dbo].[DANGKY] CHECK CONSTRAINT [FK_DK_CDM]
GO
ALTER TABLE [dbo].[DANGKY]  WITH CHECK ADD  CONSTRAINT [FK_DK_SV] FOREIGN KEY([MASV])
REFERENCES [dbo].[SINHVIEN] ([MASV])
GO
ALTER TABLE [dbo].[DANGKY] CHECK CONSTRAINT [FK_DK_SV]
GO
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_SV_N] FOREIGN KEY([MANGANH])
REFERENCES [dbo].[NGANH] ([MANGANH])
GO
ALTER TABLE [dbo].[SINHVIEN] CHECK CONSTRAINT [FK_SV_N]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteSV]    Script Date: 12/14/2021 6:40:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DeleteSV]
	@MASV INT
AS
BEGIN
	DELETE FROM dbo.SINHVIEN WHERE @MASV = MASV
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertSV]    Script Date: 12/14/2021 6:40:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InsertSV]
	@MASV INT,
	@HOTEN NVARCHAR(50),
	@PHAI NVARCHAR(3),
	@NGAYSINH DATE,
	@DIACHI NVARCHAR(100),
	@MANGANH CHAR(15)
AS
BEGIN
	INSERT INTO dbo.SINHVIEN VALUES (@MASV, @HOTEN, @PHAI, @NGAYSINH, @DIACHI, @MANGANH)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadAllNganh]    Script Date: 12/14/2021 6:40:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_LoadAllNganh] AS BEGIN
SELECT
   *
FROM
   NGANH NG 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadAllSInhVien]    Script Date: 12/14/2021 6:40:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_LoadAllSInhVien] AS BEGIN
SELECT
    SV.MASV,
    SV.HOTEN,
    SV.PHAI,
    SV.DIACHI,
    SV.NGAYSINH,
    NG.TENNGANH,
    NG.MANGANH
FROM
    SINHVIEN SV
    JOIN NGANH NG ON SV.MANGANH = NG.MANGANH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateSV]    Script Date: 12/14/2021 6:40:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_UpdateSV]
	@MASV INT,
	@HOTEN NVARCHAR(50),
	@PHAI NVARCHAR(3),
	@NGAYSINH DATE,
	@DIACHI NVARCHAR(100),
	@MANGANH CHAR(15)
AS
BEGIN
	UPDATE dbo.SINHVIEN 
    SET HOTEN = @HOTEN, 
        PHAI = @PHAI, 
        NGAYSINH = @NGAYSINH, 
        DIACHI = @DIACHI, 
        MANGANH = @MANGANH
	WHERE MASV = @MASV
END
GO
