@echo off
echo.
echo ����� �ް� �ִ� ������ �� ����� �ϳ��� �ֳ���?
echo.
echo �� Minecraft 1.1�� requires running the server with Java 17 or above.
echo.
echo �� 'Java'��(��) ���� �Ǵ� �ܺ� ���, ������ �� �ִ� ���α׷�, �Ǵ� ��ġ ������ �ƴմϴ�.
echo.
echo �� Invalid maximum heap size: -Xmx��G
echo.
echo �� �����ϴ�.
echo.
choice /c 123x /n /m "[1,2,3,X]> "
If %ERRORLEVEL%==1 goto javaver
If %ERRORLEVEL%==2 goto javains
If %ERRORLEVEL%==3 goto javabit
If %ERRORLEVEL%==4 goto ergo

:javaver
cls
echo.
echo �� Minecraft 1.1�� requires running the server with Java 17 or above.
echo.
echo �ش� ������ Ư�� ���� �̻󿡼� �ڹٸ� ������Ʈ ���� �ʾ����� �߻��մϴ�.
echo.
echo �ڹ� 17�� ��ġ�ϼ���
echo.
echo ���̵� ��ũ: https://kuroka3.tistory.com/2
echo.
pause
exit

:javains
cls
echo.
echo �� 'Java'��(��) ���� �Ǵ� �ܺ� ���, ������ �� �ִ� ���α׷�, �Ǵ� ��ġ ������ �ƴմϴ�.
echo.
echo �ش� ������ �ڹٸ� ��ġ���� �ʾ����� �߻��մϴ�.
echo.
echo 1.17 �̻��̶�� 1�� ���̵带, �� �Ʒ� �����̶�� 2�� ���̵带 ���ð� ��ġ�ϼ���.
echo.
echo 1�� ���̵� ��ũ: https://kuroka3.tistory.com/2
echo 2�� ���̵� ��ũ: https://kuroka3.tistory.com/3
echo.
pause
exit

:javabit
cls
echo.
echo �� Invalid maximum heap size: -Xmx��G
echo.
echo �ش� ������ 32��Ʈ �ڹٿ��� ���� 2�Ⱑ �̻��� �뷮�� �Ҵ������� �߻��մϴ�.
echo.
echo �� �Ҵ� �뷮�� 1�Ⱑ�� �����ϼ���.
echo.
echo.
echo.
pause
exit

:ergo
cls
echo.
echo �� �����ϴ�.
echo.
echo ������ ������ �ּ���.
echo.
echo https://github.com/kuroka3/ServerBuilder/issues
echo.
pause
exit