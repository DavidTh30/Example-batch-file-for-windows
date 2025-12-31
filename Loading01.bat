@echo off
echo Example nul+set :
echo -suppressing newlines
echo -combining commands in one line
echo -run command at loading time
echo -text on the same line

echo Loading
echo | set /p="["
for /l %%x in (1, 1, 100) do (
<nul set /p="#"
CALL PING 127.0.0.1 -n 1 > NUL
CALL dir/w > NUL
)
echo | set /p="]"

echo.

pause