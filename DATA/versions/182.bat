@echo off
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://api.papermc.io/v2/projects/paper/versions/1.18.2/builds/387/downloads/paper-1.18.2-387.jar', '../../server/server.jar')"