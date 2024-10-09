@echo off
setlocal enableDelayedExpansion

rem ***************************************************************************
rem * author: Christoph P. Neumann
rem ***************************************************************************
cd /D "%~dp0"
for %%i in (%CD%) do set BASEDIR=%%~ni
echo == %BASEDIR% ==

rem RESET
del "%BASEDIR%.zip" > nul 2> nul

echo ^> Clean...
cd java
cmd /D/C cpn_clean_java.cmd 2> nul
cd ..
cd python
cmd /D/C cpn_clean_py.cmd 2 > nul
cd ..

echo ^> Zipping...
cd ..
7z a -xr@"%BASEDIR%\%~n0.lst" "%BASEDIR%.zip" .\%BASEDIR%\*
move "%BASEDIR%.zip" .\%BASEDIR%\
cd /D "%~dp0"

pause