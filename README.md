# 💧 供水漏损控制 KPI Dashboard

实时供水漏损监控面板，支持 DMA 分区计量、漏损分析、维修工单跟踪。

## 📊 功能特性

- **核心 KPI 指标**：综合漏损率、日供水量、漏损水量、压力合格率
- **DMA 分区管理**：5 个分区漏损率排名（颜色标识状态）
- **趋势分析**：12 个月漏损率变化曲线图
- **水量平衡**：收费水量/免费水量/物理漏损/商业漏损分析
- **漏点分布**：管道接口/本体/阀门/消防栓/水表等类型统计
- **维修工单**：待处理/处理中/已完成 + 平均响应时间

## 🎨 技术栈

- HTML5 + CSS3（响应式设计）
- Chart.js（数据可视化）
- 移动端适配

## 📁 文件结构

```
water-loss-kpi-dashboard/
├── index.html      # Dashboard 主页面
├── DEPLOY.md       # 部署指南
├── deploy.sh       # 部署脚本
└── README.md       # 本文件
```

## 🚀 部署步骤

### 方式一：GitHub Pages（推荐）

1. **创建仓库**
   - 访问 https://github.com/new
   - 仓库名：`water-loss-kpi`
   - 选择 **Public**（公开）
   - **不要**勾选 "Add a README file"

2. **推送代码**
   ```bash
   cd /root/.openclaw/workspace/water-loss-kpi-dashboard
   git remote add origin https://github.com/Jcchervy/water-loss-kpi.git
   git branch -M main
   git push -u origin main
   ```

3. **开启 Pages**
   - 进入仓库 → **Settings** → **Pages**
   - Source 选择 **main** 分支
   - 点击 **Save**

4. **访问网站**
   - 等待 1-2 分钟
   - 访问：https://Jcchervy.github.io/water-loss-kpi/

### 方式二：Vercel

```bash
npm i -g vercel
cd /root/.openclaw/workspace/water-loss-kpi-dashboard
vercel --prod
```

### 方式三：本地测试

```bash
cd /root/.openclaw/workspace/water-loss-kpi-dashboard
npx http-server -p 8080
# 访问 http://localhost:8080
```

## 🔧 自定义数据

编辑 `index.html` 中的以下内容：

### 修改 KPI 数值
```html
<div class="kpi-value good">12.5<span class="kpi-unit">%</span></div>
```

### 修改 DMA 分区数据
```html
<div class="dma-item">
    <span class="dma-name">DMA-01 中心城区</span>
    <span class="dma-value good">8.3%</span>
</div>
```

### 修改图表数据
```javascript
// 在 <script> 标签内
datasets: [{
    data: [18.5, 17.2, 16.8, ...]  // 趋势数据
}]
```

## 📱 移动端适配

页面已支持响应式设计，可在手机、平板、桌面端正常访问。

## 📄 许可证

MIT License

---

**Created by Jcchervy** | 产品经理工作助手
