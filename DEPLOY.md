# 🚀 供水漏损 KPI 页面部署指南

页面已生成在 `index.html`，以下是三种外网访问部署方案：

---

## 方案一：Vercel 部署（推荐 ⭐）

**优点**：免费、自动 HTTPS、全球 CDN、一键部署

### 步骤：

1. 访问 https://vercel.com 并注册/登录账号

2. 安装 Vercel CLI（可选）：
```bash
npm i -g vercel
```

3. 在项目目录执行：
```bash
cd /root/.openclaw/workspace/water-loss-kpi-dashboard
vercel --prod
```

4. 按提示登录 GitHub/GitLab，完成后会获得一个 `https://xxx.vercel.app` 的永久链接

---

## 方案二：GitHub Pages 部署

**优点**：完全免费、与代码仓库集成

### 步骤：

1. 创建 GitHub 仓库（如 `water-loss-kpi`）

2. 将 `index.html` 上传到仓库

3. 进入仓库 Settings → Pages

4. Source 选择 `main` 分支，保存

5. 获得链接：`https://你的用户名.github.io/water-loss-kpi/`

---

## 方案三：本地服务器 + 内网穿透（快速测试）

**优点**：无需注册、即刻可用

### 步骤：

1. 启动本地服务器：
```bash
cd /root/.openclaw/workspace/water-loss-kpi-dashboard
npx http-server -p 8080
```

2. 在另一个终端启动 cloudflared tunnel：
```bash
# 安装 cloudflared
curl -L --output cloudflared https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
chmod +x cloudflared

# 创建隧道
./cloudflared tunnel --url http://localhost:8080
```

3. 获得临时外网链接（格式：`https://xxx-xxx.trycloudflare.com`）

---

## 📊 页面功能说明

### 核心 KPI 指标
- **综合漏损率**：整体供水系统漏损百分比
- **日供水量**：每日总供水量 (m³)
- **漏损水量**：每日漏损水量 (m³)
- **压力合格率**：管网压力达标率

### DMA 分区管理
- 5 个 DMA 分区漏损率排名
- 颜色标识：绿色 (优良)、黄色 (警告)、红色 (危险)

### 可视化图表
- 漏损率 12 个月趋势图
- 水量平衡分析饼图
- 漏点类型分布柱状图

### 维修工单跟踪
- 待处理/处理中/已完成工单数量
- 平均响应时间

---

## 🔧 自定义数据

编辑 `index.html` 中的 JavaScript 部分，修改以下数据：

```javascript
// 修改 KPI 数值
<div class="kpi-value good">12.5<span class="kpi-unit">%</span></div>

// 修改 DMA 分区数据
<div class="dma-item">
    <span class="dma-name">DMA-01 中心城区</span>
    <span class="dma-value good">8.3%</span>
</div>

// 修改图表数据
datasets: [{
    data: [18.5, 17.2, 16.8, ...]  // 趋势数据
}]
```

---

## 📱 移动端适配

页面已支持响应式设计，可在手机/平板上正常访问。

---

**需要我帮你自动完成部署吗？请告诉我：**
1. 你有 GitHub 账号吗？
2. 你有 Vercel 账号吗？
3. 还是想用本地服务器快速测试？
