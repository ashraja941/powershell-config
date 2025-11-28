# Oh-My-Posh themese select
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\catppuccin_mocha.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression

# Initialize Zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# Custom Keybindings
function fz { z (fzf --walker=dir --walker-root=.) }

# predictive view in PS
Set-PSReadLineOption -PredictionSource HistoryAndPlugin # Plugin, History, HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView   # ListView or InlineView

