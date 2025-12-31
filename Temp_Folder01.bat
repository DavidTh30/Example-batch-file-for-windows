@echo off
echo Example :
echo -ramdom Temp folder
echo -recheck Temp folder before create folder
echo -enter/exit Temp folder
echo -display command line by line

echo.

setlocal enabledelayedexpansion
:loop
set folder=%temp%\char_%random%
if exist "%folder%" goto :loop
md "%folder%"
pushd "%folder%"
md one\one
md two

echo %folder%
rem for %%a in (a b c d) do set "%%a="
for /f "skip=3 delims=" %%a in ('tree') do (
	set line=%%a
        echo !line!
rem	if not defined a (
rem        set a=!line:~0,1!
rem        set b=!line:~1,1!
rem        ) else if not defined c (
rem        set c=!line:~0,1!
rem       	) else if not defined d (
rem        set d=!line:~0,1! 
rem        )
)
popd
rd /s /q "%folder%"
::echo "%a%" "%b%" "%c%" "%d%"
::echo | set /p = %b%%b%%b%

echo.
pause