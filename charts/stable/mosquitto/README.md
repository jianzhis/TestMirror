# mosquitto

## 介绍
Eclipse Mosquitto 是一个开源的消息代理，实现了 MQTT 协议版本 5.0、3.1.1 和 3.1。非常适合物联网场景下的消息传递。

## 主要功能
- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置
- 服务暴露配置

## 配置参数说明
| 参数名称 | 描述 | 类型 | 默认值 |
|---------|-----|------|--------|
| `replicaCount` | 副本数量 | integer | 1 |
| `image.repository` | 应用名称 | string | eclipse-mosquitto/mosquitto |
| `image.tag` | 应用标签 | string | 2.0.18 |
| `image.pullPolicy` | 应用拉取策略 | string | IfNotPresent |
| `resources.limits.cpu` | CPU 限制 | string | 500m |
| `resources.limits.memory` | 内存限制 | string | 512Mi |
| `env.MOSQUITTO_USERNAME.value` | MQTT用户名 | string | "admin" |
| `env.MOSQUITTO_PASSWORD.value` | MQTT密码 | string | "password123" |

## 部署步骤
1. 输入配置参数
2. 选择拥有足够配置应用空间
3. 立即部署

## 使用说明
Eclipse Mosquitto 是一个开源的消息代理，实现了 MQTT 协议版本 5.0、3.1.1 和 3.1。非常适合物联网场景下的消息传递。

## 故障排除
1. Pod 无法启动
  - 检查资源限制是否合理
  - 检查应用是否存在且可访问
  
2. 服务无法访问
  - 检查服务端口配置
  - 检查 Pod 运行状态