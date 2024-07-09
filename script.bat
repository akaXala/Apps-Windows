REM instalación winget
$progressPreference = 'silentlyContinue'
Write-Information "Downloading WinGet and its dependencies..."
Invoke-WebRequest -Uri https://aka.ms/getwinget -OutFile Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
Invoke-WebRequest -Uri https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx -OutFile Microsoft.VCLibs.x64.14.00.Desktop.appx
Invoke-WebRequest -Uri https://github.com/microsoft/microsoft-ui-xaml/releases/download/v2.8.6/Microsoft.UI.Xaml.2.8.x64.appx -OutFile Microsoft.UI.Xaml.2.8.x64.appx
Add-AppxPackage Microsoft.VCLibs.x64.14.00.Desktop.appx
Add-AppxPackage Microsoft.UI.Xaml.2.8.x64.appx
Add-AppxPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle

REM Spotify
winget install Spotify.Spotify
REM Steam
winget install Valve.Steam
REM Discord
winget install Discord.Discord
REM VSCode
winget install Microsoft.VisualStudioCode
REM PowerToys
winget install Microsoft.PowerToys
REM 7zip
winget install 7zip.7zip
REM Office 365
winget install Microsoft.Office

REM ****** Opcionales ******
REM (Solo debes quitar el REM)

REM winget install RiotGames.LeagueOfLegends.LA1    REM League Of Legends
REM winget install Google.Chrome                    REM Google Chrome
REM winget install Mozilla.Firefox                  REM Firefox
REM winget install Adobe.Acrobat.Reader.64-bit      REM Adobe Reader
REM winget install RARLab.WinRAR                    REM WinRar
REM winget install Mojang.MinecraftLauncher         REM Minecraft