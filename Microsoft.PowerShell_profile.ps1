oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression
Invoke-Expression (& { (zoxide init powershell | Out-String) })

function fcd { cd (fzf --walker=dir --walker-root=.) }
