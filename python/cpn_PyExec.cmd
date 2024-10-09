@echo off

rem ***************************************************************************
rem * author: Christoph P. Neumann
rem ***************************************************************************
cd /D "%~dp0"

echo == Interpret: no parameter ==
python factorial.py

echo == Interpret: compute factorial of 5 ==
python factorial.py 5

pause