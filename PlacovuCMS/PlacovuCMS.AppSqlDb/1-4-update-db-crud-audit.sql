USE [PlacovuWebSite]
GO

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.SocialMediaConfig ADD
	CreatedDate datetime NOT NULL CONSTRAINT DF_SocialMediaConfig_CreatedDate DEFAULT (getdate()),
	CreatedBy varchar(128) NULL,
	UpdatedDate datetime NULL,
	UpdatedBy varchar(128) NULL,
	IsDeleted bit NULL,
	DeletedDate datetime NULL,
	DeletedBy varchar(128) NULL
GO
ALTER TABLE dbo.SocialMediaConfig SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
GO

UPDATE dbo.[SocialMediaConfig]
SET CreatedDate=GETDATE(), CreatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, UpdatedDate=GETDATE(), UpdatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, DeletedDate=GETDATE(), DeletedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736', IsDeleted=0
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.SiteInfo ADD
	CreatedDate datetime NOT NULL CONSTRAINT DF_SiteInfo_CreatedDate DEFAULT (getdate()),
	CreatedBy varchar(128) NULL,
	UpdatedDate datetime NULL,
	UpdatedBy varchar(128) NULL,
	IsDeleted bit NULL,
	DeletedDate datetime NULL,
	DeletedBy varchar(128) NULL
GO
ALTER TABLE dbo.SiteInfo SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
GO

UPDATE dbo.[SiteInfo]
SET CreatedDate=GETDATE(), CreatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, UpdatedDate=GETDATE(), UpdatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, DeletedDate=GETDATE(), DeletedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736', IsDeleted=0
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.[Page] ADD
	CreatedDate datetime NOT NULL CONSTRAINT DF_Page_CreatedDate DEFAULT (getdate()),
	CreatedBy varchar(128) NULL,
	UpdatedDate datetime NULL,
	UpdatedBy varchar(128) NULL,
	IsDeleted bit NULL,
	DeletedDate datetime NULL,
	DeletedBy varchar(128) NULL
GO
ALTER TABLE dbo.[Page] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
GO

UPDATE dbo.[Page]
SET CreatedDate=AddedOn, CreatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, UpdatedDate=AddedOn, UpdatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, DeletedDate=AddedOn, DeletedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736', IsDeleted=0
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.News ADD
	CreatedDate datetime NOT NULL CONSTRAINT DF_News_CreatedDate DEFAULT (getdate()),
	CreatedBy varchar(128) NULL,
	UpdatedDate datetime NULL,
	UpdatedBy varchar(128) NULL,
	IsDeleted bit NULL,
	DeletedDate datetime NULL,
	DeletedBy varchar(128) NULL
GO
ALTER TABLE dbo.News SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
GO

UPDATE dbo.[News]
SET CreatedDate=GETDATE(), CreatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, UpdatedDate=GETDATE(), UpdatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, DeletedDate=GETDATE(), DeletedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736', IsDeleted=0
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.[Menu] ADD
	CreatedDate datetime NOT NULL CONSTRAINT DF_Menu_CreatedDate DEFAULT (getdate()),
	CreatedBy varchar(128) NULL,
	UpdatedDate datetime NULL,
	UpdatedBy varchar(128) NULL,
	IsDeleted bit NULL,
	DeletedDate datetime NULL,
	DeletedBy varchar(128) NULL
GO
ALTER TABLE dbo.[Menu] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
GO

UPDATE dbo.[Menu]
SET CreatedDate=AddedOn, CreatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, UpdatedDate=AddedOn, UpdatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, DeletedDate=AddedOn, DeletedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736', IsDeleted=0
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.[Media] ADD
	CreatedDate datetime NOT NULL CONSTRAINT DF_Media_CreatedDate DEFAULT (getdate()),
	CreatedBy varchar(128) NULL,
	UpdatedDate datetime NULL,
	UpdatedBy varchar(128) NULL,
	IsDeleted bit NULL,
	DeletedDate datetime NULL,
	DeletedBy varchar(128) NULL
GO
ALTER TABLE dbo.[Media] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
GO

UPDATE dbo.[Media]
SET CreatedDate=AddedOn, CreatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, UpdatedDate=AddedOn, UpdatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, DeletedDate=AddedOn, DeletedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736', IsDeleted=0
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.[EmailSmsHistory] ADD
	CreatedDate datetime NOT NULL CONSTRAINT DF_EmailSmsHistory_CreatedDate DEFAULT (getdate()),
	CreatedBy varchar(128) NULL,
	UpdatedDate datetime NULL,
	UpdatedBy varchar(128) NULL,
	IsDeleted bit NULL,
	DeletedDate datetime NULL,
	DeletedBy varchar(128) NULL
GO
ALTER TABLE dbo.[EmailSmsHistory] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
GO


UPDATE dbo.[EmailSmsHistory]
SET CreatedDate=GETDATE(), CreatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, UpdatedDate=GETDATE(), UpdatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, DeletedDate=GETDATE(), DeletedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736', IsDeleted=0
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.[EmailSmsConfig] ADD
	CreatedDate datetime NOT NULL CONSTRAINT DF_EmailSmsConfig_CreatedDate DEFAULT (getdate()),
	CreatedBy varchar(128) NULL,
	UpdatedDate datetime NULL,
	UpdatedBy varchar(128) NULL,
	IsDeleted bit NULL,
	DeletedDate datetime NULL,
	DeletedBy varchar(128) NULL
GO
ALTER TABLE dbo.[EmailSmsConfig] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
GO

UPDATE dbo.[EmailSmsConfig]
SET CreatedDate=GETDATE(), CreatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, UpdatedDate=GETDATE(), UpdatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, DeletedDate=GETDATE(), DeletedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736', IsDeleted=0
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.[ContactUsConfig] ADD
	CreatedDate datetime NOT NULL CONSTRAINT DF_ContactUsConfig_CreatedDate DEFAULT (getdate()),
	CreatedBy varchar(128) NULL,
	UpdatedDate datetime NULL,
	UpdatedBy varchar(128) NULL,
	IsDeleted bit NULL,
	DeletedDate datetime NULL,
	DeletedBy varchar(128) NULL
GO
ALTER TABLE dbo.[ContactUsConfig] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
GO

UPDATE dbo.[ContactUsConfig]
SET CreatedDate=GETDATE(), CreatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, UpdatedDate=GETDATE(), UpdatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, DeletedDate=GETDATE(), DeletedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736', IsDeleted=0
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.[BlogCategory] ADD
	CreatedDate datetime NOT NULL CONSTRAINT DF_BlogCategory_CreatedDate DEFAULT (getdate()),
	CreatedBy varchar(128) NULL,
	UpdatedDate datetime NULL,
	UpdatedBy varchar(128) NULL,
	IsDeleted bit NULL,
	DeletedDate datetime NULL,
	DeletedBy varchar(128) NULL
GO
ALTER TABLE dbo.[BlogCategory] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
GO

UPDATE dbo.[BlogCategory]
SET CreatedDate=AddedOn, CreatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, UpdatedDate=AddedOn, UpdatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, DeletedDate=AddedOn, DeletedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736', IsDeleted=0
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.[Blog] ADD
	CreatedDate datetime NOT NULL CONSTRAINT DF_Blog_CreatedDate DEFAULT (getdate()),
	CreatedBy varchar(128) NULL,
	UpdatedDate datetime NULL,
	UpdatedBy varchar(128) NULL,
	IsDeleted bit NULL,
	DeletedDate datetime NULL,
	DeletedBy varchar(128) NULL
GO
ALTER TABLE dbo.[Blog] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
GO

UPDATE dbo.[Blog]
SET CreatedDate=AddedOn, CreatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, UpdatedDate=AddedOn, UpdatedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736'
, DeletedDate=AddedOn, DeletedBy=N'4b1fc815-ead7-4426-b6db-548d82f3d736', IsDeleted=0
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------

DROP PROCEDURE [dbo].[sp_GetMediaById];  
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------

DROP PROCEDURE [dbo].[sp_GetPageWithPaging];  
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------

DROP PROCEDURE [dbo].[sp_GetBlogCategoryWithPaging];  
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------

UPDATE dbo.[EmailSmsConfig]
SET [FromEmailAddress]=N'cityglasscompany4@gmail.com'
, [Password]=N'Qwer!2342021'
, [SendGridFromEmailAddress]=N''
WHERE Id=1
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------