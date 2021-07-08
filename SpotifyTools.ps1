Clear-Host
Write-Host "Welcome to SpotifyTools!"
Write-Host "Please select wich Tool you want to use."
Write-Host ""
Write-Host "1 - SpicetifyHelper"
Write-Host "2 - BlockTheSpot Installer"
Write-Host "3 - Auto-Installer (for faster Installs)"
Write-Host ""
$toolid = Read-Host 'Please select'
Clear-Host
Write-Host "You chose $toolid!"
if($toolid -eq 1) {
    Write-Host "SpicetifyHelper is not available yet."
}
elseif($toolid -eq 2) {
    Write-Host "Downloading BTS Installer..."
    Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/mrpond/BlockTheSpot/master/BlockTheSpot.bat" -OutFile "BlockTheSpotInstaller.bat"
    Write-Host "Done, running BTS Installer..."
    Clear-Host
    Start-Process "cmd.exe"  "/c BlockTheSpotInstaller.bat"
}
elseif($toolid -eq 3) {
    Write-Host "Please select wich Installer you want to run"
    Write-Host ""
    Write-Host "1 - DribblishDynamic v2"
    Write-Host ""
    $autoinstallerid = Read-Host 'Please select'
    Clear-Host
    if($autoinstallerid -eq 1) {
        Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/JulienMaille/dribbblish-dynamic-theme/master/install.ps1" | Invoke-Expression
    }
    else { Write-Host "This isntaller dosent exist."}
}
else { Write-Host "This tool dosent exist."}
exit