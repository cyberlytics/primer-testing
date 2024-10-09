@echo off

rem ***************************************************************************
rem * author: Christoph P. Neumann
rem ***************************************************************************
cd /D "%~dp0"

echo ======== Build ========

echo == Compile ==
cmd /D/C "javac.exe" -cp .;junit-platform-console-standalone-1.8.1.jar Factorial.java FactorialTestML.java

echo == Run Tests ==
rem Change the code page of CMD console to UTF-8:
chcp 65001
rem Run JUnit:
cmd /D/C "java.exe" -jar junit-platform-console-standalone-1.8.1.jar --class-path . -select-class FactorialTestML

pause