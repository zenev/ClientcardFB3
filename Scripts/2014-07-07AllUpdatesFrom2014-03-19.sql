------------------------------
Insert FB3 (DBVersion, ExeVersion, Comment, UpdateDate, UpdatedBy)
Values ( '07/07/2014', '2014.07.07'
,'Added SchSupply Fields to Household and Household members
; Added File Menu
; Added Date Filter on Find Client'
,GetDate(), 'CSDG')
SELECT * FROM FB3 order BY EXEVersion
GO
------------------------------
/*
   Monday, June 30, 201412:30:15 PM
   User: 
   Server: T-QOSMIO-10\X2008
   Database: ClientcardFB3
   Application: 
*/

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
ALTER TABLE dbo.Household ADD
    SchSupplyPickupPerson nvarchar(50) NULL,
	SchSupplyRegDate datetime NULL,
	SchSupplyFlag bit NULL,
   	SchSupplyRegistration int NULL
GO
ALTER TABLE dbo.Household SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
GO
Update household 
SET SchSupplyPickupPerson = ''
, SchSupplyRegDate = '1/1/1900'
, SchSupplyFlag = 0
,SchSupplyRegistration = 0


/*
   Wednesday, July 02, 201410:40:31 AM
   User: 
   Server: T-QOSMIO-10\X2008
   Database: ClientcardFB3
   Application: 
*/

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
ALTER TABLE dbo.HouseholdMembers ADD
	Grade int NULL,
	SchSupply bit NULL,
	SchSupplyDelivered datetime NULL,
    SchSupplySchool int NULL
GO
ALTER TABLE dbo.HouseholdMembers SET (LOCK_ESCALATION = TABLE)
GO
COMMIT

Update HouseholdMembers
   set Grade = -1
     , SchSupply = 0
     , SchSupplyDelivered = '1/1/1900'
     , SchSupplySchool = 0

GO

/****** Object:  Table [dbo].[parm_SchSupplySchool]    Script Date: 07/07/2014 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[parm_SchSupplySchool]') AND type in (N'U'))
DROP TABLE [dbo].[parm_SchSupplySchool]
GO

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[parm_SchSupplySchool](
	[ID] [smallint] IDENTITY(0,1) NOT NULL,
	[Type] [nvarchar](30) NULL,
	[SortOrder] [int] NULL,
	[ShortName] [nvarchar](8) NULL,
 CONSTRAINT [PK_parm_SchSupplySchool] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_SchSupplySchool] TO [CCFB_User]
GO
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('No Selection' , 0, 'NS')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Amboy Middle' , 1, 'Ambo')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('BGHS' , 2, 'BGHS')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('CAM' , 3, 'CAM')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Captain Strong' , 4, 'CAPS')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Chief Umtuch' , 5, 'UMTC')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Daybreak' , 6, 'DAYB')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Endeavour' , 7, 'ENDE')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Glenwood Heights' , 8, 'GLEN')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Hockinson High' , 9, 'HOCH')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Hockinson Middle' , 10, 'HOCM')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Hockinson Primary' , 11, 'HOCP')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Home School' , 12, 'HOMS')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Homelink' , 13, 'HOML')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Laurin' , 14, 'LAUR')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Maple Grove Middle' , 15, 'MGMS')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Maple Grove Primary' , 16, 'MGPS')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Meadow Glade Adventist' , 17, 'MGAS')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Pleasant Valley Middle' , 18, 'PVMS')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Pleasant Valley Primary' , 19, 'PVPS')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Prairie High' , 20, 'PRAI')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Riverlink' , 21, 'RIVL')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('St. Lourdes' , 22, 'SLOUR')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Summit View High' , 23, 'SVHS')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Tukes Valley Middle' , 24, 'TVMS')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Tukes Valley Primary' , 25, 'TVPS')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Woodland High' , 26, 'WLHS')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Woodland Intermediate' , 27, 'WLIS')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Woodland Middle' , 28, 'WLMS')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplySchool] ([Type],[SortOrder],[ShortName])
     VALUES ('Yacolt' , 29, 'YACO')
     
GO

/****** Object:  Table [dbo].[parm_SchSupplyRegistration]    Script Date: 07/07/2014 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[parm_SchSupplyRegistration]') AND type in (N'U'))
DROP TABLE [dbo].[parm_SchSupplyRegistration]
GO

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[parm_SchSupplyRegistration](
	[ID] [smallint] IDENTITY(0,1) NOT NULL,
	[Type] [nvarchar](30) NULL,
	[SortOrder] [int] NULL,
	[ShortName] [nvarchar](8) NULL,
 CONSTRAINT [PK_parm_SchSupplyRegistration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_SchSupplyRegistration] TO [CCFB_User]
GO

INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplyRegistration] ([Type],[SortOrder],[ShortName])
     VALUES ('NCCFB' , 99, 'N')
INSERT INTO [ClientcardFB3].[dbo].[parm_SchSupplyRegistration] ([Type],[SortOrder],[ShortName])
     VALUES ('ACS' , 1, 'A')
GO
