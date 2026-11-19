$ErrorActionPreference = 'Stop'
$manifest = Get-Content -LiteralPath (Join-Path $PSScriptRoot 'archive-parts.json') -Raw | ConvertFrom-Json
$outputPath = Join-Path $PSScriptRoot $manifest.archive
if (Test-Path -LiteralPath $outputPath) {
    if ((Get-FileHash -LiteralPath $outputPath -Algorithm SHA256).Hash.ToLower() -eq $manifest.sha256) { Write-Host '压缩包已存在，校验通过。'; exit 0 }
    throw '已有同名文件且校验不一致，请先移走该文件。'
}
foreach ($part in $manifest.parts) {
    $partPath = Join-Path $PSScriptRoot $part.name
    if ((Get-FileHash -LiteralPath $partPath -Algorithm SHA256).Hash.ToLower() -ne $part.sha256) { throw ('分卷校验失败：' + $part.name) }
}
$output = [System.IO.File]::Open($outputPath, [System.IO.FileMode]::CreateNew)
try {
    foreach ($part in $manifest.parts) {
        $inputStream = [System.IO.File]::OpenRead((Join-Path $PSScriptRoot $part.name))
        try { $inputStream.CopyTo($output) } finally { $inputStream.Dispose() }
    }
} finally { $output.Dispose() }
if ((Get-FileHash -LiteralPath $outputPath -Algorithm SHA256).Hash.ToLower() -ne $manifest.sha256) { throw '合并后压缩包校验失败。' }
Write-Host ('合并完成，SHA-256 校验通过：' + $outputPath)
