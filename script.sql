Create database [QLBH]
GO
use QLBH
/****** Object:  Table [dbo].[CHI_TIET_PBH]    Script Date: 12/11/2018 11:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_PBH](
	[ID_PBH_CT] [int] IDENTITY(1,1) NOT NULL,
	[ID_PBH] [int] NULL,
	[STT] [int] NULL,
	[MA_HANG] [nvarchar](50) NULL,
	[TEN_HANG] [nvarchar](250) NULL,
	[DON_VI_TINH] [nvarchar](50) NULL,
	[SO_LUONG] [decimal](18, 2) NULL,
	[DON_GIA] [decimal](18, 2) NULL,
	[THANH_TIEN] [decimal](18, 2) NULL,
 CONSTRAINT [PK_CHI_TIET_PBH] PRIMARY KEY CLUSTERED 
(
	[ID_PBH_CT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHI_TIET_PMH]    Script Date: 12/11/2018 11:37:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_PMH](
	[ID_PMH_CT] [int] IDENTITY(1,1) NOT NULL,
	[ID_PMH] [int] NULL,
	[STT] [int] NULL,
	[MA_HANG] [nvarchar](50) NULL,
	[TEN_HANG] [nvarchar](250) NULL,
	[DON_VI_TINH] [nvarchar](50) NULL,
	[SO_LUONG] [decimal](18, 2) NULL,
	[DON_GIA] [decimal](18, 2) NULL,
	[THANH_TIEN] [decimal](18, 2) NULL,
 CONSTRAINT [PK_CHI_TIET_PMH] PRIMARY KEY CLUSTERED 
(
	[ID_PMH_CT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANH_MUC_HANG]    Script Date: 12/11/2018 11:37:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANH_MUC_HANG](
	[MA_HANG] [nvarchar](50) NOT NULL,
	[TEN_HANG] [nvarchar](250) NOT NULL,
	[DVT] [nvarchar](50) NULL,
	[DON_GIA] [decimal](18, 2) NULL,
	[NHA_CUNG_CAP] [nvarchar](250) NULL,
	[GHI_CHU] [nvarchar](500) NULL,
 CONSTRAINT [PK_DANH_MUC_HANG] PRIMARY KEY CLUSTERED 
(
	[MA_HANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU_BAN_HANG]    Script Date: 12/11/2018 11:37:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU_BAN_HANG](
	[ID_PBH] [int] IDENTITY(1,1) NOT NULL,
	[NGAY_BAN] [date] NULL,
	[MA_SO_THUE] [nvarchar](50) NULL,
	[TEN_CTY] [nvarchar](250) NULL,
	[DIA_CHI] [nvarchar](500) NULL,
	[SDT] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[TONG_TIEN] [decimal](18, 2) NULL,
	[THANH_TIEN_VND] [decimal](18, 2) NULL,
 CONSTRAINT [PK_PHIEU_BAN_HANG] PRIMARY KEY CLUSTERED 
(
	[ID_PBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU_MUA_HANG]    Script Date: 12/11/2018 11:37:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU_MUA_HANG](
	[ID_PMH] [int] IDENTITY(1,1) NOT NULL,
	[NGAY_MUA] [date] NULL,
	[MA_SO_THUE] [nvarchar](50) NULL,
	[TEN_CTY] [nvarchar](250) NULL,
	[DIA_CHI] [nvarchar](500) NULL,
	[SDT] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[TONG_TIEN] [decimal](18, 2) NULL,
	[THANH_TIEN_VND] [nchar](10) NULL,
 CONSTRAINT [PK_PHIEU_MUA_HANG] PRIMARY KEY CLUSTERED 
(
	[ID_PMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
