@echo off

rem ***************************************************************************
rem * author: Christoph P. Neumann
rem ***************************************************************************
cd /D "%~dp0"

echo == pip install ... ==
pip install parameterized > nul 2>&1
pip install pytest > nul 2>&1

echo == Run python -m unittest ==
cmd /D/C python -m unittest -v factorial_test.py

echo.
echo ======================================================================
echo == Run pytest ==
cmd /D/C pytest -v --maxfail=1 -s factorial_test.py

pause