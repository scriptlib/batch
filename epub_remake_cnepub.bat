@echo off
setlocal

set pwd=%CD%

:remake
if ""=="%~1" goto _end
set bf=%~1
set bn=%~n1
shift
echo Uncompress %bf%...
if exist "%pwd%\%bn%\NUL" rd /S/Q "%pwd%\%bn%"
call unzip "%bf%" -d "%bn%"
echo Uncompress %bf% (DONE)
rem pause
echo Fixing %bn%...
if exist "%bn%\OPS\fb.opf" call epubfix "%bn%\OPS\*"
rem fb.opf" "%bn%\OPS\fb.ncx"
echo Fixing %bn% (DONE)
rem pause
echo Repacking %bn%.epub ...
call epubmake "%bn%"
rd /S/Q "%bn%"
goto remake
:_end
endlocal



