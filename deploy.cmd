@echo off
echo ---Deploying site

REM ---Deploy the wwwroot folder in repository to default target (wwwroot)
xcopy %DEPLOYMENT_SOURCE%\wwwroot\* %DEPLOYMENT_TARGET% /Y /s 

REM ---Deploy the myapp folder in repository to folder above default target (wwwroot\blog)
xcopy %DEPLOYMENT_SOURCE%\* %DEPLOYMENT_TARGET%\blog /Y /s 
