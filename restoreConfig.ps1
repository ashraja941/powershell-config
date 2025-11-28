# Get the folder where the script is located
$scriptFolder = Split-Path -Parent $MyInvocation.MyCommand.Definition

# Define destination paths
$profileDest = "$HOME\OneDrive\Documents\PowerShell\Microsoft.PowerShell_profile.ps1"
$themeDest = "$HOME\AppData\Local\Programs\oh-my-posh\themes\jandedobbeleer.omp.json"
$weztermConfigDest = "$HOME\.wezterm.lua"

# Define source file paths (from this folder)
$profileSrc = Join-Path $scriptFolder "Microsoft.PowerShell_profile.ps1"
$themeSrc = Join-Path $scriptFolder "jandedobbeleer.omp.json"
$weztermConfigSrc = Join-Path $scriptFolder ".wezterm.lua"

# Copy files back to their original locations
Copy-Item -Path $profileSrc -Destination $profileDest -Force
Copy-Item -Path $themeSrc -Destination $themeDest -Force
Copy-Item -Path $weztermConfigSrc -Destination $weztermConfigDest -Force
