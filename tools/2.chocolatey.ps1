Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco upgrade chocolatey
choco install git -y 
choco install git-filter-repo -y
choco install 7zip -y 
choco install powertoys -y 
choco install sysinternals -y
choco install vscode -y 
choco install obsidian -y
choco install wireshark -y
choco install cyberchef -y 
choco install curl -y 
choco install wget -y 
choco install vlc -y

choco install firefox -y
choco install golang -y
choco install nmap -y

# choco install tailscale -y
# choco install wireguard -y
# choco install openvpn -y

# choco install rancher -y 
# choco install vagrant -y

# choco install ffmpeg -y 
# choco install imagemagic -y 
# choco install yt-dlp -y