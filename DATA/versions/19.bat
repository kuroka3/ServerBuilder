@echo off
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://api.papermc.io/v2/projects/paper/versions/1.19/builds/81/downloads/paper-1.19-81.jar', '../../server/server.jar')"