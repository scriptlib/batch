@ECHO OFF
setlocal
if X%1==X goto end
set pwd=%CD%
set name=%pwd%\%~n1
if X%2==X set ext=7z
if not X%2==X set ext=%~2
pushd "%~1"
echo 7z a -r -scsUTF-8 -t7z -mx9 "%name%.%ext%" "*"
7z a -r -scsUTF-8 -t7z -mx9 "%name%.%ext%" "*"
echo %name%.%ext% saved.
popd
:end
endlocal
