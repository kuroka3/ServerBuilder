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
echo                     Choose Version
echo.
echo         ¨ç 1.19.2       ¨è 1.19.0       ¨é 1.18.2
echo.
echo         ¨ê 1.17.1       ¨ë 1.16.5       ¨ì 1.15.2
echo.
echo         ¨í 1.14.4       ¨î 1.13.2       ¨ï 1.12.2
echo.
echo         ¨ä EXIT
echo.
echo.
echo.
echo.
echo.
echo.
choice /c 123456789x /n /m "> "
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
echo                      Choose Ram
echo.
echo         ¨ç 1G           ¨è 2G           ¨é 4G
echo.
echo         ¨ê 8G           ¨ë FREE         ¨ä EXIT
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
choice /c 12345x /n /m "> "
set ram=%ERRORLEVEL%
If %ram%==6 goto exit

:eula
cls
choice /n /m "Agree EULA? (https://www.minecraft.net/en-us/eula) [Y/N]"
If %ERRORLEVEL%==2 goto exit

:down
cls
echo Downloading...
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
echo Complete download.
choice /c yn /n /m "run server [Y/N]"
If %ERRORLEVEL%==2 goto exit
If %ERRORLEVEL%==1 goto start

:exit
exit

:start
start /d "%~dp0server" /b start.bat
exit