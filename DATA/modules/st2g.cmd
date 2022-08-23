@echo off
cd ..
cd ..
cd server
echo @echo off > start.bat
echo Java -Xmx2G -Xms512M -jar server.jar >> start.bat
echo pause >> start.bat