@echo off
echo.
echo Is there an error that you found?
echo.
echo ¨ç Minecraft 1.1¡Û requires running the server with Java 17 or above.
echo.
echo ¨è 'Java' is not recognized as an internal or external command, operable program or batch file.
echo.
echo ¨é Invalid maximum heap size: -Xmx¡ÛG
echo.
echo ¨ä No.
echo.
choice /c 123x /n /m "[1,2,3,X]> "
If %ERRORLEVEL%==1 goto javaver
If %ERRORLEVEL%==2 goto javains
If %ERRORLEVEL%==3 goto javabit
If %ERRORLEVEL%==4 goto ergo

:javaver
cls
echo.
echo ¨ç Minecraft 1.1¡Û requires running the server with Java 17 or above.
echo.
echo Install JAVA 17
echo.
echo Guide (KR): https://kuroka3.tistory.com/2
echo.
pause
exit

:javains
cls
echo.
echo ¨è 'Java' is not recognized as an internal or external command, operable program or batch file.
echo.
echo If version is 1.17 or higher, read the guide 1, Else, read the guide 2 and install JAVA.
echo.
echo Guide 1 (KR): https://kuroka3.tistory.com/2
echo Guide 2 (KR): https://kuroka3.tistory.com/3
echo.
pause
exit

:javabit
cls
echo.
echo ¨é Invalid maximum heap size: -Xmx¡ÛG
echo.
echo Install java in 64-bit or set ram size to 1G
echo.
echo.
echo.
pause
exit

:ergo
cls
echo.
echo ¨ä No.
echo.
echo Please write about the error that you found.
echo.
echo https://github.com/kuroka3/ServerBuilder/issues
echo.
pause
exit