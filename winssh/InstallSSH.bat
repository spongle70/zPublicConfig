@echo off

echo "Speed up Powershell processing"
Powershell.exe -ExecutionPolicy Bypass -File "C:\Packages\SSH\SpeedUp.ps1"

echo "Download and unpack OpenSSH"
Powershell.exe -ExecutionPolicy Bypass -File "C:\Packages\SSH\Download.ps1"


if exist "C:\Program Files\OpenSSH\sshd.exe" (
 echo "OPENSSH  already installed"
) else (
   echo "NEW installation"
   robocopy "C:\Packages\OpenSSH-Win64" "C:\Program Files\OpenSSH" /E
)

if exist "C:\Program Files\OpenSSH\install-sshd.ps1" (
 echo "SSH install script"
 Powershell.exe -ExecutionPolicy Bypass -File "C:\Program Files\OpenSSH\install-sshd.ps1"
)

if exist "C:\Packages\SSH\Firewall.ps1" (
 Powershell.exe -ExecutionPolicy Bypass -File "C:\Packages\SSH\Firewall.ps1"
 net start sshd
)