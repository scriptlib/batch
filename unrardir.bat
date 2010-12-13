@ECHO OFF
setlocal
if X == X%1 goto usage
:rar
set name=%~n1
unrar x "%~1" %name%\
shift
if X == X%1 goto end
goto rar
goto end
:usage
echo %0 directory
:end
endlocal
