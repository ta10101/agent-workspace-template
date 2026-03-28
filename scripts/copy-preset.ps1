param(
    [Parameter(Mandatory = $true)]
    [ValidateSet("light", "full")]
    [string] $Preset,

    [Parameter(Mandatory = $true)]
    [string] $Destination
)

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
$src = Join-Path $root "presets\$Preset\workspace"

if (-not (Test-Path $src)) {
    throw "Source not found: $src"
}

$dest = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($Destination)
New-Item -ItemType Directory -Force -Path $dest | Out-Null
Copy-Item -Path (Join-Path $src "*") -Destination $dest -Recurse -Force
Write-Host "Copied preset '$Preset' to $dest"
