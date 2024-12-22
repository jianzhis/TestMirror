# influxdb

## 介绍
InfluxDB 是一个用于存储和分析时间序列数据的开源数据库，特别适合物联网设备数据、监控指标等场景。

## 主要功能
- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置
- 服务暴露配置

## 配置参数说明
| 参数名称 | 描述 | 类型 | 默认值 |
|---------|-----|------|--------|
| `replicaCount` | 副本数量 | integer | 1 |
| `image.repository` | 应用名称 | string | influxdb/influxdb |
| `image.tag` | 应用标签 | string | 2.7.3 |
| `image.pullPolicy` | 应用拉取策略 | string | IfNotPresent |
| `resources.limits.cpu` | CPU 限制 | string | 1000m |
| `resources.limits.memory` | 内存限制 | string | 2048Mi |
| `env.DOCKER_INFLUXDB_INIT_MODE.value` | 初始化模式 | string | "setup" |
| `env.DOCKER_INFLUXDB_INIT_USERNAME.value` | 管理员用户名 | string | "admin" |
| `env.DOCKER_INFLUXDB_INIT_PASSWORD.value` | 管理员密码 | string | "password123" |
| `env.DOCKER_INFLUXDB_INIT_ORG.value` | 组织名称 | string | "yunna" |
| `env.DOCKER_INFLUXDB_INIT_BUCKET.value` | 默认数据桶 | string | "iot" |

## 部署步骤
1. 输入配置参数
2. 选择拥有足够配置应用空间
3. 立即部署

## 使用说明
InfluxDB 是一个用于存储和分析时间序列数据的开源数据库，特别适合物联网设备数据、监控指标等场景。

## 故障排除
1. Pod 无法启动
  - 检查资源限制是否合理
  - 检查应用是否存在且可访问
  
2. 服务无法访问
  - 检查服务端口配置
  - 检查 Pod 运行状态