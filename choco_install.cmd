@echo off
cls
:start
cls
echo Choose any number to install program.
echo 0. Exit.
echo 1. chocolatey installation.
echo 2. Rtool installation.
echo 3. R installation.
echo 4. Pandoc installation.
echo 5. TinyTeX installation.
echo 6. Anaconda-Python installation.
echo 7. VSCode-insider installation.
echo 8. Git installation.

set choice=
set /p choice=Type the number to install.
if not '%choice%'=='' set choice=%choice:~0,1%
IF '%choice%'=='0' exit
IF '%choice%'=='1' GOTO CHOCOLATEY
IF '%choice%'=='2' GOTO RTOOL
IF '%choice%'=='3' GOTO R
IF '%choice%'=='4' GOTO PANDOC
IF '%choice%'=='5' GOTO TINYTEX
IF '%choice%'=='6' GOTO ANACONDA
IF '%choice%'=='7' GOTO VSCODE
IF '%choice%'=='8' GOTO GIT
ECHO "%choice%" is not valid, try again
ECHO.
goto start

:CHOCOLATEY
cls
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command " [System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
echo Done!
GOTO start
GOTO END

:RTOOL
cls
choco upgrade rtools -y
echo Done!
GOTO start
GOTO END

:R
cls
choco upgrade r.project -y
echo Done!
GOTO start
GOTO END

:PANDOC
cls
choco upgrade pandoc -y
echo Done!
GOTO start
GOTO END

:TINYTEX
cls
choco upgrade tinytex -y
echo Done!
GOTO start
GOTO END

:ANACONDA
cls
choco upgrade anaconda3 -y
echo Done!
GOTO start
GOTO END

:VSCODE
cls
choco upgrade vscode-insiders -y
echo Done!
GOTO start
GOTO END

:GIT
cls
choco upgrade git -y
echo Done!
GOTO start
GOTO END
:end
pause
