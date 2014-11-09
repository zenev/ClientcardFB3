--Updated 03/04/2012
--Updated 07/15/2012
--Updated 07/17/2012
--Updated 01/10/2013  SigPad at bottom of list
--Updated 03/01/2013  GetFiscalPeriodFromDate
--Updated 04/03/2013  SP-GroceryRescueLbs, Func-GroceryRescueWeek, 
--Updated 04/04/2013  FamilyCardSig
--Updated 11/05/2013  parm_ServiceGroup, pamr_Transportation
use [ClientcardFB3]
--SELECT FldVal FROM Preferences WHERE FldName in ('DefaultCity','FoodBankName')
SELECT * from FB3 ORDER BY EXEVersion
SET XACT_ABORT OFF
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[AccessReports] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[BackPackLog] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[CashDonations] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[CSFPLog] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[DaysOpen] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[Defaults] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[Demographics] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[Donors] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[EmailRecipients] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[FamilyCardSig] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[FB3] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[FBJobsActuals] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[FBJobsPlan] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[FoodDonations] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[HDBuildings] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[HDItems] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[HDRoutes] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[HDRouteSheet] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[HDRSClients] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[HHPoints] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[Household] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[HouseholdMembers] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[IncomeGroups] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[IncomeMatrix] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[MonthlyReports] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_AddressID] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_BackPackSchool] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_BackPackSize] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_ClientType] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_CSFPRoutes] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_CSFPSortOrder] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_DonationType] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_DonorType] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_EducationLevel] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_EmploymentStatus] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_FBJobs] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_FBProgram] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_FoodClass] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_Gender] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_HDBldgOperator] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_HDPrograms] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_HDRouteSheetStatus] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_HUDCategory] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_IDType] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_IncomeProcessID] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_LanguageType] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_MilitaryDischarge] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_MilitaryService] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_PhoneType] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_Race] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_Relationship] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_ServiceGroup] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_ServiceMethod] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_SvcCategory] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_SvcRules] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_Transportation] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_TrueFalse] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_VolunteerGroups] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_VolunteerType] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_VoucherType] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_YesNoUnk] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[Preferences] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[ServiceItems] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[SignaturePrompts] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[TrxLog] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[TrxLogSig] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[UserFields] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[UserList] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[VolunteerGroups] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[VolunteerHours] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[VolunteerJobs] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[Volunteers] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[VoucherItems] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[VoucherLog] TO [CCFB_User]
Revoke DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[ZipCodes] TO [CCFB_User]
--Stored Procedures
REVOKE EXECUTE ON [dbo].[BackPackListBySvcDate] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CalendarQuarterHudRace] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CalendarQuarterStats] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CSFPListByPeriod] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[FamilyStatsByZipCode] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[GroceryRescueLbs] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[HouseholdMembersCount] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[InsertHDRouteSheet] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[InsertHDRSClient] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[InsertHouseholdMember] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[MonthEndHDStatistics] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[MonthEndStatistics] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[TrxLogTotalFamilyByZipByQuarter] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[UnitedWayExport] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[UpdateHHMembersAdditionalData] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[UpdateHHMembersEthnicityData] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[UpdateHouseholdFirstServiceDate] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[UpdateHouseholdTrxDates] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[UpdateTrxLogFirstBits] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[VolunteerStats] TO [CCFB_User]
--Functions
REVOKE EXECUTE ON [dbo].[CalculatedAge] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CalculatedAgeGroup] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CntIndChronicallyHomeless] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CntIndEducationLevel] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CntIndEmploymentStatus] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CntIndFemale] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CntIndGenderOther] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CntIndHispanicLatino] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CntIndLimitedEnglish] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CntIndLongTermHomeless] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CntIndMale] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CntIndMilitaryDischarge] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CntIndMilitaryService] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CntIndRace] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[CntIndRefugee] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[GetFiscalMonth] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[GetFiscalPeriod] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[GetFiscalPeriodEndDate] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[GetFiscalPeriodFromDate] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[GetFiscalYear] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[GetFiscalYearStartDate] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[GroceryRescueWeek] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[HexToVarChar] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[IncomeLabel2] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[IncomeLabel3] TO [CCFB_User]
REVOKE EXECUTE ON [dbo].[NibbleToInt] TO [CCFB_User]
--Views
REVOKE SELECT ON [dbo].[RouteSheetHistory] TO [CCFB_User]
REVOKE SELECT ON [dbo].[TrxLogFiscalMonthsList] TO [CCFB_User]
REVOKE SELECT ON [dbo].[TrxLogFiscalTotalsByDay] TO [CCFB_User]
REVOKE SELECT ON [dbo].[TrxLogFiscalTotalsHDByDay] TO [CCFB_User]
REVOKE SELECT ON [dbo].[TrxLogHouseholdsCalFirstService] TO [CCFB_User]
REVOKE SELECT ON [dbo].[TrxLogTotalsByDay] TO [CCFB_User]
REVOKE SELECT ON [dbo].[TrxLogTotalsByMonth] TO [CCFB_User]

-- CCFB_User
DROP USER [CCFB_User]

use [ClientcardFB3]
CREATE USER [CCFB_User] FOR LOGIN [CCFB_User] WITH DEFAULT_SCHEMA=[dbo]
use [ClientcardFB3]
EXEC sp_addrolemember N'db_backupoperator', N'CCFB_User'

use [ClientcardFB3]

GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[AccessReports] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[BackPackLog] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[CashDonations] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[CSFPLog] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[DaysOpen] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[Defaults] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[Demographics] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[Donors] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[EmailRecipients] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[FamilyCardSig] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[FB3] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[FBJobsActuals] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[FBJobsPlan] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[FoodDonations] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[HDBuildings] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[HDItems] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[HDRoutes] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[HDRouteSheet] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[HDRSClients] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[HHPoints] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[Household] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[HouseholdMembers] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[IncomeGroups] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[IncomeMatrix] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[MonthlyReports] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_AddressID] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_BackPackSchool] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_BackPackSize] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_ClientType] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_CSFPRoutes] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_CSFPSortOrder] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_DonationType] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_DonorType] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_EducationLevel] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_EmploymentStatus] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_FBJobs] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_FBProgram] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_FoodClass] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_Gender] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_HDBldgOperator] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_HDPrograms] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_HDRouteSheetStatus] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_HUDCategory] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_IDType] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_IncomeProcessID] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_LanguageType] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_MilitaryDischarge] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_MilitaryService] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_PhoneType] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_Race] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_Relationship] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_ServiceGroup] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_ServiceMethod] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_SvcCategory] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_SvcRules] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_Transportation] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_TrueFalse] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_VolunteerGroups] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_VolunteerType] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_VoucherType] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[parm_YesNoUnk] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[Preferences] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[ServiceItems] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[SignaturePrompts] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[TrxLog] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[TrxLogSig] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[UserFields] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[UserList] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[VolunteerGroups] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[VolunteerHours] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[VolunteerJobs] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[Volunteers] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[VoucherItems] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[VoucherLog] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[ZipCodes] TO [CCFB_User]
--Stored Procedures
GRANT EXECUTE ON [dbo].[BackPackListBySvcDate] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CalendarQuarterHudRace] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CalendarQuarterStats] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CSFPListByPeriod] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[FamilyStatsByZipCode] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[GroceryRescueLbs] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[HouseholdMembersCount] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[InsertHDRouteSheet] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[InsertHDRSClient] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[InsertHouseholdMember] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[MonthEndHDStatistics] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[MonthEndStatistics] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[TrxLogTotalFamilyByZipByQuarter] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[UnitedWayExport] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[UpdateHHMembersAdditionalData] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[UpdateHHMembersEthnicityData] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[UpdateHouseholdFirstServiceDate] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[UpdateHouseholdTrxDates] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[UpdateTrxLogFirstBits] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[VolunteerStats] TO [CCFB_User]
--Functions
GRANT EXECUTE ON [dbo].[CalculatedAge] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CalculatedAgeGroup] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CntIndChronicallyHomeless] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CntIndEducationLevel] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CntIndEmploymentStatus] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CntIndFemale] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CntIndGenderOther] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CntIndHispanicLatino] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CntIndLimitedEnglish] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CntIndLongTermHomeless] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CntIndMale] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CntIndMilitaryDischarge] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CntIndMilitaryService] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CntIndRace] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[CntIndRefugee] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[GetFiscalMonth] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[GetFiscalPeriod] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[GetFiscalPeriodEndDate] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[GetFiscalYear] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[GetFiscalPeriodFromDate] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[GetFiscalYearStartDate] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[GroceryRescueWeek] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[HexToVarChar] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[IncomeLabel2] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[IncomeLabel3] TO [CCFB_User]
GRANT EXECUTE ON [dbo].[NibbleToInt] TO [CCFB_User]
--Views
GRANT SELECT ON [dbo].[RouteSheetHistory] TO [CCFB_User]
GRANT SELECT ON [dbo].[TrxLogFiscalMonthsList] TO [CCFB_User]
GRANT SELECT ON [dbo].[TrxLogFiscalTotalsByDay] TO [CCFB_User]
GRANT SELECT ON [dbo].[TrxLogFiscalTotalsHDByDay] TO [CCFB_User]
GRANT SELECT ON [dbo].[TrxLogHouseholdsCalFirstService] TO [CCFB_User]
GRANT SELECT ON [dbo].[TrxLogTotalsByDay] TO [CCFB_User]
GRANT SELECT ON [dbo].[TrxLogTotalsByMonth] TO [CCFB_User]


GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[TrxLogSig] TO [CCFB_User]
GRANT DELETE, INSERT, SELECT, UPDATE, VIEW DEFINITION ON [dbo].[SignaturePrompts] TO [CCFB_User]
