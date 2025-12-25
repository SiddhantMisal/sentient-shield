9️⃣ Install Sysmon on Windows Server 2022
________________________________________
🟢 STEP 1: Download Sysmon (Official Source)
1.	Open browser on Windows Server 2022
2.	Go to:
https://learn.microsoft.com/en-us/sysinternals/downloads/sysmon
3.	Click Download Sysmon
4.	File downloaded:
Sysmon.zip
________________________________________
🟢 STEP 2: Extract & Move Sysmon (VERY IMPORTANT)
1.	Right-click Sysmon.zip
2.	Click Extract All
3.	After extraction, you will see:
Sysmon64.exe
Sysmon.exe
Eula.txt
4.	Create directory:
C:\Sysmon
5.	Move ALL extracted files to:
C:\Sysmon
✅ Final folder structure:
C:\Sysmon\Sysmon64.exe
C:\Sysmon\Sysmon.exe
C:\Sysmon\Eula.txt
________________________________________
🟢 STEP 3: Download Sysmon Configuration (CRITICAL)
3.1 Download Config File
Open browser and download SwiftOnSecurity Sysmon config:
https://github.com/SwiftOnSecurity/sysmon-config
Download:
sysmonconfig.xml
3.2 Move Config File
Move sysmonconfig.xml to:
C:\Sysmon
✅ Final structure:
C:\Sysmon\Sysmon64.exe
C:\Sysmon\sysmonconfig.xml
⚠️ Sysmon WILL FAIL if XML is not in same folder
________________________________________
🟢 STEP 4: Install Sysmon (RUN AS ADMIN)
4.1 Open PowerShell as Administrator
❗ MANDATORY
Right-click PowerShell → Run as Administrator
________________________________________
4.2 Navigate to Sysmon Directory
cd C:\Sysmon
Verify:
dir
You must see:
Sysmon64.exe
sysmonconfig.xml
________________________________________
4.3 Install Sysmon (FINAL COMMAND)
.\Sysmon64.exe -accepteula -i sysmonconfig.xml
✅ Expected Output (SUCCESS)
System Monitor v15.xx
Sysmon64 installed.
SysmonDrv installed.
SysmonDrv started.
Sysmon64 started.
🚀 No errors = Sysmon installed correctly
________________________________________
🟢 STEP 5: Verify Sysmon Installation
5.1 Verify Services
sc query sysmon64
✔ Expected:
STATE : RUNNING
