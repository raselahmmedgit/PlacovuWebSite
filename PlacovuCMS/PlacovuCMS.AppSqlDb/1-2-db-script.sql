USE [PlacovuWebSite]
GO
INSERT [dbo].[AspNetRoles] ([Id], [IsActive], [Name], [NormalizedName], [ConcurrencyStamp]) 
VALUES (N'Admin', 1, N'Admin', N'ADMIN', N'140025ba-2481-48c8-b26e-2f6e0292defb')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Country], [Age], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) 
VALUES (N'4b1fc815-ead7-4426-b6db-548d82f3d736', 0, 0, N'admin@mail.com', N'ADMIN@MAIL.COM', N'admin@mail.com', N'ADMIN@MAIL.COM', 0, N'AQAAAAEAACcQAAAAENZ3TncTdBDuG1fsC+Zm+RzikuXhANgB2gXWcDDZ/p1CpPnnOkdK60F68JVoAYvnJw==', N'JOB4HI3MRDFGB2ZAWOYQZMNIQC3BNRGZ', N'069c0c34-2d79-435a-a61e-a7cc47345ba0', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) 
VALUES (N'4b1fc815-ead7-4426-b6db-548d82f3d736', N'Admin')
GO
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

SET IDENTITY_INSERT [dbo].[ContactUsConfig] ON 
GO
INSERT [dbo].[ContactUsConfig] ([Id], [ContactUsConfigType], [ToEmailAddress], [FromEmailAddress], [FromEmailAddressDisplayName], [PhoneNumber], [PhoneNumberDisplayName], [TestEmailAddress], [DisplayOrder]) 
VALUES (1, N'Main', N'placovuwebsite@gmail.com', N'placovuwebsite@gmail.com', N'Placovu - Contact Us', N'', N'Placovu - Contact Us', NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[ContactUsConfig] OFF
GO
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

SET IDENTITY_INSERT [dbo].[EmailSmsConfig] ON 
GO
INSERT [dbo].[EmailSmsConfig] ([Id], [FromEmailAddress], [FromEmailAddressDisplayName], [Password], [Host], [Port], [AllowSsl], [SendGridFromEmailAddress], [SendGridFromEmailAddressDisplayName], [SendGridApiKey], [TestEmailAddress], [SmsFromNumber], [SmsAccountSid], [SmsAuthToken], [AllowSms], [AllowEmail]) 
VALUES (1, N'placovuwebsite@gmail.com', N'PlacoVU', N'!@Placovu!@2021', N'smtp.gmail.com', N'587', 1, N'placovuwebsite@gmail.com', N'PlacoVU', N'', N'Rasel Ahmed_rasel@placovu.com', NULL, N'', N'', 0, 1)
GO
SET IDENTITY_INSERT [dbo].[EmailSmsConfig] OFF
GO

SET IDENTITY_INSERT [dbo].[SiteInfo] ON 
GO
INSERT [dbo].[SiteInfo] ([Id], [SiteTitle], [SiteDescription], [SiteKeywords], [SiteAuthor], [SiteCanonicalUrl], [SiteShortlinkUrl], [SiteUrl], [SiteImageUrl], [SiteName], [SitePhoneNumber], [SiteOfficeNumber], [SiteLogoUrl], [SiteFavicon16X16Url], [SiteFavicon32X32Url], [SiteFavicon180x180Url], [SiteFavicon192x192Url], [AddedOn]) 
VALUES (1, N'PlacoVU', N'Elevating the Value of Your Product Data', N'Elevating the Value of Your Product Data', N'http://placovu.com/', N'https://www.cityglasscompany.net/', N'https://www.cityglasscompany.net/', N'https://www.cityglasscompany.net/', N'https://www.cityglasscompany.net/upload/logo/favicon-192x192.png', N'PlacoVU', N'01911-000000', N'01911-000000', N'upload/logo/logo.png', N'upload/logo/favicon-16x16.png', N'upload/logo/favicon-32x32.png', N'upload/logo/favicon-180x180.png', N'upload/logo/favicon-192x192.png', CAST(N'2021-05-27T08:52:26.580' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[SiteInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[SocialMediaConfig] ON 
GO
INSERT [dbo].[SocialMediaConfig] ([Id], [FacebookUrl], [LinkedInUrl], [InstagramUrl], [TwitterUrl], [TumblrUrl], [YouTubeUrl]) 
VALUES (1, N'https://www.facebook.com/', N'https://www.linkedin.com/company/', N'https://www.instagram.com/', N'https://twitter.com/', N'', N'https://www.youtube.com/')
GO
SET IDENTITY_INSERT [dbo].[SocialMediaConfig] OFF
GO
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------