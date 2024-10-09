@echo off 

rem ***************************************************************************
rem * author: Christoph P. Neumann
rem ***************************************************************************
cd /d "%~dp0"
for %%i in (%CD%) do set BASEDIR=%%~ni
echo == %BASEDIR% ==

rem RESET
del "%BASEDIR%.7z" > nul 2> nul

echo == Zipping ==
cd ..
7z a -r -t7z -x"!.git" "%BASEDIR%.7z" .\%BASEDIR%\*
move "%BASEDIR%.7z" .\%BASEDIR%\
cd /D "%~dp0"

pause