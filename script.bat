@echo off
setlocal

:: Descargar WinGet y sus dependencias
echo Downloading WinGet and its dependencies...

:: Descargar los archivos necesarios
powershell -Command "Invoke-WebRequest -Uri 'https://aka.ms/getwinget' -OutFile 'Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle'"
powershell -Command "Invoke-WebRequest -Uri 'https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx' -OutFile 'Microsoft.VCLibs.x64.14.00.Desktop.appx'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/microsoft/microsoft-ui-xaml/releases/download/v2.8.6/Microsoft.UI.Xaml.2.8.x64.appx' -OutFile 'Microsoft.UI.Xaml.2.8.x64.appx'"

:: Instalar los paquetes
echo Installing WinGet and dependencies...
powershell -Command "Add-AppxPackage -Path 'Microsoft.VCLibs.x64.14.00.Desktop.appx'"
powershell -Command "Add-AppxPackage -Path 'Microsoft.UI.Xaml.2.8.x64.appx'"
powershell -Command "Add-AppxPackage -Path 'Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle'"

:: Esperar un momento para asegurar que WinGet esté completamente instalado
timeout /t 10 /nobreak >nul

:: Instalar las aplicaciones usando winget
echo Installing applications using winget...
winget install Spotify.Spotify --silent
winget install Valve.Steam --silent
winget install Discord.Discord --silent
winget install Microsoft.VisualStudioCode --silent
winget install Microsoft.PowerToys --silent
winget install 7zip.7zip --silent
winget install Microsoft.Office --silent

:: Opcionales
:: Descomentar las siguientes líneas para instalar aplicaciones opcionales

:: winget install RiotGames.LeagueOfLegends.LA1 --silent
:: winget install Google.Chrome --silent
:: winget install Mozilla.Firefox --silent
:: winget install Adobe.Acrobat.Reader.64-bit --silent
:: winget install RARLab.WinRAR --silent
:: winget install Mojang.MinecraftLauncher --silent

echo Done.
endlocal
pause
