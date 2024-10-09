@echo off

rem ***************************************************************************
rem * author: Christoph P. Neumann
rem ***************************************************************************
cd /D "%~dp0"

set JAVA_TOOL_OPTIONS=

echo ======== Build ========

echo == Compile ==
javac.exe -cp . Factorial.java

echo == Run: no parameter ==
java.exe -cp . Factorial

echo == Run: compute factorial of 5 ==
java.exe -cp . Factorial 5

echo ======== Packaging ========

echo == JAR Packaging (Manifest) ==
jar.exe cfm Factorial.jar Manifest.txt Factorial.class

echo == Execute JAR: compute factorial of 5 ==
java.exe -jar Factorial.jar 5

pause