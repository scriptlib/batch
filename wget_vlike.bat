@echo %DEBUG% off
setlocal
set args=-t 3 -nc -w 1 -nH -r -l 4 -A *_big.jpg -D vlike.com,tu365.net -H --cut-dirs=2
set name=%~1
set args=%args% -P %name% -I /pic/%name%,/girl/


goto _start

:_run
echo %*
%*
goto :eof

:_start
call :_run if not exist %name%\NUL mkdir %name%
rem call :_run pushd %name%
call :_run wget %args%  http://www.vlike.com/pic/%name%/index.html
rem call :_run popd