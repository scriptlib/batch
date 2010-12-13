@ECHO OFF
for /d %%d in (*) do (
    %* "%%~d"
)
