rem  ���������в�����
@echo off

rem ����winrar��·�����޸�Ϊ�㰲װ��·����
rem �����Ժ�����ϲ�������-afrar��-afzip�ȡ�����ο�winrar�İ�����
set winrar="C:\Program Files\Winrar\winrar.exe" A -afzip

echo "Start....."

rem ��������Ŀ¼
for /d %%i in (*) do call %winrar% "%%i" "%%i"

rem ȡ����������
set winrar=

echo "Done."

rem �رտ���̨
exit 0