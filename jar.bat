@echo off
del blur-admin-rest-1.0.jar
cd blur-admin-rest\src\main\resources\static
del /s /q /f *.*
for /d %%i in (*) do rd /s /q "%%i"
cd ../../../../../blur-admin-app
call gulp clean
call gulp build
xcopy release\* ..\blur-admin-rest\src\main\resources\static /e /i
cd ../blur-admin-rest
call mvn clean package -DskipTests=true
copy target\blur-admin-rest-1.0.jar ..\blur-admin-rest-1.0.jar