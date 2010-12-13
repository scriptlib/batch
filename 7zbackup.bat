@ECHO OFF
set TARGET=%~1
shift

:zadd
if "%1"=="" goto zdone
echo [%TARGET%] processing %1...
if exist "%1\backup_exclude.txt" (
call 7zG -mx9 a "%TARGET%" %1 -xr@%1\backup_exclude.txt
) else (
call 7zG -mx9 a "%TARGET%" %1
)
shift
goto zadd
:zdone
:end
