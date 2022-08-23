@echo off
cd ..
cd ..
cd server
echo @echo off > start.bat
echo Java -Xmx1G -Xms128M -jar server.jar >> start.bat
echo pause >> start.bat