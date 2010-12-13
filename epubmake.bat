@echo off
setlocal
set fn=%~1
if "%~2"=="" (
    set fd=%~1
) else (
    set fd=%~2
)
set pwd=%CD%
set z=zip -Xr9D
pushd "%fd%"
if exist "%pwd%\%fn%.epub" del "%pwd%\%fn%.epub"
call %z% "%pwd%\%fn%.epub" "mimetype" "*"
popd
endlocal

