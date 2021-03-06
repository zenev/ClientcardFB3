------------------------------
Insert FB3 (DBVersion, ExeVersion, Comment, UpdateDate, UpdatedBy)
Values ( '07/01/2013', '2013.04.29'
,--'Tables Add EmailAddress to Volunteers
--; Func   GetFiscalPeriodFromDate
'SP     InsertHouseholdMember'
,GetDate(), 'CSDG')

SELECT * FROM FB3 order BY EXEVersion
GO
------------------------------

Print 'Update SP InsertHouseholdMember'
/****** Object:  StoredProcedure [dbo].[InsertHouseholdMember]    Script Date: 02/22/2012 
Updated 2012-04-12 added NotCounted
Updated 2013-02-06 return new HouseholdMembers ID as Parameter @ID
Updated 2013-07-03 added relationship, phone, emailaddress
******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertHouseholdMember]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InsertHouseholdMember]
GO

CREATE PROCEDURE [dbo].[InsertHouseholdMember] 
( 	@Inactive				bit,
	@HouseholdID			int,
	@LastName				nvarchar(50),
	@FirstName				nvarchar(50),
	@Sex					char(1),
	@Birthdate				datetime,
	@AgeGroup				int,
	@SpecialDiet			bit,
	@Notes					nvarchar(max),
	@WorksInArea			bit,
	@Employer				nvarchar(50),
	@EmpAddress				nvarchar(50),
	@EmpCity				nvarchar(40),
	@EmpZipcode				nvarchar(10),
	@EmpPhone				nvarchar(30),
	@CreatedBy				nvarchar(50),
	@UserFlag0				bit,
	@UserFlag1				bit,
	@VolunteersAtFoodBank	bit,
	@Age					int,
	@UseAge					bit,
	@NotIncludedInClientList bit,
	@CSFP					bit,
	@HeadHH					bit,
	@Language				int,
	@IsDisabled				bit,
	@CSFPExpiration			datetime,
	@CSFPComments			nvarchar(max),
	@CSFPRoute				int,
	@MemIDNbr				varchar(50),
	@MemIDType				smallint,
	@Race					smallint,
	@Hispanic				bit,
	@BackPack				bit,
	@BPExpiration			datetime,
	@BPSize					smallint,
	@BPSchool				int,
	@BPNotes				nvarchar(MAX),
	@NotCounted				bit,
	@Relationship			int,
	@Phone					varchar(20),
	@EmailAddress			varchar(50),
	@HispanicLatino			int,
	@RefugeeImmigrant		int,
	@LimitedEnglish			int,
	@MilitaryService		smallint,
	@DischargeStatus		smallint,
	@PartneredMarried		int,
	@LongTermHomeless		int,
	@ChronicallyHomeless	int,
	@Employed				int,
	@EmplolymentStatus		smallint ,
	@AmericanIndian			bit ,
	@AlaskaNative			bit ,
	@IndigenousToAmericas	bit ,
	@AsianIndian			bit ,
	@Cambodian				bit ,
	@Chinese				bit ,
	@Filipino				bit ,
	@Japanese				bit ,
	@Korean					bit ,
	@Vietnamese				bit ,
	@OtherAsian				bit ,
	@IndigenousAfricanBlack bit ,
	@AfricanAmericanBlack	bit ,
	@OtherBlack				bit ,
	@HawaiianNative			bit ,
	@Polynesian				bit ,
	@Micronesian			bit ,
	@OtherPacificIslander	bit ,
	@ArabIranianMiddleEastern bit ,
	@OtherWhiteCaucasian	bit ,
	@EthnicOther			bit ,
	@EthnicUnknown			bit ,
	@EducationLevel			smallint,
	@Homeless				smallint,
	@HomelessNbrTimes		smallint,
	@HomelessNbrMonths		smallint,
	@ID						int OUTPUT
)
AS 
BEGIN
DECLARE @Created datetime
SELECT @Created = GETDATE()

INSERT INTO [HouseholdMembers]
           ([Inactive]
           ,[HouseholdID]
           ,[LastName]
           ,[FirstName]
           ,[Sex]
           ,[Birthdate]
           ,[AgeGroup]
           ,[SpecialDiet]
           ,[Notes]
           ,[WorksInArea]
           ,[Employer]
           ,[EmpAddress]
           ,[EmpCity]
           ,[EmpZipcode]
           ,[EmpPhone]
           ,[Created]
           ,[CreatedBy]
           ,[Modified]
           ,[ModifiedBy]
           ,[UserFlag0]
           ,[UserFlag1]
           ,[VolunteersAtFoodBank]
           ,[Age]
           ,[UseAge]
           ,[NotIncludedInClientList]
           ,[CSFP]
           ,[HeadHH]
           ,[Language]
           ,[IsDisabled]
           ,[CSFPExpiration]
           ,[CSFPComments]
           ,[CSFPRoute]
           ,[MemIDNbr]
           ,[MemIDType]
           ,[Race]
           ,[Hispanic]
           ,[BackPack]
           ,[BPExpiration]
           ,[BPSize]
           ,[BPSchool]
           ,[BPNotes]
           ,[NotCounted]
           ,[Relationship]
           ,[Phone]
           ,[EmailAddress]
           )
     VALUES
           (@Inactive
           ,@HouseholdID
           ,@LastName
           ,@FirstName
           ,@Sex
           ,@Birthdate
           ,@AgeGroup
           ,@SpecialDiet
           ,@Notes
           ,@WorksInArea
           ,@Employer
           ,@EmpAddress
           ,@EmpCity
           ,@EmpZipcode
           ,@EmpPhone
           ,@Created
           ,@CreatedBy
           ,NULL
           ,''
           ,@UserFlag0
           ,@UserFlag1
           ,@VolunteersAtFoodBank
           ,@Age
           ,@UseAge
           ,@NotIncludedInClientList
           ,@CSFP
           ,@HeadHH
           ,@Language
           ,@IsDisabled
           ,@CSFPExpiration
           ,@CSFPComments
           ,@CSFPRoute
           ,@MemIDNbr
           ,@MemIDType
           ,@Race
           ,@Hispanic
           ,@BackPack
           ,@BPExpiration
           ,@BPSize
           ,@BPSchool
           ,@BPNotes
           ,@NotCounted
           ,@Relationship
           ,@Phone
           ,@EmailAddress
           )

SELECT @ID = @@IDENTITY

INSERT INTO [ClientcardFB3].[dbo].[Demographics]
           ([ID]
           ,[HispanicLatino]
           ,[RefugeeImmigrant]
           ,[LimitedEnglish]
           ,[MilitaryService]
           ,[DischargeStatus]
           ,[PartneredMarried]
           ,[LongTermHomeless]
           ,[ChronicallyHomeless]
           ,[Employed]
           ,[EmplolymentStatus]
           ,[AmericanIndian]
           ,[AlaskaNative]
           ,[IndigenousToAmericas]
           ,[AsianIndian]
           ,[Cambodian]
           ,[Chinese]
           ,[Filipino]
           ,[Japanese]
           ,[Korean]
           ,[Vietnamese]
           ,[OtherAsian]
           ,[IndigenousAfricanBlack]
           ,[AfricanAmericanBlack]
           ,[OtherBlack]
           ,[HawaiianNative]
           ,[Polynesian]
           ,[Micronesian]
           ,[OtherPacificIslander]
           ,[ArabIranianMiddleEastern]
           ,[OtherWhiteCaucasian]
           ,[EthnicOther]
           ,[EthnicUnknown]
           ,[EducationLevel]
           ,[Homeless]
           ,[HomelessNbrTimes]
		   ,[HomelessNbrMonths]
)
     VALUES
           (@ID
           ,@HispanicLatino
           ,@RefugeeImmigrant
           ,@LimitedEnglish
           ,@MilitaryService
           ,@DischargeStatus
           ,@PartneredMarried
           ,@LongTermHomeless
           ,@ChronicallyHomeless
           ,@Employed
           ,@EmplolymentStatus
           ,@AmericanIndian
           ,@AlaskaNative
           ,@IndigenousToAmericas
           ,@AsianIndian
           ,@Cambodian
           ,@Chinese
           ,@Filipino
           ,@Japanese
           ,@Korean
           ,@Vietnamese
           ,@OtherAsian
           ,@IndigenousAfricanBlack
           ,@AfricanAmericanBlack
           ,@OtherBlack
           ,@HawaiianNative
           ,@Polynesian
           ,@Micronesian
           ,@OtherPacificIslander
           ,@ArabIranianMiddleEastern
           ,@OtherWhiteCaucasian
           ,@EthnicOther
           ,@EthnicUnknown
           ,@EducationLevel
           ,@Homeless
		   ,@HomelessNbrTimes
		   ,@HomelessNbrMonths
)

END           

GO
GRANT EXECUTE ON [dbo].[InsertHouseholdMember] TO [CCFB_User] AS [dbo]
GO
----------------------------------------------------
