@echo off
cd ..
cd ..
cd server
echo @echo off > start.bat
echo Java -jar server.jar >> start.bat
echo pause >> start.bat