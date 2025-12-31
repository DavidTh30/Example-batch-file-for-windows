@echo off
echo Example checking argument
echo.

:: Check if the first argument (%1)
IF /I "%~1"=="" (
    ECHO Use /? for help.
    pause
    GOTO :EOF
)

IF /I "%~1"=="/?" (
    ECHO Help section: Provide a [filename].
    pause
    GOTO :EOF
)

:: Check if the file passed as argument exists
IF EXIST "%~1" (
    ECHO File "%~1" found.
) ELSE (
    ECHO Error: File "%~1" not found.
)

pause