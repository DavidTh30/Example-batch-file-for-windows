@echo off
echo Example :
echo -loop
echo -if, elseif , else
echo -run command at loading time
echo -text on the same line

echo Loading
echo | set /p="["
for /l %%x in (1, 1, 100) do (
CALL PING 127.0.0.1 -n 1 > NUL
IF /I %%x==50 (
    echo | set /p=%%x,
    CALL dir/w > NUL
) ELSE IF /I %%x==75 (
    echo | set /p=%%x
    CALL dir/w > NUL
) ELSE (
  echo | set /p=""
)
)
echo | set /p="]"

echo.

pause