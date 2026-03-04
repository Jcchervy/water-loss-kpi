# 💧 桐乡水务 KPI Dashboard

桐乡市水务集团监控面板，包含漏损控制、基础设施、总览和数据管理四大模块。

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

### 3. 基础设施总览 ⭐ NEW
**访问**: https://Jcchervy.github.io/water-loss-kpi/overview.html

- **产品分析**: 7 种产品类型分布
- **分区分析**: 11 个分区监测点分布
- **场所分析**: 水源地、泵站、水厂、监测点统计
- **设备分析**: 设备类型分布、在线率统计
- **问题与建议**: 智能预警和整改建议

### 4. 数据管理 ⭐ NEW
**访问**: https://Jcchervy.github.io/water-loss-kpi/data-management.html

- **产品管理**: 7 种产品 CRUD 操作
- **分区管理**: 11 个分区 CRUD 操作
- **场所管理**: 2,371 个场所 CRUD 操作（水源地、泵站、水厂、监测点）
- **设备管理**: 2,686 台设备 CRUD 操作（流量、压力、水质、水泵）

## 🏭 覆盖范围

- **水源地**: 千岛湖源水、西部湿地
- **制水厂**: 果园桥水厂、运河水厂、同福水厂
- **分区**: 梧桐、濮院、凤鸣、石门、乌镇等 11 个分区
- **监测点**: 2,646 个 (流量 2,330 + 压力 308 + 水质 8)
- **设备总数**: 2,686 台

## 📁 文件结构

```
water-loss-kpi-dashboard/
├── index.html              # 漏损控制 KPI Dashboard
├── infrastructure.html     # 基础设施 KPI Dashboard
├── overview.html           # 基础设施总览 (NEW)
├── data-management.html    # 数据管理 (NEW)
├── 分区数据.csv            # 分区数据导出
├── DEPLOY.md               # 部署指南
└── README.md               # 本文件
```

## 🚀 部署步骤

### GitHub Pages

1. **推送代码**
   ```bash
   cd /root/.openclaw/workspace/water-loss-kpi-dashboard
   git add .
   git commit -m "Add overview and data management pages"
   git push origin main
   ```

2. **开启 Pages**
   - 进入仓库 → **Settings** → **Pages**
   - Source 选择 **main** 分支
   - 点击 **Save**

3. **访问网站**
   - 等待 1-2 分钟
   - 主页：https://Jcchervy.github.io/water-loss-kpi/
   - 基础设施：https://Jcchervy.github.io/water-loss-kpi/infrastructure.html
   - 总览：https://Jcchervy.github.io/water-loss-kpi/overview.html
   - 数据管理：https://Jcchervy.github.io/water-loss-kpi/data-management.html

## 🔧 自定义数据

编辑对应 HTML 文件中的 JavaScript 数据：

```javascript
// 修改图表数据
datasets: [{
    data: [420, 380, 290, ...]  // 分区监测点数据
}]

// 修改表格数据
<tbody>
    <tr><td>1</td><td>数据...</td></tr>
</tbody>
```

## 📱 移动端适配

所有页面已支持响应式设计，可在手机、平板、桌面端正常访问。

---

**Created for 桐乡市水务集团** | 2026-03-04
