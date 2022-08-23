@echo off
cd ..
cd ..
cd server
echo @echo off > start.bat
echo Java -Xmx4G -jar server.jar >>start.bat
echo pause >>start.bat