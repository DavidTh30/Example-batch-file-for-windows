@echo off &setlocal
echo Example ASCII Art
echo -string to ascii
echo -get value
echo -return value
echo.

for /f "tokens=2 delims=:" %%i in ('chcp') do set /a oemcp=%%~ni
>"%temp%\boxdrw.~b64" echo(//4CJSQlYSViJVYlVSVjJVElVyVdJVwlWyUQJRQlNCUsJRwlACU8JV4lXyVaJVQlaSVmJWAlUCVsJWclaCVkJWUlWSVYJVIlUyVrJWolGCUMJQ==
>nul certutil.exe -f -decode "%temp%\boxdrw.~b64" "%temp%\boxdrw.~u16"
for /f %%i in ('type "%temp%\boxdrw.~u16"') do set "box=%%i"
del "%temp%\boxdrw.~b64" "%temp%\boxdrw.~u16"

setlocal EnableDelayedExpansion
for /l %%i in (0 1 39) do echo  !box:~%%i,1! %%box:~%%i,1%%&echo(
endlocal

chcp 65001 > nul

echo(
echo  %box:~39,1%%box:~17,1%%box:~15,1%%box:~17,1%%box:~12,1%
echo  %box:~0,1%A%box:~0,1%B%box:~0,1%
echo  %box:~16,1%%box:~17,1%%box:~18,1%%box:~17,1%%box:~1,1%
echo  %box:~0,1%C%box:~0,1%D%box:~0,1%
echo  %box:~13,1%%box:~17,1%%box:~14,1%%box:~17,1%%box:~38,1%
echo(
echo  %box:~22,1%%box:~26,1%%box:~24,1%%box:~26,1%%box:~8,1%
echo  %box:~7,1%A%box:~7,1%B%box:~7,1%
echo  %box:~25,1%%box:~26,1%%box:~27,1%%box:~26,1%%box:~6,1%
echo  %box:~7,1%C%box:~7,1%D%box:~7,1%
echo  %box:~21,1%%box:~26,1%%box:~23,1%%box:~26,1%%box:~9,1%
echo(
echo  %box:~34,1%%box:~26,1%%box:~30,1%%box:~26,1%%box:~5,1%
echo  %box:~0,1%A%box:~0,1%B%box:~0,1%
echo  %box:~19,1%%box:~26,1%%box:~37,1%%box:~26,1%%box:~2,1%
echo  %box:~0,1%C%box:~0,1%D%box:~0,1%
echo  %box:~33,1%%box:~26,1%%box:~28,1%%box:~26,1%%box:~11,1%
echo(
echo  %box:~35,1%%box:~17,1%%box:~31,1%%box:~17,1%%box:~4,1%
echo  %box:~7,1%A%box:~7,1%B%box:~7,1%
echo  %box:~20,1%%box:~17,1%%box:~36,1%%box:~17,1%%box:~3,1%
echo  %box:~7,1%C%box:~7,1%D%box:~7,1%
echo  %box:~32,1%%box:~17,1%%box:~29,1%%box:~17,1%%box:~10,1%
echo(

>nul chcp %oemcp%

pause