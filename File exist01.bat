@echo off
echo Example File exist:

echo.
SET "fileName=Product.dat"

IF EXIST "%fileName%" (
    ECHO %fileName% found.
) ELSE (
    ECHO %fileName% not found.
)

pause