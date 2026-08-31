Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Install-Module -Name PSReadLine -AllowClobber -Force
New-Item -Path $PROFILE -ItemType File -Force
notepad $PROFILE

winget source update
winget install fastfetch --accept-package-agreements --accept-source-agreements
winget install sharkdp.fd --accept-package-agreements --accept-source-agreements
winget install -e --id junegunn.fzf --accept-package-agreements --accept-source-agreements
