@echo off
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://api.papermc.io/v2/projects/paper/versions/1.16.5/builds/794/downloads/paper-1.16.5-794.jar', '../../server/server.jar')"