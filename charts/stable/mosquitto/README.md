# mosquitto

## 介绍
开源的MQTT消息代理服务器，专注于为物联网设备提供轻量级的发布/订阅消息传输

## 主要功能
- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置  
- 服务暴露配置

## 配置参数说明
| 参数名称 | 描述 | 类型 | 默认值 |
|---------|-----|------|--------|
| `replicaCount` | 副本数量 | integer | 1 |
| `image.repository` | 应用名称 | string | eclipse-mosquitto |
| `image.tag` | 应用标签 | string | latest |
| `image.pullPolicy` | 应用拉取策略 | string | IfNotPresent |
| `resources.limits.cpu` | CPU 限制 | string | 1000m |
| `resources.limits.memory` | 内存限制 | string | 1024Mi |
| `env.MOSQUITTO_USERNAME.value` | MQTT用户名 | string | "admin" |
| `env.MOSQUITTO_PASSWORD.value` | MQTT密码 | string | "public" |

## 部署步骤
1. 输入配置参数
2. 选择拥有足够配置应用空间
3. 立即部署

## 使用说明
# Mosquitto MQTT 使用指南

## 1. 连接信息
- MQTT端口: 1883
- WebSocket端口: 9001
- 默认用户名: admin
- 默认密码: public

## 2. 客户端连接
### MQTT 客户端
使用任意MQTT客户端(如MQTTX、MQTTfx等)，配置以下信息:
- 服务器地址: mqtt://your-host
- 端口: 1883
- 用户名: admin
- 密码: public

### WebSocket 客户端
网页应用可通过WebSocket连接:
- WebSocket地址: ws://your-host:9001
- 用户名和密码同上

## 3. 主题示例
- 发布消息: publish /test "hello"
- 订阅主题: subscribe /test

## 4. 注意事项
- 请及时修改默认密码以保证安全
- 建议使用TLS加密传输敏感数据
- 避免使用过于通用的主题名称

## 5. 常见问题
1. 连接被拒绝
- 检查用户名密码是否正确
- 确认端口是否开放

2. 消息无法接收
- 确认是否订阅了正确的主题
- 检查客户端连接状态

## 故障排除
1. Pod 无法启动
 - 检查资源限制是否合理
 - 检查应用是否存在且可访问
 
2. 服务无法访问
 - 检查服务端口配置
 - 检查 Pod 运行状态