@echo off
echo Example :
echo -overwrite the same line
echo -set backspace in batch file evaluate with VBS
::chcp 65001 > nul
echo Loading

CALL :EVALUATE "chr(8)"
SET backspace=%result%

for /l %%x in (1, 1, 100) do (
<nul set /p =%backspace%%backspace%%backspace%%backspace%%backspace%
echo| set /p =[%%x%%]
CALL PING 127.0.0.1 -n 1 > NUL
rem CALL dir/w > NUL
)

echo.
pause
GOTO:EOF

:EVALUATE           -- evaluate with VBS and return to result variable
@IF [%1]==[] echo Input argument missing & goto :EOF 
@echo wsh.echo "result="^&eval("%~1") > %temp%\evaluate_tmp_32767.vbs 
@for /f "delims=" %%a IN ('cscript //nologo %temp%\evaluate_tmp_32767.vbs') do @set "%%a" 
@del %temp%\evaluate_tmp_32767.vbs
::echo %result%
@goto:EOF