Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
# =========================================================================================
Write-Host "Install Python + Python pip support"
winget install --id Python.Python.3.12 --source winget --accept-package-agreements --accept-source-agreements

# Refresh environment variables in the current PowerShell session
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

Write-Host "Install Python pyenv support"
# Recommended standalone installer for pyenv-win
Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/pyenv-win/pyenv-win/master/pyenv-win/install-pyenv-win.ps1" -OutFile "./install-pyenv-win.ps1"
& "./install-pyenv-win.ps1"
Remove-Item "./install-pyenv-win.ps1"