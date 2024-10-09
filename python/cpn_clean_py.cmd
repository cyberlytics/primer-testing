@echo off

rem ***************************************************************************
rem * author: Christoph P. Neumann
rem ***************************************************************************
cd /D "%~dp0"

for %%F in (*.py) do (
    del "%%~nF.pyc" 2> nul
)

rmdir __pycache__   /s /q 2> nul
rmdir .pytest_cache /s /q 2> nul

rem pause