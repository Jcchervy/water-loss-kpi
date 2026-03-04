# 💧 桐乡水务 KPI Dashboard

桐乡市水务集团监控面板，包含漏损控制和基础设施管理两大模块。

## 📊 Dashboard 页面

### 1. 供水漏损控制 KPI
**访问**: https://Jcchervy.github.io/water-loss-kpi/

- 综合漏损率、日供水量、漏损水量、压力合格率
- DMA 分区漏损率排名（梧桐、乌镇、濮院等 11 个分区）
- 漏损率 12 个月趋势图
- 水量平衡分析
- 维修工单跟踪

### 2. 基础设施 KPI
**访问**: https://Jcchervy.github.io/water-loss-kpi/infrastructure.html

- 场所建设：水源地 2 个、取水泵站 3 座、制水厂 3 座
- 设备统计：流量仪表 2,330 台、压力仪表 308 台、水质分析仪 8 台、水泵 40 台
- 分区监测覆盖情况
- 问题预警与建议

## 🏭 覆盖范围

- **水源地**: 千岛湖源水、西部湿地
- **制水厂**: 果园桥水厂、运河水厂、同福水厂
- **分区**: 梧桐、濮院、凤鸣、石门、乌镇等 11 个分区
- **监测点**: 2,646 个 (流量 2,330 + 压力 308 + 水质 8)

## 📁 文件结构

```
water-loss-kpi-dashboard/
├── index.html          # 漏损控制 KPI Dashboard
├── infrastructure.html # 基础设施 KPI Dashboard
├── DEPLOY.md           # 部署指南
└── README.md           # 本文件
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
   git push -u origin main --force
   ```

3. **开启 Pages**
   - 进入仓库 → **Settings** → **Pages**
   - Source 选择 **main** 分支
   - 点击 **Save**

4. **访问网站**
   - 等待 1-2 分钟
   - 漏损控制：https://Jcchervy.github.io/water-loss-kpi/
   - 基础设施：https://Jcchervy.github.io/water-loss-kpi/infrastructure.html

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
# 访问 http://localhost:8080/infrastructure.html
```

## 🔧 自定义数据

编辑 `index.html` 或 `infrastructure.html` 中的以下内容：

### 修改 KPI 数值
```html
<div class="card-value green">11.8<span class="card-unit">%</span></div>
```

### 修改分区数据
```html
<div class="dma-item">
    <span class="dma-name">梧桐分区 (WT)</span>
    <span class="dma-value good">9.2%</span>
</div>
```

### 修改图表数据
```javascript
// 在 <script> 标签内
datasets: [{
    data: [17.2, 16.5, 15.8, ...]  // 趋势数据
}]
```

## 📱 移动端适配

页面已支持响应式设计，可在手机、平板、桌面端正常访问。

## 📄 许可证

MIT License

---

**Created for 桐乡市水务集团** | 2026-03-04
