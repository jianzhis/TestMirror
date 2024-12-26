# frps

## 介绍

快速反向代理服务器,用于内网穿透和游戏联机

## 主要功能

- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置
- 服务暴露配置

## 配置参数说明

| 参数名称                       | 描述                 | 类型    | 默认值             |
| ------------------------------ | -------------------- | ------- | ------------------ |
| `replicaCount`                 | 副本数量             | integer | 1                  |
| `image.repository`             | 应用名称             | string  | snowdreamtech/frps |
| `image.tag`                    | 应用标签             | string  | latest             |
| `image.pullPolicy`             | 应用拉取策略         | string  | IfNotPresent       |
| `resources.limits.cpu`         | CPU 限制             | string  | 1000m              |
| `resources.limits.memory`      | 内存限制             | string  | 1024Mi             |
| `env.FRP_TOKEN.value`          | 鉴权 token           | string  | "12345678"         |
| `env.FRP_DASHBOARD_USER.value` | Dashboard 登录用户名 | string  | "admin"            |
| `env.FRP_DASHBOARD_PWD.value`  | Dashboard 登录密码   | string  | "admin"            |

## 部署步骤

1. 输入配置参数
2. 选择拥有足够配置应用空间
3. 立即部署

# 使用说明

## UI 界面使用

1. 访问管理界面: `http://<your-server-ip>:7500`
2. 默认用户名: admin
3. 默认密码: admin
4. 在管理界面中您可以:
   - 查看当前连接状态
   - 监控流量使用情况
   - 管理代理配置

## 客户端配置说明

1. 配置 frpc.ini 文件

```ini
[common]
server_addr = <your-server-ip>
server_port = 7000

[ssh]
type = tcp
local_ip = 127.0.0.1
local_port = 22
remote_port = 6000
```

## 常见场景配置

### Web 服务

```ini
[web]
type = http
local_port = 80
custom_domains = your.domain.com
```

### 游戏服务器

```ini
[minecraft]
type = tcp
local_port = 25565
remote_port = 25565
```

## 注意事项

- 请确保配置文件中的端口号正确
- 定期检查服务连接状态
- 使用时请遵守当地法律法规

## 故障排除

1. Pod 无法启动

- 检查资源限制是否合理
- 检查应用是否存在且可访问

2. 服务无法访问

- 检查服务端口配置
- 检查 Pod 运行状态
