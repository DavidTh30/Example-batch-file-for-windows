@echo off
SETLOCAL EnableDelayedExpansion
SET "IP_PREFIX=192.168.0."
SET "START_IP=1"
SET "END_IP=254"
SET "OUTPUT_FILE=pingable_ips.txt"

echo Scanning network %IP_PREFIX%%START_IP% to %IP_PREFIX%%END_IP%...

    FOR /L %%i IN (%START_IP%,1,%END_IP%) DO (
        ping -n 1 -w 100 !IP_PREFIX!%%i | findstr "Reply from" >NUL && (
            echo !IP_PREFIX!%%i
            echo > "%OUTPUT_FILE%" !IP_PREFIX!%%i
        )
    )

echo Scan complete. Results saved to %OUTPUT_FILE%.
ENDLOCAL
pause