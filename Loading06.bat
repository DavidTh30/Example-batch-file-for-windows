@echo off
echo Example :
echo -set backspace in batch file
echo -set ESC in batch file

echo Loading

for /F %%a in ('"prompt $H$E & echo on & for %%b in (1) do rem"') do (
  set "BS=%%a"
  set "ESC=%%b"
)

for /l %%x in (1, 1, 100) do (
echo| set /p =%BS%%BS%%BS%%BS%%BS%
echo| set /p =[%%x%%]
CALL PING 127.0.0.1 -n 1 > NUL
rem CALL dir/w > NUL
)

echo.
pause