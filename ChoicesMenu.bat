@echo off &title choose menu
echo Example :
echo -set Choices menu

echo.
echo 1) Choices one
echo 2) Choices two
set /p input=">>"
if %input% EQU 1 goto Menu01
if %input% NEQ 1 goto Menu02

:Menu01
set OUT="Menu01"

:Menu02
set OUT="Menu02"


echo %OUT%
pause