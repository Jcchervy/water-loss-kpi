#!/bin/bash

# GitHub Pages 自动部署脚本
# 用户名：Jcchervy
# 仓库名：water-loss-kpi

set -e

REPO_NAME="water-loss-kpi"
GITHUB_USER="Jcchervy"
PROJECT_DIR="/root/.openclaw/workspace/water-loss-kpi-dashboard"

echo "🚀 开始部署到 GitHub Pages..."
echo ""

# 进入项目目录
cd $PROJECT_DIR

# 初始化 git 仓库
echo "📦 初始化 Git 仓库..."
git init
git checkout -b main 2>/dev/null || git checkout main
git add .
git commit -m "Initial commit: Water Loss KPI Dashboard"

echo ""
echo "✅ 本地仓库已准备完成！"
echo ""
echo "📋 接下来请执行以下步骤："
echo ""
echo "1️⃣  在 GitHub 上创建仓库："
echo "   访问：https://github.com/new"
echo "   仓库名：$REPO_NAME"
echo "   选择：Public（公开）"
echo "   不要勾选 'Add a README file'"
echo ""
echo "2️⃣  创建仓库后，在终端执行以下命令："
echo ""
echo "   git remote add origin https://github.com/$GITHUB_USER/$REPO_NAME.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3️⃣  开启 GitHub Pages："
echo "   进入仓库 → Settings → Pages"
echo "   Source 选择 'main' 分支"
echo "   点击 Save"
echo ""
echo "4️⃣  等待 1-2 分钟，你的网站将上线："
echo "   https://$GITHUB_USER.github.io/$REPO_NAME/"
echo ""
