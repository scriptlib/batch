@echo %DEBUG% off
setlocal
if "%~1" == "" goto usage
set args=-nv -t 3 -nc -w 1 -nH -r -l 0 -A .jpg --exclude-domains=simg.moko.cc -D www.moko.cc,img.moko.cc -H --cut-dirs=6
set name=%~1
set dname=%~2
if "%dname%"=="" set dname=%name%



goto _start

:_run
echo %*
%*
goto :eof

:_start
call :_run if not exist %dname%\NUL mkdir %dname%
set args=%args% -P %dname% -I /post/%name%/,/users/ http://www.moko.cc/post/%name%/indexpost.html

rem call :_run pushd %name%
echo wget_moko.bat %* >%dname%\cmds.txt
echo. >>%dname%\cmds.txt
echo wget %args% >>%dname%\cmds.txt
call :_run wget %args%  
rem call :_run popd
goto end
:usage
echo.
echo %0 
echo     -- download images from moko.cc
echo Usage:
echo     %0 userid [username]
echo.
:end