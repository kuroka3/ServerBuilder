@echo off
echo.
echo 당신이 겪고 있는 오류는 이 목록중 하나에 있나요?
echo.
echo ① Minecraft 1.1○ requires running the server with Java 17 or above.
echo.
echo ② 'Java'은(는) 내부 또는 외부 명령, 실행할 수 있는 프로그램, 또는 배치 파일이 아닙니다.
echo.
echo ③ Invalid maximum heap size: -Xmx○G
echo.
echo ⓧ 없습니다.
echo.
choice /c 123x /n /m "[1,2,3,X]> "
If %ERRORLEVEL%==1 goto javaver
If %ERRORLEVEL%==2 goto javains
If %ERRORLEVEL%==3 goto javabit
If %ERRORLEVEL%==4 goto ergo

:javaver
cls
echo.
echo ① Minecraft 1.1○ requires running the server with Java 17 or above.
echo.
echo 해당 오류는 특정 버전 이상에서 자바를 업데이트 하지 않았을때 발생합니다.
echo.
echo 자바 17을 설치하세요
echo.
echo 가이드 링크: https://kuroka3.tistory.com/2
echo.
pause
exit

:javains
cls
echo.
echo ② 'Java'은(는) 내부 또는 외부 명령, 실행할 수 있는 프로그램, 또는 배치 파일이 아닙니다.
echo.
echo 해당 오류는 자바를 설치하지 않았을때 발생합니다.
echo.
echo 1.17 이상이라면 1번 가이드를, 그 아래 버전이라면 2번 가이드를 보시고 설치하세요.
echo.
echo 1번 가이드 링크: https://kuroka3.tistory.com/2
echo 2번 가이드 링크: https://kuroka3.tistory.com/3
echo.
pause
exit

:javabit
cls
echo.
echo ③ Invalid maximum heap size: -Xmx○G
echo.
echo 해당 오류는 32비트 자바에서 램에 2기가 이상의 용량을 할당했을때 발생합니다.
echo.
echo 램 할당 용량을 1기가로 설정하세요.
echo.
echo.
echo.
pause
exit

:ergo
cls
echo.
echo ⓧ 없습니다.
echo.
echo 오류를 제보해 주세요.
echo.
echo https://github.com/kuroka3/ServerBuilder/issues
echo.
pause
exit