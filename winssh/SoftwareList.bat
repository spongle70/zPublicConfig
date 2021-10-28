@echo off
set check_computername=%COMPUTERNAME%
echo "Found computer %check_computername%"

echo "Dump software list"
Powershell.exe -ExecutionPolicy Bypass -File "C:\Packages\SSH\ListSoftware.ps1" > "C:\Packages\%check_computername%.txt"
