@echo off
if "%~1"=="" goto end
setlocal
set cmds=7z x 
if "%~2"=="" goto nodst
%cmds% "%~1" -o"%~2"
goto end
:nodst
%cmds% "%~1"
:end
endlocal
