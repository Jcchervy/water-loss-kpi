# 💧 桐乡水务 KPI Dashboard

桐乡市水务集团基础设施监控面板。

## 📊 Dashboard 页面

### 1. 基础设施总览（首页）
**访问**: https://Jcchervy.github.io/water-loss-kpi/

- **核心统计**: 产品 7 种、分区 11 个、场所 2,371 个、设备 2,686 台
- **📦 产品分析**: 流量仪表、压力仪表、水质分析仪、水泵分布
- **🗺️ 分区分析**: 11 个分区监测点分布（梧桐 420 点、濮院 380 点...）
- **🏭 场所分析**: 水源地 2 个、取水泵站 3 座、制水厂 3 座、管网监测点 2,363 个
- **⚙️ 设备分析**: 设备类型分布饼图
- **💡 问题与建议**: 智能预警和整改建议

### 2. 数据管理
**访问**: https://Jcchervy.github.io/water-loss-kpi/data-management.html

- **📦 产品管理**: 7 种产品 CRUD 操作
- **🗺️ 分区管理**: 11 个分区 CRUD 操作
- **🏭 场所管理**: 2,371 个场所 CRUD 操作
- **⚙️ 设备管理**: 2,686 台设备 CRUD 操作

## 🏭 覆盖范围

- **水源地**: 千岛湖源水、西部湿地
- **制水厂**: 果园桥水厂、运河水厂、同福水厂
- **分区**: 梧桐、濮院、凤鸣、石门、乌镇等 11 个分区
- **监测点**: 2,646 个
- **设备总数**: 2,686 台

## 📁 文件结构

```
water-loss-kpi-dashboard/
├── index.html              # 基础设施总览（首页）
├── data-management.html    # 数据管理
├── 分区数据.csv            # 分区数据导出
└── README.md               # 本文件
```

## 🚀 部署步骤

### GitHub Pages

1. **推送代码**
   ```bash
   cd /root/.openclaw/workspace/water-loss-kpi-dashboard
   git add .
   git commit -m "Update: simplify to overview and data management"
   git push origin main
   ```

2. **开启 Pages**
   - 进入仓库 → **Settings** → **Pages**
   - Source 选择 **main** 分支
   - 点击 **Save**

3. **访问网站**
   - 等待 1-2 分钟
   - 首页：https://Jcchervy.github.io/water-loss-kpi/
   - 数据管理：https://Jcchervy.github.io/water-loss-kpi/data-management.html

---

**Created for 桐乡市水务集团** | 2026-03-04
