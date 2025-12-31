@echo off
echo Example :
echo -overwrite the same line
echo -set backspace in batch file

::chcp 65001 > nul

echo Loading
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"

for /l %%x in (1, 1, 100) do (
echo| set /p =%BS%%BS%%BS%%BS%%BS%
echo| set /p =[%%x%%]
CALL PING 127.0.0.1 -n 1 > NUL
rem CALL dir/w > NUL
)

echo.
pause