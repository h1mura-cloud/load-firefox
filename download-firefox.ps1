$firefox = "https://download.mozilla.org/?product=firefox-latest&os=win64&lang=en-US"

$downloadsFolder = [System.IO.Path]::Combine($env:USERPROFILE, "Downloads")

$installerPath = [System.IO.Path]::Combine($downloadsFolder, "FirefoxInstaller.exe")

Invoke-WebRequest -Uri $firefox -OutFile $installerPath

Write-Output "Firefox installer downloaded to: $installerPath"