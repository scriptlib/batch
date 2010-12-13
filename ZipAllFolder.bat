for /d %%i in (*) do d:\system\winrar\winrar.exe A -afzip -ibck -r -tk "%%i.zip" "%%i"
for /d %%i in (*) do rmdir /q/s "%%i"