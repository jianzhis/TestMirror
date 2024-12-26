# netmaker

## 介绍

创建和管理 WireGuard VPN 网络的平台

## 主要功能

- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置
- 服务暴露配置

## 配置参数说明

| 参数名称                         | 描述             | 类型    | 默认值           |
| -------------------------------- | ---------------- | ------- | ---------------- |
| `replicaCount`                   | 副本数量         | integer | 1                |
| `image.repository`               | 应用名称         | string  | gravitl/netmaker |
| `image.tag`                      | 应用标签         | string  | latest           |
| `image.pullPolicy`               | 应用拉取策略     | string  | IfNotPresent     |
| `resources.limits.cpu`           | CPU 限制         | string  | 1000m            |
| `resources.limits.memory`        | 内存限制         | string  | 1024Mi           |
| `env.MASTER_KEY.value`           | 主密钥,用于加密  | string  | "secretkey"      |
| `env.SERVER_HOST.value`          | 服务监听地址     | string  | "0.0.0.0"        |
| `env.NETMAKER_BASE_DOMAIN.value` | 基础域名         | string  | "0.0.0.0"        |
| `env.CORS_ALLOWED_ORIGIN.value`  | 允许跨域访问的源 | string  | "\*"             |
| `env.MQ_HOST.value`              | MQTT 服务器地址  | string  | "emqx-broker"    |
| `env.MQ_PORT.value`              | MQTT 服务器端口  | string  | "1883"           |

## 部署步骤

1. 输入配置参数
2. 选择拥有足够配置应用空间
3. 立即部署

## 使用说明

# 使用说明

## UI 界面访问

必须：绑定 MQTT

1. 访问管理界面: `http://localhost:8082`
2. 默认管理员账号: admin
3. 默认管理员密码: password123

## 创建网络

1. 登录管理界面
2. 点击「Networks」->「Create Network」
3. 填写网络名称和基本配置
4. 点击「Create」完成创建

## 添加客户端

1. 进入已创建的网络
2. 点击「Add Node」
3. 填写节点信息
4. 下载配置文件并导入客户端

## 注意事项

- 请及时修改默认管理员密码
- 定期备份网络配置
- 确保防火墙正确配置

## 故障排除

1. Pod 无法启动

- 检查资源限制是否合理
- 检查应用是否存在且可访问

2. 服务无法访问

- 检查服务端口配置
- 检查 Pod 运行状态
