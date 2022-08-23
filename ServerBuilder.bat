@echo off
mode 60, 25

:ver
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     버전을 선택하세요
echo.
echo         ① 1.19.2       ② 1.19.0       ③ 1.18.2
echo.
echo         ④ 1.17.1       ⑤ 1.16.5       ⑥ 1.15.2
echo.
echo         ⑦ 1.14.4       ⑧ 1.13.2       ⑨ 1.12.2
echo.
echo         ⓧ 나가기
echo.
echo.
echo.
echo.
echo.
echo.
choice /c 123456789x /n /m "키 입력: "
set ver=%ERRORLEVEL%
If %ver%==10 goto exit

:ram
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo              할당되는 램 용량을 선택하세요
echo.
echo         ① 1G           ② 2G           ③ 4G
echo.
echo         ④ 8G           ⑤ 프리         ⓧ 나가기
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
choice /c 12345x /n /m "키 입력: "
set ram=%ERRORLEVEL%
If %ram%==6 goto exit

:eula
cls
choice /n /m "EULA에 동의하십니까? (https://www.minecraft.net/en-us/eula) [Y/N]"
If %ERRORLEVEL%==2 goto exit

:down
cls
echo 다운로드 중... 
echo (인터넷 환경에 따라 속도가 달라질 수 있습니다)
start /d "%~dp0DATA\modules" /b md.cmd
start /d "%~dp0DATA\modules" /b eula.cmd
:ramch
if %ram%==1 goto 1g
if %ram%==2 goto 2g
if %ram%==3 goto 4g
if %ram%==4 goto 8g
if %ram%==5 goto fr

:1g
start /d "%~dp0DATA\modules" /b st1g.cmd
goto verch

:2g
start /d "%~dp0DATA\modules" /b st2g.cmd
goto verch

:4g
start /d "%~dp0DATA\modules" /b st4g.cmd
goto verch

:8g
start /d "%~dp0DATA\modules" /b st8g.cmd
goto verch

:fr
start /d "%~dp0DATA\modules" /b stfr.cmd
goto verch

:verch
if %ver%==1 goto 192
if %ver%==2 goto 19
if %ver%==3 goto 182
if %ver%==4 goto 171
if %ver%==5 goto 165
if %ver%==6 goto 152
if %ver%==7 goto 144
if %ver%==8 goto 132
if %ver%==9 goto 122

:192
start /d "%~dp0DATA\versions" /b 192.bat
goto dngo

:19
start /d "%~dp0DATA\versions" /b 19.bat
goto dngo

:182
start /d "%~dp0DATA\versions" /b 182.bat
goto dngo

:171
start /d "%~dp0DATA\versions" /b 171.bat
goto dngo

:165
start /d "%~dp0DATA\versions" /b 165.bat
goto dngo

:152
start /d "%~dp0DATA\versions" /b 152.bat
goto dngo

:144
start /d "%~dp0DATA\versions" /b 144.bat
goto dngo

:132
start /d "%~dp0DATA\versions" /b 132.bat
goto dngo

:122
start /d "%~dp0DATA\versions" /b 122.bat
goto dngo

:dngo
ping 127.0.0.1 > nul
cls
echo 다운로드가 완료되었습니다.
choice /c yn /n /m "서버 실행 [Y/N]"
If %ERRORLEVEL%==2 goto exit
If %ERRORLEVEL%==1 goto start

:exit
exit

:start
start /d "%~dp0server" /b start.bat
exit