USE [PlacovuWebSite]
GO
/****** Object:  UserDefinedFunction [dbo].[Split]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Split] (@sep char(1), @s varchar(8000))
RETURNS table
AS
RETURN (
    WITH Pieces(pn, start, stop) AS (
      SELECT 1, 1, CHARINDEX(@sep, @s)
      UNION ALL
      SELECT pn + 1, stop + 1, CHARINDEX(@sep, @s, stop + 1)
      FROM Pieces
      WHERE stop > 0
    )
    SELECT 
      SUBSTRING(@s, start, CASE WHEN stop > 0 THEN stop-start ELSE 512 END) AS s
    FROM Pieces
  )

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[IsActive] [bit] NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Country] [int] NOT NULL,
	[Age] [int] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[PrimaryImageId] [int] NULL,
	[Name] [varchar](100) NOT NULL,
	[Url] [varchar](100) NOT NULL,
	[MetaTitle] [varchar](250) NULL,
	[MetaKeyword] [varchar](250) NULL,
	[MetaDescription] [varchar](250) NULL,
	[Description] [varchar](max) NOT NULL,
	[AddedOn] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogCategory]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[Name] [varchar](100) NOT NULL,
	[Url] [varchar](100) NOT NULL,
	[MetaTitle] [varchar](250) NULL,
	[MetaKeyword] [varchar](250) NULL,
	[MetaDescription] [varchar](250) NULL,
	[Description] [varchar](max) NOT NULL,
	[AddedOn] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_BlogCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUsConfig]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUsConfig](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContactUsConfigType] [nvarchar](50) NULL,
	[ToEmailAddress] [nvarchar](100) NOT NULL,
	[FromEmailAddress] [nvarchar](100) NOT NULL,
	[FromEmailAddressDisplayName] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](20) NOT NULL,
	[PhoneNumberDisplayName] [nvarchar](50) NULL,
	[TestEmailAddress] [text] NULL,
	[DisplayOrder] [int] NULL,
 CONSTRAINT [PK_ContactUsConfig] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailSmsConfig]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailSmsConfig](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FromEmailAddress] [varchar](100) NULL,
	[FromEmailAddressDisplayName] [varchar](100) NULL,
	[Password] [varchar](250) NULL,
	[Host] [varchar](50) NULL,
	[Port] [varchar](10) NULL,
	[AllowSsl] [bit] NULL,
	[SendGridFromEmailAddress] [varchar](100) NULL,
	[SendGridFromEmailAddressDisplayName] [varchar](100) NULL,
	[SendGridApiKey] [varchar](250) NULL,
	[TestEmailAddress] [varchar](250) NULL,
	[SmsFromNumber] [nvarchar](20) NULL,
	[SmsAccountSid] [nvarchar](250) NULL,
	[SmsAuthToken] [nvarchar](250) NULL,
	[AllowSms] [bit] NULL,
	[AllowEmail] [bit] NULL,
 CONSTRAINT [PK_EmailSmsConfig] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailSmsHistory]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailSmsHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReciverName] [nvarchar](500) NULL,
	[ReceiverEmailAddress] [nvarchar](100) NULL,
	[EmailTemplateId] [nvarchar](50) NULL,
	[EmailTemplateTypeId] [nvarchar](50) NULL,
	[EmailTemplateTitle] [text] NULL,
	[EmailTemplateDetail] [text] NULL,
	[EmailSentStatus] [int] NULL,
	[EmailSentFailedCount] [int] NULL,
	[EmailSentMessage] [text] NULL,
	[EmailResentCount] [int] NULL,
	[EmailSentBy] [nvarchar](100) NULL,
	[ReceiverPhoneNumber] [nvarchar](20) NULL,
	[SmsTemplateId] [nvarchar](50) NULL,
	[SmsTemplateTypeId] [nvarchar](50) NULL,
	[SmsTemplateTitle] [text] NULL,
	[SmsTemplateDetail] [text] NULL,
	[SmsSentStatus] [int] NULL,
	[SmsSentFailedCount] [int] NULL,
	[SmsSentMessage] [text] NULL,
	[SmsResentCount] [int] NULL,
	[SmsSentBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_EmailSmsHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmploymentApplication]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmploymentApplication](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[EmailAddress] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[SecondaryPhoneNumber] [nvarchar](max) NULL,
	[ReferredBy] [nvarchar](max) NULL,
	[PresentAddress] [nvarchar](max) NOT NULL,
	[LastAddress] [nvarchar](max) NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[ZipCode] [nvarchar](max) NOT NULL,
	[LastCity] [nvarchar](max) NULL,
	[LastState] [nvarchar](max) NULL,
	[LastCountry] [nvarchar](max) NULL,
	[LastZipCode] [nvarchar](max) NULL,
	[LegalInUSA] [nvarchar](max) NOT NULL,
	[CurrentlyEmployed] [nvarchar](max) NOT NULL,
	[CanContactYouEmployer] [nvarchar](max) NOT NULL,
	[CurrentlyEmploymentPosition] [nvarchar](max) NULL,
	[SalaryDesired] [nvarchar](max) NULL,
	[StartDate] [nvarchar](max) NULL,
	[ApplyBefore] [nvarchar](max) NOT NULL,
	[WorkBefore] [nvarchar](max) NOT NULL,
	[JoinDate] [nvarchar](max) NULL,
	[LastSupervisorName] [nvarchar](max) NULL,
	[ReasonForLeave] [nvarchar](max) NULL,
	[HighSchoolName] [nvarchar](max) NULL,
	[CollegeName] [nvarchar](max) NULL,
	[TradeBusinessSchoolName] [nvarchar](max) NULL,
	[SpecialStudyResearchWork] [nvarchar](max) NULL,
	[SpecialTrainingCertificationsLicenses] [nvarchar](max) NULL,
	[SpecialSkillsLanguages] [nvarchar](max) NULL,
	[MilitaryServiceRecord] [nvarchar](max) NOT NULL,
	[LastEmployerNameOne] [nvarchar](max) NULL,
	[LastEmployerJobTitleOne] [nvarchar](max) NULL,
	[LastEmployerEmailAddressOne] [nvarchar](max) NULL,
	[LastEmployerAddressOne] [nvarchar](max) NULL,
	[LastEmployerCityOne] [nvarchar](max) NULL,
	[LastEmployerStateOne] [nvarchar](max) NULL,
	[LastEmployerZipCodeOne] [nvarchar](max) NULL,
	[LastEmployerStartDateOne] [nvarchar](max) NULL,
	[LastEmployerLeaveDateOne] [nvarchar](max) NULL,
	[LastEmployerWeeklyStartSalaryOne] [nvarchar](max) NULL,
	[LastEmployerWeeklyFinalSalaryOne] [nvarchar](max) NULL,
	[LastEmployerNameTwo] [nvarchar](max) NULL,
	[LastEmployerJobTitleTwo] [nvarchar](max) NULL,
	[LastEmployerEmailAddressTwo] [nvarchar](max) NULL,
	[LastEmployerAddressTwo] [nvarchar](max) NULL,
	[LastEmployerCityTwo] [nvarchar](max) NULL,
	[LastEmployerStateTwo] [nvarchar](max) NULL,
	[LastEmployerZipCodeTwo] [nvarchar](max) NULL,
	[LastEmployerStartDateTwo] [nvarchar](max) NULL,
	[LastEmployerLeaveDateTwo] [nvarchar](max) NULL,
	[LastEmployerWeeklyStartSalaryTwo] [nvarchar](max) NULL,
	[LastEmployerWeeklyFinalSalaryTwo] [nvarchar](max) NULL,
	[LastEmployerNameThree] [nvarchar](max) NULL,
	[LastEmployerJobTitleThree] [nvarchar](max) NULL,
	[LastEmployerEmailAddressThree] [nvarchar](max) NULL,
	[LastEmployerAddressThree] [nvarchar](max) NULL,
	[LastEmployerCityThree] [nvarchar](max) NULL,
	[LastEmployerStateThree] [nvarchar](max) NULL,
	[LastEmployerZipCodeThree] [nvarchar](max) NULL,
	[LastEmployerStartDateThree] [nvarchar](max) NULL,
	[LastEmployerLeaveDateThree] [nvarchar](max) NULL,
	[LastEmployerWeeklyStartSalaryThree] [nvarchar](max) NULL,
	[LastEmployerWeeklyFinalSalaryThree] [nvarchar](max) NULL,
	[KnowAboutThisPosition] [nvarchar](max) NOT NULL,
	[IsArchived] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_EmploymentApplication] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Media]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Url] [varchar](250) NOT NULL,
	[Title] [varchar](100) NULL,
	[Alt] [varchar](100) NULL,
	[Description] [varchar](100) NULL,
	[ParentId] [int] NULL,
	[AddedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Media] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](25) NOT NULL,
	[Item] [nvarchar](max) NOT NULL,
	[AddedOn] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NewsTitle] [varchar](100) NULL,
	[NewsDetails] [varchar](max) NULL,
	[NewsKeywords] [varchar](250) NULL,
	[AddedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Page]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Page](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Url] [varchar](100) NOT NULL,
	[MetaTitle] [varchar](250) NULL,
	[MetaKeyword] [varchar](250) NULL,
	[MetaDescription] [varchar](250) NULL,
	[Description] [varchar](max) NOT NULL,
	[AddedOn] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Page] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiteInfo]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteTitle] [varchar](100) NULL,
	[SiteDescription] [varchar](max) NULL,
	[SiteKeywords] [varchar](max) NULL,
	[SiteAuthor] [varchar](250) NULL,
	[SiteCanonicalUrl] [varchar](250) NULL,
	[SiteShortlinkUrl] [varchar](250) NULL,
	[SiteUrl] [varchar](250) NULL,
	[SiteImageUrl] [varchar](250) NULL,
	[SiteName] [varchar](250) NULL,
	[SitePhoneNumber] [varchar](250) NULL,
	[SiteOfficeNumber] [varchar](250) NULL,
	[SiteLogoUrl] [varchar](250) NULL,
	[SiteFavicon16X16Url] [varchar](250) NULL,
	[SiteFavicon32X32Url] [varchar](250) NULL,
	[SiteFavicon180x180Url] [varchar](250) NULL,
	[SiteFavicon192x192Url] [varchar](250) NULL,
	[AddedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialMediaConfig]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialMediaConfig](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacebookUrl] [nvarchar](250) NULL,
	[LinkedInUrl] [nvarchar](250) NULL,
	[InstagramUrl] [nvarchar](250) NULL,
	[TwitterUrl] [nvarchar](250) NULL,
	[TumblrUrl] [nvarchar](250) NULL,
	[YouTubeUrl] [nvarchar](250) NULL,
 CONSTRAINT [PK_SocialMediaConfig] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Blog] ADD  CONSTRAINT [DF_Blog_AddedOn]  DEFAULT (getdate()) FOR [AddedOn]
GO
ALTER TABLE [dbo].[BlogCategory] ADD  CONSTRAINT [DF_BlogCategory_AddedOn]  DEFAULT (getdate()) FOR [AddedOn]
GO
ALTER TABLE [dbo].[Media] ADD  CONSTRAINT [DF_Media_AddedOn]  DEFAULT (getdate()) FOR [AddedOn]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_AddedOn]  DEFAULT (getdate()) FOR [AddedOn]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_News_AddedOn]  DEFAULT (getdate()) FOR [AddedOn]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_AddedOn]  DEFAULT (getdate()) FOR [AddedOn]
GO
ALTER TABLE [dbo].[SiteInfo] ADD  CONSTRAINT [DF_SiteInfo_AddedOn]  DEFAULT (getdate()) FOR [AddedOn]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteMedia]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteMedia]
	@Id	VARCHAR(50)
AS  
BEGIN
    DELETE FROM Media WHERE id in (select s from dbo.split(',',@Id))	
END



GO
/****** Object:  StoredProcedure [dbo].[sp_GetBlogCategoryWithPaging]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetBlogCategoryWithPaging] --1,'hello world!',1,null
@PageNo INT,
@Name VARCHAR(100),
@PageSize	INT,
@Status	INT
AS  
BEGIN
    DECLARE @qryMain  NVARCHAR(1000);
	DECLARE @qry  NVARCHAR(1000);   
	SET @qryMain='SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY AddedON DESC) AS ''RowNum'',* FROM BlogCategory WHERE 1=1' 
	SET @qry=''

	IF @Status IS NOT NULL
		SET @qry=@qry+' AND Status='''+CAST(@Status AS NVARCHAR(5))+''''     
    IF @Name IS NOT NULL
		SET @qry=@qry+' AND Name like''%'+@Name+'%'''  
		   
	SET @qryMain=@qryMain+@qry+') a WHERE a.RowNum BETWEEN ('+CAST(@pageNo AS NVARCHAR(5))+'-1)*'+CAST(@pageSize AS NVARCHAR(5))+'+1 AND ('+CAST(@pageNo AS NVARCHAR(5))+'*'+CAST(@pageSize AS NVARCHAR(5))+')'

	DECLARE @qryTotal  NVARCHAR(1000); 
	DECLARE @Total INT;
	SET @qryTotal='' 
	SET @qryTotal='SELECT @Total=COUNT(*) FROM BlogCategory WHERE 1=1'+@qry
	EXEC Sp_executesql @qryTotal, N'@Total INT OUTPUT', @Total OUTPUT

	DECLARE	@AllTotalPage	INT
	DECLARE @ActiveTotalPage	INT
	DECLARE	@InActiveTotalPage	INT
	SELECT @AllTotalPage= COUNT(*) FROM BlogCategory
	SELECT @ActiveTotalPage= COUNT(*) FROM BlogCategory WHERE Status=1
	SELECT @InActiveTotalPage= COUNT(*) FROM BlogCategory WHERE Status=0

	SET @qryMain=@qryMain+'; SELECT '+CAST(@Total AS NVARCHAR(5))+' AS ''Total'','+CAST(@AllTotalPage AS NVARCHAR(5))+' AS ''AllTotalPage'','+CAST(@ActiveTotalPage AS NVARCHAR(5))+' AS ''ActiveTotalPage'','+CAST(@InActiveTotalPage AS NVARCHAR(5))+' AS ''InActiveTotalPage'''
	EXEC sp_executesql @qryMain 		
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetMediaById]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetMediaById]  

	@Id	INT

AS            

BEGIN

  SELECT * FROM Media WHERE id=@Id

END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetMediaDate]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetMediaDate]  
AS            
BEGIN
  --SELECT CAST(YEAR(AddedOn) as VARCHAR(4))+'/'+CAST(MONTH(AddedOn) as VARCHAR(2)) AS 'Date' FROM Media GROUP BY YEAR(AddedOn),MONTH(AddedOn)
  SELECT * FROM (SELECT DATENAME(MONTH, DATE) +' '+ DATENAME(YEAR,DATE) AS 'DateText',CAST(YEAR(DATE) as VARCHAR(4))+'/'+FORMAT(CAST(DATE AS DATE),'MM')  AS 'DateValue' FROM (SELECT CONVERT(VARCHAR(10), AddedOn, 111) AS 'DATE' FROM Media GROUP BY CONVERT(VARCHAR(10),AddedOn, 111))a)b GROUP BY DateValue,DateText
END






GO
/****** Object:  StoredProcedure [dbo].[sp_GetMediaWithPaging]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetMediaWithPaging]  --1,35,null,'all','all'
@PageNo INT,
@PageSize	INT,
@Name VARCHAR(100),
@FileType VARCHAR(10),
@MediaDateSearch VARCHAR(10)
AS  
BEGIN
    DECLARE @qryMain  NVARCHAR(1000);
	DECLARE @qry  NVARCHAR(1000);   
	SET @qryMain='SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY AddedON DESC) AS ''RowNum'',* FROM Media WHERE 1=1 ' 
	SET @qry=''
    IF @Name IS NOT NULL
		SET @qry=@qry+' AND Name like''%'+@Name+'%'''
	
	IF @FileType='image'
		SET @qry=@qry+' AND ((Name like''%.png%'') OR (Name like''%.jpg%'') OR (Name like''%.jpeg%'') OR (Name like''%.gif%'') OR (Name like''%.bmp%''))'	  
    ELSE IF @FileType='audio'
		SET @qry=@qry+' AND ((Name like''%.mp3%'') OR (Name like''%.wav%'') OR (Name like''%.wma%''))'
    ELSE IF @FileType='video'
		SET @qry=@qry+' AND ((Name like''%.mp4%'') OR (Name like''%.wav%'') OR (Name like''%.wma%'') OR (Name like''%.3gp%'') OR (Name like''%.avi%'') OR (Name like''%.webm%'') OR (Name like''%.mpeg%'') OR (Name like''%.mpg%''))'	  
    ELSE IF @FileType='compress'
		SET @qry=@qry+' AND ((Name like''%.zip%'') OR (Name like''%.rar%''))'
    ELSE IF @FileType='text'
		SET @qry=@qry+' AND ((Name like''%.txt%''))'
    ELSE IF @FileType='word'
		SET @qry=@qry+' AND ((Name like''%.docx%''))'

	IF @MediaDateSearch!='all'
	BEGIN
	    DECLARE @mediaMonth VARCHAR(2)
		DECLARE @mediaYear  VARCHAR(4)
		SELECT @mediaMonth=RIGHT(@MediaDateSearch,2),@mediaYear=LEFT(@MediaDateSearch,4)
		SET @qry=@qry+ ' AND MONTH(AddedOn) = '''+@mediaMonth+''' AND YEAR(AddedOn) = '''+@mediaYear+''''
    END 

	SET @qryMain=@qryMain+@qry+') a WHERE a.RowNum BETWEEN ('+CAST(@pageNo AS NVARCHAR(5))+'-1)*'+CAST(@pageSize AS NVARCHAR(5))+'+1 AND ('+CAST(@pageNo AS NVARCHAR(5))+'*'+CAST(@pageSize AS NVARCHAR(5))+')'
	SET @qryMain='SELECT t1.*,t2.url AS ''ThumbUrl'' FROM ('+@qryMain+')t1 LEFT OUTER JOIN (SELECT * FROM Media Where id in (SELECT MIN(id) FROM MEDIA WHERE Parentid IS NOT NULL GROUP BY ParentId))t2 ON t1.id=t2.ParentId'
	EXEC sp_executesql @qryMain
	--SELECT * FROM Media Where id in (SELECT MIN(id) as 'b' FROM MEDIA WHERE Parentid IS NOT NULL GROUP BY ParentId) Order by id desc
	--SELECT t1.*,t2.id,t2.url FROM (SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY AddedON DESC) AS 'RowNum',* FROM Media WHERE 1=1 AND ParentId IS NULL) a WHERE a.RowNum BETWEEN (1-1)*35+1 AND (1*35))t1 LEFT OUTER JOIN (SELECT * FROM Media Where id in (SELECT MIN(id) as 'b' FROM MEDIA WHERE Parentid IS NOT NULL GROUP BY ParentId))t2 ON t1.id=t2.ParentId
	--print @qryMain
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetPageById]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetPageById]  
	@Id	INT
AS            
BEGIN
  SELECT * FROM Page WHERE id=@Id
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetPageWithPaging]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetPageWithPaging] --1,'hello world!',1,null
@PageNo INT,
@Name VARCHAR(100),
@PageSize	INT,
@Status	INT
AS  
BEGIN
    DECLARE @qryMain  NVARCHAR(1000);
	DECLARE @qry  NVARCHAR(1000);   
	SET @qryMain='SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY AddedON DESC) AS ''RowNum'',* FROM Page WHERE 1=1' 
	SET @qry=''

	IF @Status IS NOT NULL
		SET @qry=@qry+' AND Status='''+CAST(@Status AS NVARCHAR(5))+''''     
    IF @Name IS NOT NULL
		SET @qry=@qry+' AND Name like''%'+@Name+'%'''  
		   
	SET @qryMain=@qryMain+@qry+') a WHERE a.RowNum BETWEEN ('+CAST(@pageNo AS NVARCHAR(5))+'-1)*'+CAST(@pageSize AS NVARCHAR(5))+'+1 AND ('+CAST(@pageNo AS NVARCHAR(5))+'*'+CAST(@pageSize AS NVARCHAR(5))+')'

	DECLARE @qryTotal  NVARCHAR(1000); 
	DECLARE @Total INT;
	SET @qryTotal='' 
	SET @qryTotal='SELECT @Total=COUNT(*) FROM Page WHERE 1=1'+@qry
	EXEC Sp_executesql @qryTotal, N'@Total INT OUTPUT', @Total OUTPUT

	DECLARE	@AllTotalPage	INT
	DECLARE @ActiveTotalPage	INT
	DECLARE	@InActiveTotalPage	INT
	SELECT @AllTotalPage= COUNT(*) FROM Page
	SELECT @ActiveTotalPage= COUNT(*) FROM Page WHERE Status=1
	SELECT @InActiveTotalPage= COUNT(*) FROM Page WHERE Status=0

	SET @qryMain=@qryMain+'; SELECT '+CAST(@Total AS NVARCHAR(5))+' AS ''Total'','+CAST(@AllTotalPage AS NVARCHAR(5))+' AS ''AllTotalPage'','+CAST(@ActiveTotalPage AS NVARCHAR(5))+' AS ''ActiveTotalPage'','+CAST(@InActiveTotalPage AS NVARCHAR(5))+' AS ''InActiveTotalPage'''
	EXEC sp_executesql @qryMain 		
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetURL]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetURL] --'my-pipin-1','-',null
	@Url		VARCHAR(100),
	@Sep		VARCHAR(1),
	@TableName	VARCHAR(25),
	@Id			INT,   
	@TempUrl	VARCHAR(100) OUTPUT   
AS            
BEGIN
    DECLARE @LastUrlPart VARCHAR(5), @FirstUrlPart VARCHAR(100), @Counter INT = 0, @UrlWithoutEndNo VARCHAR(100)
	SELECT @LastUrlPart=REVERSE(SUBSTRING(REVERSE(@Url),0,CHARINDEX(@sep,REVERSE(@Url))))
	SELECT @FirstUrlPart=LEFT(@Url,LEN(@Url)-CHARINDEX('-',REVERSE(@Url)))

	create table #Temp
	(
		URL VARCHAR(100) 
	)
	
	IF(ISNUMERIC(@LastUrlPart) = 1)
	  BEGIN
	    SET @UrlWithoutEndNo=@FirstUrlPart
      END
	ELSE
	  BEGIN
	    SET @UrlWithoutEndNo=@Url
      END 
    
	IF(@TableName is null)
	  BEGIN 
	    INSERT INTO #Temp SELECT Url FROM Page WHERE Url LIKE @UrlWithoutEndNo+'%'
     	INSERT INTO #Temp SELECT Url FROM Blog WHERE Url LIKE @UrlWithoutEndNo+'%'
	    INSERT INTO #Temp SELECT Url FROM BlogCategory WHERE Url LIKE @UrlWithoutEndNo+'%'
	  END
    ELSE IF(@TableName='Page')
	  BEGIN
		INSERT INTO #Temp SELECT Url FROM Page WHERE Url LIKE @UrlWithoutEndNo+'%' AND Id<>@Id
     	INSERT INTO #Temp SELECT Url FROM Blog WHERE Url LIKE @UrlWithoutEndNo+'%'
	    INSERT INTO #Temp SELECT Url FROM BlogCategory WHERE Url LIKE @UrlWithoutEndNo+'%'
      END
    ELSE IF(@TableName='Blog')
	  BEGIN
		INSERT INTO #Temp SELECT Url FROM Page WHERE Url LIKE @UrlWithoutEndNo+'%' 
     	INSERT INTO #Temp SELECT Url FROM Blog WHERE Url LIKE @UrlWithoutEndNo+'%' AND Id<>@Id
	    INSERT INTO #Temp SELECT Url FROM BlogCategory WHERE Url LIKE @UrlWithoutEndNo+'%'
      END
    ELSE IF(@TableName='BlogCategory')
	  BEGIN
		INSERT INTO #Temp SELECT Url FROM Page WHERE Url LIKE @UrlWithoutEndNo+'%'
     	INSERT INTO #Temp SELECT Url FROM Blog WHERE Url LIKE @UrlWithoutEndNo+'%'
	    INSERT INTO #Temp SELECT Url FROM BlogCategory WHERE Url LIKE @UrlWithoutEndNo+'%' AND Id<>@Id
      END

    SET @TempUrl=@Url
	WHILE EXISTS (SELECT * FROM #Temp WHERE url=@TempUrl)
	  BEGIN
	    SET @Counter=@Counter+1
	    SET @TempUrl=@UrlWithoutEndNo+'-'+CAST(@Counter AS VARCHAR(100))
	  END
	
	print @tempurl
END	

--[sp_GetURL] 'my-pipin-6','-',null

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertMedia]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertMedia]   
	@Name	VARCHAR(100), 
	@Url	VARCHAR(250),   
	@Title varchar(100),
	@Alt varchar(100),
	@Description varchar(100),
	@ParentId INT, 
	@Result	VARCHAR(50) OUTPUT,
	@CreatedFileName	VARCHAR(100) OUTPUT,   
	@CreatedId	INT OUTPUT      
AS            
BEGIN
	DECLARE @MainFileNameWithoutExtension VARCHAR(100)
	DECLARE @FileNameWithExtension VARCHAR(100)
	DECLARE @FileNameWithoutExtension VARCHAR(100)
	DECLARE @FileExtension VARCHAR(100)
	DECLARE @TempUrl	VARCHAR(250)
	SELECT @TempUrl=@Url
	DECLARE @Counter INT = 0;

	SET @MainFileNameWithoutExtension=LEFT(@Name,CHARINDEX('.',@Name)-1)
	SET @CreatedFileName=@Name
	WHILE EXISTS (SELECT * FROM Media WHERE url=@TempUrl)
	BEGIN
	    SET @Counter=@Counter+1
		SELECT @FileNameWithExtension=REVERSE(SUBSTRING(REVERSE(@TempUrl),0,CHARINDEX('/',REVERSE(@TempUrl))))
		SELECT @FileNameWithoutExtension=LEFT(@FileNameWithExtension,CHARINDEX('.',@FileNameWithExtension)-1)
		SELECT @FileExtension=Right(@FileNameWithExtension,LEN(@FileNameWithExtension)-CHARINDEX('.',@FileNameWithExtension))
		SET @CreatedFileName=(@MainFileNameWithoutExtension+CAST(@Counter AS VARCHAR(100))+'.'+@FileExtension)
		SET @TempUrl=REPLACE(@TempUrl,@FileNameWithExtension,@CreatedFileName)
	END

	INSERT INTO Media(Name,Url,Title,Alt,Description,ParentId) VALUES (@Name,@TempUrl,@Title,@Alt,@Description,@ParentId) 
	SET @Result='Success.'	
	set @CreatedId=@@IDENTITY
END	

--  DECLARE @MainFileNameWithoutExtension VARCHAR(100)
--  DECLARE @FileNameWithExtension VARCHAR(100)
--	DECLARE @FileNameWithoutExtension VARCHAR(100)
--	DECLARE @FileExtension VARCHAR(100)
--	DECLARE @TempUrl	VARCHAR(250)
--	SELECT @TempUrl='upload/2015/7/1small.png'
--	DECLARE @Counter INT = 0;

--	SET @MainFileNameWithoutExtension=LEFT('1small.png',CHARINDEX('.','1small.png')-1)

--	WHILE EXISTS (SELECT * FROM Media WHERE url=@TempUrl)
--	BEGIN
--	    SET @Counter=@Counter+1
--		SELECT @FileNameWithExtension=REVERSE(SUBSTRING(REVERSE(@TempUrl),0,CHARINDEX('/',REVERSE(@TempUrl))))
--		SELECT @FileNameWithoutExtension=LEFT(@FileNameWithExtension,CHARINDEX('.',@FileNameWithExtension)-1)
--		SELECT @FileExtension=Right(@FileNameWithExtension,LEN(@FileNameWithExtension)-CHARINDEX('.',@FileNameWithExtension))
--		SET @TempUrl=REPLACE(@TempUrl,@FileNameWithExtension,@MainFileNameWithoutExtension+CAST(@Counter AS VARCHAR(100))+'.'+@FileExtension)
--	END
--PRINT @TempUrl

--PRINT @TempUrl
--PRINT @TempUrl
--PRINT @TempUrl

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertPage]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertPage]   
	@Name	VARCHAR(100), 
	@Url	VARCHAR(100),   
	@MetaTitle varchar(250),
	@MetaKeyword varchar(250),
	@MetaDescription varchar(250),
	@Description varchar(max),            
	@Status bit, 
	@Result	VARCHAR(50) OUTPUT,
	@CreatedId	INT OUTPUT      
AS            
BEGIN
    IF NOT EXISTS(SELECT * FROM Page WHERE Name=@Name)
	BEGIN
	    --Finding URL--
	    DECLARE @Query				NVARCHAR(250)
		DECLARE @ParmDefinition		NVARCHAR(250)
		DECLARE @TempUrl			VARCHAR(100)

		Set @Query = 'Exec sp_GetURL @Url, @Sep, @TableName, @Id, @TempUrl OUTPUT'
		SET @ParmDefinition = '@Url VARCHAR(100), @Sep VARCHAR(1), @TableName VARCHAR(25), @Id INT, @TempUrl VARCHAR(100) OUTPUT'
		EXEC sp_executesql @query,   
			 @ParmDefinition,
			 @Url=@Url,
			 @Sep='-',
			 @TableName=null,
			 @Id=null, 
			 @TempUrl=@TempUrl OUTPUT
        --END--

		INSERT INTO Page(Name,Url,MetaTitle,MetaKeyword,MetaDescription,Description,Status) VALUES (@Name,@TempUrl,@MetaTitle,@MetaKeyword,@MetaDescription,@Description,@Status) 
		SET @Result='Success.'	
		set @CreatedId=@@IDENTITY
	END
	ELSE
		SET @Result='Already Exists.'
	END	

GO
/****** Object:  StoredProcedure [dbo].[sp_LoginUser]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_LoginUser]  
	@UserName	Varchar(50),
	@Password	Varchar(50),
	@Result		Varchar(50) OUTPUT
AS            
BEGIN
  IF EXISTS(SELECT * FROM [User] WHERE UserName=@UserName AND Password=@Password AND Status=1)
	SET @Result='Success.'
  ELSE
	SET @Result='Failed.'
END
 

GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateBulkBlogCategoryStatus]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_UpdateBulkBlogCategoryStatus] -- '24,25',1,null 
	@Id	Varchar(50),
	@Status bit,            
	@Result	VARCHAR(50) OUTPUT    
AS            
BEGIN
	--UPDATE Page SET Status=@Status WHERE Id in (select s from dbo.split(',',@Id)) 	
	--SET @Result='Success.'	
	BEGIN TRY
		DECLARE @dynamicUpdateQuery nvarchar(max)
		SET @dynamicUpdateQuery='UPDATE BlogCategory SET Status='+CAST(@Status AS Varchar(1))+ ' WHERE Id in (' +@id + ')';
		EXECUTE sp_executesql @dynamicUpdateQuery
		SELECT @Result='Updated Successfully.'
	END TRY
	BEGIN CATCH
		SELECT @Result=ERROR_MESSAGE()
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateBulkPageStatus]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateBulkPageStatus] -- '24,25',1,null 
	@Id	Varchar(50),
	@Status bit,            
	@Result	VARCHAR(50) OUTPUT    
AS            
BEGIN
	--UPDATE Page SET Status=@Status WHERE Id in (select s from dbo.split(',',@Id)) 	
	--SET @Result='Updated Successfully.'	
	BEGIN TRY
		DECLARE @dynamicUpdateQuery nvarchar(max)
		SET @dynamicUpdateQuery='UPDATE Page SET Status='+CAST(@Status AS Varchar(1))+ ' WHERE Id in (' +@id + ')';
		EXECUTE sp_executesql @dynamicUpdateQuery
		SELECT @Result='Updated Successfully.'
	END TRY
	BEGIN CATCH
		SELECT @Result=ERROR_MESSAGE()
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateMedia]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateMedia]   
	@Id	INT,
	@Name	VARCHAR(100),   
	@Url	VARCHAR(250),   
	@Title varchar(100),
	@Alt varchar(100),
	@Description varchar(100),           
	@Result	VARCHAR(50) OUTPUT    
AS            
BEGIN
	UPDATE Media SET Name=@Name,Url=@Url,Title=@Title,Alt=@Alt,Description=@Description WHERE Id=@Id 	
	SET @Result='Updated Successfully.'	
END


GO
/****** Object:  StoredProcedure [dbo].[sp_UpdatePage]    Script Date: 4/9/2021 10:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdatePage]   
	@Id	INT,
	@Name	VARCHAR(100),   
	@Url	VARCHAR(100),   
	@MetaTitle varchar(250),
	@MetaKeyword varchar(250),
	@MetaDescription varchar(250),
	@Description varchar(max),            
	@Status bit,            
	@Result	VARCHAR(50) OUTPUT,
	@CreatedUrl VARCHAR(100) OUTPUT    
AS            
BEGIN
    IF NOT EXISTS(SELECT * FROM Page WHERE Name=@Name AND Id<>@Id)
	BEGIN

	    --Finding URL--
	    DECLARE @Query				NVARCHAR(250)
		DECLARE @ParmDefinition		NVARCHAR(250)
		DECLARE @TempUrl			VARCHAR(100)

		Set @Query = 'Exec sp_GetURL @Url, @Sep, @TableName, @Id, @TempUrl OUTPUT'
		SET @ParmDefinition = '@Url VARCHAR(100), @Sep VARCHAR(1), @TableName VARCHAR(25), @Id INT, @TempUrl VARCHAR(100) OUTPUT'
		EXEC sp_executesql @query,   
			 @ParmDefinition,
			 @Url=@Url,
			 @Sep='-',
			 @TableName='Page',
			 @Id=@Id, 
			 @TempUrl=@TempUrl OUTPUT
        --END--

		UPDATE Page SET Name=@Name,Url=@TempUrl,MetaTitle=@MetaTitle,MetaKeyword=@MetaKeyword,MetaDescription=@MetaDescription,Description=@Description,Status=@Status WHERE Id=@Id 	
		SET @Result='Updated Successfully.'
		SET @CreatedUrl=@TempUrl	
	END
	ELSE
		SET @Result='Already Exists.'
	END


GO
USE [master]
GO
ALTER DATABASE [PlacovuWebSite] SET  READ_WRITE 
GO
