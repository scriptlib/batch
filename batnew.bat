@echo off
setlocal
set batname=%~1
set batname=%batname:.bat=%
call %FS_WINDOWS_EDITOR% %FS_WORKSPACE%\batch\%batname%.bat
endlocal