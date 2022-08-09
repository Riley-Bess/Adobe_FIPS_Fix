# Adobe_FIPS_Fix
Fixes Adobe FIPS Issue via Powershell

This needs to be run under the profile that gets an error with FIPS mode in Adobe Acrobat when attempting to save a PDF

Script will end the Adobe Acrobat process and then go into the registry and change the bFIPSMode value to 0 under HKCU:\Software\Adobe\Adobe Acrobat\DC\AVGeneral
and then confirm that change by reading out the value of bFIPSMode after the change.
