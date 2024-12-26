# netmaker

## 介绍
一个用于构建和管理虚拟网络的平台，支持零信任架构

## 主要功能
- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置  
- 服务暴露配置

## 配置参数说明
| 参数名称 | 描述 | 类型 | 默认值 |
|---------|-----|------|--------|
| `replicaCount` | 副本数量 | integer | 1 |
| `image.repository` | 应用名称 | string | gravitl/netmaker |
| `image.tag` | 应用标签 | string | latest |
| `image.pullPolicy` | 应用拉取策略 | string | IfNotPresent |
| `resources.limits.cpu` | CPU 限制 | string | 1000m |
| `resources.limits.memory` | 内存限制 | string | 1024Mi |
| `env.MASTER_KEY.value` | 管理密钥 | string | "netmaker123" |
| `env.SERVER_HOST.value` | 服务器监听地址 | string | "0.0.0.0" |
| `env.NETMAKER_BASE_DOMAIN.value` | 基础域名 | string | "111.180.193.51" |
| `env.CORS_ALLOWED_ORIGIN.value` | 跨域访问控制 | string | "*" |
| `env.MQ_HOST.value` | MQTT服务器地址 | string | "111.180.193.51" |
| `env.MQ_PORT.value` | MQTT服务器端口 | string | "30098" |
| `env.MQ_USERNAME.value` | MQTT用户名 | string | "admin" |
| `env.MQ_PASSWORD.value` | MQTT密码 | string | "admin" |

## 部署步骤
1. 输入配置参数
2. 选择拥有足够配置应用空间
3. 立即部署

## 使用说明
# Netmaker 使用指南

## 1. 访问管理界面
- Web UI地址: http://your-host:8082
- API地址: http://your-host:8081

## 2. 初始配置
- 使用设置的 MASTER_KEY 作为初始管理密钥
- 通过Web界面创建管理员账户
- 开始配置您的网络

## 3. 主要功能
- 网络创建和管理
- 节点管理
- 访问控制
- 网络监控

## 4. 注意事项
- 请及时修改默认的 MASTER_KEY
- 确保 NETMAKER_BASE_DOMAIN 配置正确
- 建议配置 SSL 证书以确保安全性

## 5. 故障排查
1. 无法访问界面
- 检查 8082 端口是否开放
- 确认服务是否正常运行

2. API 连接失败
- 验证 8081 端口可访问性
- 检查 API 服务状态

## 故障排除
1. Pod 无法启动
 - 检查资源限制是否合理
 - 检查应用是否存在且可访问
 
2. 服务无法访问
 - 检查服务端口配置
 - 检查 Pod 运行状态