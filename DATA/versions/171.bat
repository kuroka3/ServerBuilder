@echo off
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://api.papermc.io/v2/projects/paper/versions/1.17.1/builds/411/downloads/paper-1.17.1-411.jar', '../../server/server.jar')"