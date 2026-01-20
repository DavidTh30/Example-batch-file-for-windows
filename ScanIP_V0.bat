@echo off
SET "IP_PREFIX=192.168.0."
echo Start scan.....
FOR /L %%i IN (1,1,254) DO (
ping -n 1 -w 100 %IP_PREFIX%%%i | findstr "Reply from" >NUL && (
echo %IP_PREFIX%%%i
)
)
echo Scan complete.
pause