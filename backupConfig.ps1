# Get the folder where the script is located
$scriptFolder = Split-Path -Parent $MyInvocation.MyCommand.Definition

# Define source file paths
$profilePath = "$HOME\OneDrive\Documents\PowerShell\Microsoft.PowerShell_profile.ps1"
$themePath = "$HOME\AppData\Local\Programs\oh-my-posh\themes\jandedobbeleer.omp.json"
$weztermConfigPath = "$HOME\.wezterm.lua"

# Copy files to the script folder
Copy-Item -Path $profilePath -Destination (Join-Path $scriptFolder "Microsoft.PowerShell_profile.ps1") -Force
Copy-Item -Path $themePath -Destination (Join-Path $scriptFolder "jandedobbeleer.omp.json") -Force
Copy-Item -Path $weztermConfigPath -Destination (Join-Path $scriptFolder ".wezterm.lua") -Force

