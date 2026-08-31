# 1. Fastfetch on startup
# if (Get-Command fastfetch -ErrorAction SilentlyContinue) { fastfetch }

# 2. Clean Custom Prompt
function prompt {
    # Replace 'C:\Users\localuser' with '~'
    $path = (Get-Location).Path.Replace($HOME, "~")
    
    # Check for active Git branch
    $gitBranch = ""
    if (Get-Command git -ErrorAction SilentlyContinue) {
        $branch = (git branch --show-current 2>$null)
        if ($branch) {
            $gitBranch = " `e[33m(git:$branch)`e[0m"
        }
    }

    # Line 1: λ ~ (git:main)  [Cyan path, Yellow git]
    # Line 2: > 
    "`e[36mλ $path`e[0m$gitBranch`n> "
}

# 3. Autocomplete / Predictor menu
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView