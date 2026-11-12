# Safe install for Windows. Existing files are never overwritten.
$ErrorActionPreference = 'Stop'
$root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$codexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $HOME '.codex' }
$skillHome = Join-Path $HOME '.agents/skills'
New-Item -ItemType Directory -Force -Path $codexHome, $skillHome | Out-Null

function Install-SafeLink {
  param([string]$Source, [string]$Target, [bool]$Directory)
  if (Test-Path -LiteralPath $Target -PathType Any) {
    Write-Host "SKIP: already exists: $Target"
    return
  }
  try {
    New-Item -ItemType SymbolicLink -Path $Target -Target $Source -ErrorAction Stop | Out-Null
    Write-Host "LINK: $Target"
  }
  catch {
    if ($Directory) { Copy-Item -LiteralPath $Source -Destination $Target -Recurse }
    else { Copy-Item -LiteralPath $Source -Destination $Target }
    Write-Host "COPY (symlink unavailable): $Target. Re-run after Git updates."
  }
}

Install-SafeLink (Join-Path $root 'adapters/codex/AGENTS.md') (Join-Path $codexHome 'AGENTS.md') $false
Get-ChildItem (Join-Path $root 'skills') -Directory | ForEach-Object {
  if (Test-Path -LiteralPath (Join-Path $_.FullName 'SKILL.md')) {
    Install-SafeLink $_.FullName (Join-Path $skillHome $_.Name) $true
  }
}
Write-Host 'No config.toml, credentials, or project files were changed.'
