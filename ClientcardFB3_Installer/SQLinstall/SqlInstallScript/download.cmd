set sqlInstallName=SQLEXPRWT_ENU.exe

echo "Determine 32 vs 64 bit"
wmic os get osarchitecture | find /i "64" > nul
set is32=%errorlevel%
echo %is32%

if %is32%==1 (
	echo "32 bit"
	
	set downloadFile=http://download.microsoft.com/download/0/4/B/04BE03CD-EAF3-4797-9D8D-2E08E316C998/SQLManagementStudio_x86_ENU.exe
	
) else (
	echo "64 bit"
	
	set downloadFile=http://download.microsoft.com/download/0/4/B/04BE03CD-EAF3-4797-9D8D-2E08E316C998/SQLEXPRWT_x64_ENU.exe
)

powershell (New-Object System.Net.WebClient).DownloadFile(\"%downloadFile%\", \"%CD%\%sqlInstallName%\")
