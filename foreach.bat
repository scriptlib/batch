@echo off
setlocal
set cmds=echo
set exps=*
if not "%~1"=="" set exps=%1
if not "%~2"=="" set cmds=%2 %3 %4 %5 %6 %7 %8 %9
for %%i in (%exps%) do %cmds% "%%~i"
endlocal
