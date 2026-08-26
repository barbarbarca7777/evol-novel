<#
settings/*.psd1 を編集して実行すると、前回実行時からの変更点(名前・呼称などの固有名詞)を
検出し、manuscript 配下の本文を自動で一括置換します。

使い方:
    .\scripts\Sync-Settings.ps1            変更を検出して置換を実行
    .\scripts\Sync-Settings.ps1 -WhatIf    置換内容を確認するだけ(実際には書き換えない)
    .\scripts\Sync-Settings.ps1 -Watch     settings フォルダを監視し、保存するたびに自動実行
#>
[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [switch]$Watch
)

$RepoRoot     = Split-Path -Parent $PSScriptRoot
$SettingsDir  = Join-Path $RepoRoot 'settings'
$SnapshotDir  = Join-Path $SettingsDir '.snapshot'
$ManuscriptDir = Join-Path $RepoRoot 'manuscript'
$SettingFiles = @('characters.psd1', 'world.psd1', 'factions.psd1')

# 置換の対象にする「固有名詞」フィールドのみを許可リスト化する。
# Personality/Background のような説明文は自動置換の対象にしない。
# Surname/Given は意図的に含めない: 同姓の別キャラがいると誤爆するため
# (例: レイジの姓を変えたら無関係なジュンペイの姓まで書き換わった事故があった)。
# 名前を変えるときは必ず FullName を書き換えること。
# DisplayName は factions.psd1(NERV/ゼーレ等の組織名・学園名)向けに追加(2026-08-27)。
$ReplaceableKeys = @(
    'FullName', 'Nickname', 'Nicknames',
    'EvaName', 'Technique', 'OrgName', 'SchoolName', 'PlaceName',
    'ShitoName', 'Title', 'DisplayName'
)

function Get-FlatMap {
    param($Data, [string]$Prefix = '')
    $result = @{}
    if ($Data -is [System.Collections.IDictionary]) {
        foreach ($key in $Data.Keys) {
            $path  = if ($Prefix) { "$Prefix.$key" } else { "$key" }
            $value = $Data[$key]
            if ($value -is [System.Collections.IDictionary]) {
                (Get-FlatMap -Data $value -Prefix $path).GetEnumerator() | ForEach-Object { $result[$_.Key] = $_.Value }
            }
            elseif ($value -is [string]) {
                if ($ReplaceableKeys -contains $key -and $value.Trim().Length -ge 2) {
                    $result[$path] = $value
                }
            }
            elseif ($value -is [System.Array]) {
                if ($ReplaceableKeys -contains $key) {
                    for ($i = 0; $i -lt $value.Count; $i++) {
                        if ($value[$i] -is [string] -and $value[$i].Trim().Length -ge 2) {
                            $result["$path[$i]"] = $value[$i]
                        }
                    }
                }
            }
        }
    }
    return $result
}

function Invoke-SettingsSync {
    if (-not (Test-Path $SnapshotDir)) {
        New-Item -ItemType Directory -Path $SnapshotDir | Out-Null
    }

    $renames = @()

    foreach ($file in $SettingFiles) {
        $currentPath  = Join-Path $SettingsDir $file
        $snapshotPath = Join-Path $SnapshotDir $file

        if (-not (Test-Path $currentPath)) { continue }

        $current = Import-PowerShellDataFile -Path $currentPath

        if (Test-Path $snapshotPath) {
            $previous = Import-PowerShellDataFile -Path $snapshotPath
            $oldFlat = Get-FlatMap -Data $previous
            $newFlat = Get-FlatMap -Data $current

            foreach ($path in $newFlat.Keys) {
                if ($oldFlat.ContainsKey($path)) {
                    $oldValue = $oldFlat[$path]
                    $newValue = $newFlat[$path]
                    if ($oldValue -ne $newValue) {
                        $renames += [PSCustomObject]@{ File = $file; Path = $path; Old = $oldValue; New = $newValue }
                    }
                }
            }
        }
        else {
            Write-Host "[初回実行] $file を基準スナップショットとして保存します。" -ForegroundColor Yellow
        }
    }

    if ($renames.Count -eq 0) {
        Write-Host '変更は検出されませんでした。' -ForegroundColor DarkGray
    }
    else {
        Write-Host "検出された変更: $($renames.Count) 件" -ForegroundColor Cyan
        $renames | Sort-Object { $_.Old.Length } -Descending | ForEach-Object {
            Write-Host "  [$($_.File)] $($_.Path): 「$($_.Old)」→「$($_.New)」"
        }

        $targetFiles = Get-ChildItem -Path $ManuscriptDir -Filter '*.md' -Recurse -File -ErrorAction SilentlyContinue

        foreach ($target in $targetFiles) {
            $text = Get-Content -Path $target.FullName -Raw -Encoding UTF8
            if ($null -eq $text) { continue }
            $original = $text
            $hitCount = 0

            foreach ($r in ($renames | Sort-Object { $_.Old.Length } -Descending)) {
                $count = ([regex]::Matches($text, [regex]::Escape($r.Old))).Count
                if ($count -gt 0) {
                    $text = $text.Replace($r.Old, $r.New)
                    $hitCount += $count
                }
            }

            if ($hitCount -gt 0) {
                if ($PSCmdlet.ShouldProcess($target.FullName, "$hitCount 箇所を置換")) {
                    Set-Content -Path $target.FullName -Value $text -Encoding UTF8 -NoNewline
                    Write-Host "  更新: $($target.Name) ($hitCount 箇所)" -ForegroundColor Green
                }
            }
        }
    }

    # 次回比較用に現在の設定をスナップショットとして保存(-WhatIf 時は保存しない)
    if ($PSCmdlet.ShouldProcess($SnapshotDir, 'スナップショットを更新')) {
        foreach ($file in $SettingFiles) {
            $src = Join-Path $SettingsDir $file
            if (Test-Path $src) {
                Copy-Item -Path $src -Destination (Join-Path $SnapshotDir $file) -Force
            }
        }
    }
}

if ($Watch) {
    Write-Host "settings フォルダを監視中... (Ctrl+C で終了)" -ForegroundColor Magenta
    Invoke-SettingsSync

    $fsw = New-Object System.IO.FileSystemWatcher $SettingsDir, '*.psd1'
    $fsw.IncludeSubdirectories = $false
    $fsw.EnableRaisingEvents = $true

    try {
        while ($true) {
            $result = $fsw.WaitForChanged([System.IO.WatcherChangeTypes]::Changed -bor [System.IO.WatcherChangeTypes]::Created, 1000)
            if (-not $result.TimedOut) {
                Start-Sleep -Milliseconds 300  # 保存処理の完了を待つ
                Write-Host "`n変更を検知: $($result.Name)" -ForegroundColor Magenta
                Invoke-SettingsSync
            }
        }
    }
    finally {
        $fsw.Dispose()
    }
}
else {
    Invoke-SettingsSync
}
