@echo off
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://api.papermc.io/v2/projects/paper/versions/1.19.2/builds/132/downloads/paper-1.19.2-132.jar', '../../server/server.jar')"