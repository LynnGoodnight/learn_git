# ICX数据自动化流程搭建：﻿辟谷场景

Yimin Tao

2018-11-14

## 背景

​	经黎叔、亚猛讨论，决定以辟谷服务场景为例，推动数据自动化全流程：归档、预处理、质控、存储、API访问、APP展示。

​	AI ETL Group负责数据的预处理、质控；原始数据的归档、PID对应关系由洪兵负责；数据的存储、API访问、APP展示由IT负责。

## 辟谷场景涉及的数据类型

- 组学检测类：SNP、肠道微生物、尿代谢、血脂质（血代谢）
- 问卷类
- 临床检测类：血常规
- 穿戴设备类：血糖仪、手环、体脂称/仪、睡眠仪

| 数据类型 | 原始数据归档形式      | ETL处理目标     |
| ---- | ------------- | ----------- |
| 问卷类  | ICX问卷数据库      | -           |
| 组学类  | ICX实验下机文件     | 信息抽提、预处理、质控 |
| 临床类  | 合作机构文件、用户自拍照片 | 信息抽提、预处理、质控 |
| 设备类  | ICX设备数据库      | 信息抽提、预处理、质控 |

## ETL Group

**职责**

- 制定数据处理ICX标准和处理规范SOP
- 提供标准处理工具
- 将处理工具以工程化的方式部署到ICX数据自动化流程中去
- 研发、迭代处理工具

**处理内容**

- 数据提取 Extraction

  > 从结构化、非结构化问卷进行原始数据读取

- 数据格式转化 Transform

  > 拆分、汇总、one-hot映射、UTF8编码方式转化...

- 信息抽提 Loading

  > e.g. SNP calling、RNA-seq 定量、心电时频域特征计算

- 预处理 Loading

  > e.g. 心电基线漂移校正

- 质控 Quality control

  > e.g. SNP质量筛选、血糖异常值剔除，人群总体分布质控，个体时序变化质控...

**处理逻辑**

```
if 符合ICX标准规范：
	按照规范进行读取
	按照规范进行后续操作
else：
	抛出错误
	抛出人工检查请求
	由运维人员进行人工检测与修正
	根据人工检查反馈，定期升级、优化ICX标准规范
```

## 潜在问题及可行性保障

1. 非结构化数据难以处理

   辟谷组前期已经进行了大量数据分析工作，大量代码可以复用。如果实在难以处理，则标记为“ICX标准规范暂不支持该类数据”。

2. 不清楚特定类型数据的处理标准，该如何选取

   可以按照之前自己分析时采用的标准，进行设定。第一期以贯通全流程为目标，标准、分析内容后续将进一步迭代。

3. 之前没进行过工程化文档记录、程序部署

   项目中，有充足时间进行学习。