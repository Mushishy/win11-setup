# =========================================================================================

# Step 1: Create the virtual environment
& (Get-Item "$env:USERPROFILE\.pyenv\pyenv-win\versions\3.12.*\python.exe").FullName -m venv my_env

# Step 2: Activate the environment
.\my_env\Scripts\Activate.ps1