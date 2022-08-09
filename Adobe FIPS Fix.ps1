"`n"

Write-Host "!!!RUN UNDER USER THAT IS HAVING ISSUES PROFILE, NOT AS ADMIN!!!"

"`n"

Write-Host "This Script will kill Adobe Acrobat Process and set the bFIPSMode registry key to 0 to fix the Adobe FIPS issue"
Read-Host -Prompt "Press enter to continue..."


Stop-Process -Name "Acrobat"
set-ItemProperty -Path "HKCU:\Software\Adobe\Adobe Acrobat\DC\AVGeneral" -Name "bFIPSMode" -Value 0
Get-ItemProperty -Path "HKCU:\Software\Adobe\Adobe Acrobat\DC\AVGeneral" -Name "bFIPSMode"

Read-Host -Prompt "bFIPSMode (confirm above) should now be set to 0.  Press Enter to Exit"