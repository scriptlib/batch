@echo %DEBUG% off
setlocal


set n=%~1
set p=%~2
set c=%~3

if "%n%"=="" goto Usage
if "%p%"=="" set p=%n%
if not "%c%"=="" set c=%c%/

call :run svn checkout %4 %5 %6 %7 %8 %9 https://%p%.googlecode.com/svn/%c%trunk "%n%"
goto end

:Usage
echo %0 target_dir project_name [sub_project_name svn_checkout_options...] 
goto end

goto end
:run
echo %*
if "%DEBUG%"=="" call %*
goto :eof

:end
endlocal

