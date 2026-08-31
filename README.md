# Windows Environment Setup & System Optimization Checklist

## 1. Terminal, PowerShell & Package Management
- [ ] **Microsoft Store & System Updates:**
  - Install **PowerShell 7** (`winget install --id Microsoft.PowerShell --source winget`)
  - Update **App Installer**, system updates, app updates, laptop manufacturer utility, and antivirus definitions
- [ ] **Windows Terminal Configuration:**
  - Set default terminal application to **Windows Terminal**
  - Change default profile to **PowerShell 7**
  - Enable **Launch on machine startup**
  - Update `settings.json` with preferred custom settings

---

## 2. Input & Peripherals
- [ ] **Mouse & Keyboard Settings:**
  - Invert scroll direction
  - Pair Bluetooth mouse
  - Add extra keyboard layouts/languages and configure input switching

---

## 3. UI Tweaks & Debloating
- [ ] **Debloat Tools & Utilities:**
  - Install ExplorerPatcher: `https://github.com/valinet/ExplorerPatcher/releases`
  - Run Chris Titus Utility in PowerShell:
    ```powershell
    irm [https://christitus.com/win](https://christitus.com/win) | iex
    ```
- [ ] **Taskbar:**
  - Turn off all unnecessary icons (Search, Widgets, Task View, Chat)
- [ ] **Desktop:**
  - Right-click Desktop -> View -> Uncheck **Show desktop icons**

---

## 4. Personalization & Display
- [ ] **System > Display:**
  - Enable **Night Light** and configure warmth/schedule
- [ ] **Personalization > Colors:**
  - Choose mode: **Dark**
  - Transparency effects: **Off**
- [ ] **Personalization > Background:**
  - Set custom desktop wallpaper:
    `https://web.archive.org/web/20170318200533/https://lh3.googleusercontent.com/-3V5dUn0Uzso/WGloCJGb9cI/AAAAAAAAZk4/kTZsRsUAZq8uwsRsieQ2-a5PlDMBPzXAQCJoC/w4048-h3036/IMG_20161230_172826.jpg`

---

## 5. System Settings & File Explorer
- [ ] **Rename Device:** System > About > Rename this PC
- [ ] **Clipboard History:** System > Clipboard > Turn **On** (`Win + V`)
- [ ] **Default Apps & PATH:**
  - Set default editor and file handlers to **VS Code**
  - Ensure VS Code binary is added to System `PATH` (`code .` command support)
- [ ] **File Explorer Preferences:**
  - Folder Options -> View -> Check **Show hidden files, folders, and drives**
  - Folder Options -> View -> Uncheck **Hide extensions for known file types**
  - Change **Open File Explorer to** -> **This PC** (instead of Quick Access)

---

## 6. Applications & Configuration Files
- [ ] **Microsoft Teams:**
  - Configure settings to **Keep running in the background when closed**
- [ ] **System Paths, SSH & Dotfiles:**
  - Edit hosts file: `C:\Windows\System32\drivers\etc\hosts`
  - Configure SSH directory: `C:\Users\<username>\.ssh\`
  - Sync and configure custom dotfiles (`.gitconfig`, `.bashrc`, PowerShell `$PROFILE`)

---

## 7. System Maintenance & Security
- [ ] **Windows Update Active Hours:**
  - Settings > Windows Update > Advanced options > Adjust active hours to prevent unannounced reboots
- [ ] **Create System Restore Point:**
  - Run `sysdm.cpl` (`Win + R`) -> **System Protection** tab -> Turn Protection **On** for `C:` drive -> Click **Create...**