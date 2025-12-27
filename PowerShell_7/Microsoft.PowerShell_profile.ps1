# Color
function Set-RGB {
    param([string]$Hex)
    $Hex = $Hex.TrimStart('#')
    $r = [Convert]::ToInt32($Hex.Substring(0,2),16)
    $g = [Convert]::ToInt32($Hex.Substring(2,2),16)
    $b = [Convert]::ToInt32($Hex.Substring(4,2),16)
    return "`e[38;2;${r};${g};${b}m"
}

function Reset-RGB {
    return "`e[0m"
}

# UTF-8 config
try {
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null
} catch {}

Clear-Host

# Oh My Posh
if (Get-Command oh-my-posh -ErrorAction SilentlyContinue) {
    oh-my-posh init pwsh --config 'C:\Posh\uew.omp.json' | Invoke-Expression
}

# Mensaje
$hora = Get-Date -Format "HH:mm"
Write-Host "$(Set-RGB '#A6E3A1')Hora actual: $hora$(Reset-RGB) — $(Set-RGB '#CBA6F7')Bienvenido, Luna$(Reset-RGB)"

# Fastfetch
$fastfetchCmd = Get-Command fastfetch -ErrorAction SilentlyContinue
$ffConfig     = "$env:USERPROFILE\.config\fastfetch\config.jsonc"

if ($fastfetchCmd -and (Test-Path $ffConfig)) {
    fastfetch -c $ffConfig
}

# Aliases
function ll { Get-ChildItem }
function la { Get-ChildItem -Force }
function ..  { Set-Location .. }
function ... { Set-Location ../.. }
