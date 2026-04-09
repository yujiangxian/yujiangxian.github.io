# Aura Labs 博客部署脚本
# 用法: .\deploy.ps1
# 功能: 推送到 GitHub + 同步到服务器

$SERVER = "root@123.60.176.246"
$PORT = "50088"
$REMOTE_DIR = "/var/www/auralabs"

Write-Host "=== Aura Labs Deploy ===" -ForegroundColor Yellow

# 1. 推送到 GitHub
Write-Host "`n[1/3] 推送到 GitHub..."
git add -A
git commit -m "update: $(Get-Date -Format 'yyyy-MM-dd HH:mm')" 2>$null
git push origin main

# 2. 等待 GitHub Pages 构建
Write-Host "`n[2/3] 等待 GitHub Pages 构建 (60s)..."
Start-Sleep -Seconds 60

# 3. 从 GitHub Pages 镜像到服务器
Write-Host "`n[3/3] 同步到服务器..."
ssh -p $PORT $SERVER @"
cd /tmp
rm -rf auralabs_sync
wget --mirror --convert-links --adjust-extension --page-requisites --no-parent -q -P auralabs_sync https://yujiangxian.github.io/ 2>/dev/null
rm -rf $REMOTE_DIR/*
cp -r auralabs_sync/yujiangxian.github.io/* $REMOTE_DIR/
chown -R www-data:www-data $REMOTE_DIR
rm -rf auralabs_sync
echo 'Sync complete'
"@

Write-Host "`n=== 部署完成 ===" -ForegroundColor Green
Write-Host "GitHub Pages: https://yujiangxian.github.io"
Write-Host "Server:       http://yujiangxian.net"
