@echo off
dotnet build
dotnet publish
copy Dockerfile bin\Debug\netcoreapp1.1\publish
docker build bin\Debug\netcoreapp1.1\publish -t appdotnet
dotnet restore
echo =============== http://Localhost:5000, verificar en Navegador ===============
dotnet run
pause
