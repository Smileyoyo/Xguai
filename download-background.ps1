# WLOP 背景图下载脚本
# 使用方法：在 PowerShell 中运行 .\download-background.ps1

$bgUrls = @{
    "blue1.jpg" = "https://wallhaven.cc/full/wq/wallhaven-wq6W6w.jpg"
    "blue2.jpg" = "https://wallhaven.cc/full/wq/wallhaven-wq6W6x.jpg"
    "pink1.jpg" = "https://wallhaven.cc/full/wq/wallhaven-wq6W6z.jpg"
    "dark1.jpg" = "https://wallhaven.cc/full/wq/wallhaven-wq6W62.jpg"
}

$destDir = "source\img"

Write-Host "=== WLOP 背景图下载器 ===" -ForegroundColor Cyan
Write-Host ""

if (-not (Test-Path $destDir)) {
    New-Item -ItemType Directory -Path $destDir | Out-Null
    Write-Host "✓ 创建目录: $destDir" -ForegroundColor Green
}

Write-Host "选择要下载的背景图：" -ForegroundColor Yellow
Write-Host "1. 蓝色梦幻 (推荐)" -ForegroundColor Cyan
Write-Host "2. 星空少女" -ForegroundColor Cyan
Write-Host "3. 风铃公主" -ForegroundColor Magenta
Write-Host "4. 黑暗骑士" -ForegroundColor White
Write-Host "5. 下载全部" -ForegroundColor Yellow
Write-Host ""

$choice = Read-Host "请输入选择 (1-5)"

switch ($choice) {
    "1" { $files = @("blue1.jpg") }
    "2" { $files = @("blue2.jpg") }
    "3" { $files = @("pink1.jpg") }
    "4" { $files = @("dark1.jpg") }
    "5" { $files = $bgUrls.Keys }
    default {
        Write-Host "默认选择：蓝色梦幻" -ForegroundColor Yellow
        $files = @("blue1.jpg")
    }
}

Write-Host ""
Write-Host "开始下载..." -ForegroundColor Green

foreach ($file in $files) {
    $url = $bgUrls[$file]
    $dest = Join-Path $destDir $file

    Write-Host "正在下载: $file" -ForegroundColor Cyan
    try {
        Invoke-WebRequest -Uri $url -OutFile $dest -ErrorAction Stop
        Write-Host "✓ 下载完成: $file" -ForegroundColor Green

        # 如果是第一个文件，复制为 background.jpg
        if ($file -eq $files[0]) {
            Copy-Item $dest -Destination (Join-Path $destDir "background.jpg") -Force
            Write-Host "✓ 已设置为默认背景: background.jpg" -ForegroundColor Green
        }
    }
    catch {
        Write-Host "✗ 下载失败: $file" -ForegroundColor Red
        Write-Host "  请手动下载: $url" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "=== 下载完成 ===" -ForegroundColor Green
Write-Host ""
Write-Host "下一步操作：" -ForegroundColor Yellow
Write-Host "1. 运行: hexo clean"
Write-Host "2. 运行: hexo generate"
Write-Host "3. 运行: hexo server"
Write-Host "4. 访问: http://localhost:4000"
Write-Host ""
