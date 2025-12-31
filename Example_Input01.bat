@echo off
echo Example Input :
echo -Yes/No chose

echo.
SET /P input="Enter 'y' for Yes or 'n' for No: "

IF /I "%input%"=="y" (
    ECHO You chose Yes.
) ELSE IF /I "%input%"=="n" (
    ECHO You chose No.
) ELSE (
    ECHO Invalid input.
)

pause