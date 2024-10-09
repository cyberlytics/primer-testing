@echo off

rem ***************************************************************************
rem * author: Christoph P. Neumann
rem ***************************************************************************
cd /D "%~dp0"

for %%F in (*.java) do (
    del "%%~nF.class" 2> nul
    del "%%~nF.jar"   2> nul
)

rem pause