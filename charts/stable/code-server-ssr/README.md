# code-server-ssr

## 介绍

支持 SSR 代理的在线 VSCode 开发环境

## 主要功能

- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置
- 服务暴露配置

## 配置参数说明

| 参数名称                    | 描述                   | 类型    | 默认值                    |
| --------------------------- | ---------------------- | ------- | ------------------------- |
| `replicaCount`              | 副本数量               | integer | 1                         |
| `image.imageRegistry`       | 镜像仓库地址           | string  | registry-2.yunna.net      |
| `image.repository`          | 应用名称               | string  | nidexiong/code-server-ssr |
| `image.tag`                 | 应用标签               | string  | latest                    |
| `image.pullPolicy`          | 应用拉取策略           | string  | Always                    |
| `resources.limits.cpu`      | CPU 限制               | string  | 1000m                     |
| `resources.limits.memory`   | 内存限制               | string  | 2000Mi                    |
| `resources.requests.cpu`    | CPU 请求               | string  | 500m                      |
| `resources.requests.memory` | 内存请求               | string  | 512Mi                     |
| `persistence.enabled`       | 是否启用持久化存储     | boolean | true                      |
| `persistence.size`          | 存储大小               | string  | 10Gi                      |
| `persistence.storageClass`  | 存储类名称             | string  | local                     |
| `persistence.accessMode`    | 存储访问模式           | string  | ReadWriteOnce             |
| `service.type`              | 服务类型               | string  | NodePort                  |
| `tls.enabled`               | 是否启用 TLS           | boolean | true                      |
| `tls.secretName`            | TLS 密钥存储名称       | string  | code-server-ssr-tls       |
| `env.env1.name`             | 环境变量名称           | string  | PASSWORD                  |
| `env.env1.value`            | 环境变量值（登录密码） | string  | changeme                  |

## 部署步骤

1. 输入配置参数
2. 选择拥有足够配置应用空间
3. 立即部署

## 使用说明

这是一个基于 code-server 的在线 IDE 环境，集成了 SSR 代理支持。通过配置 PASSWORD 可以设置访问密码，配置 PROXY_DOMAIN 可以设置代理域名。部署后可以通过浏览器访问完整的 VSCode 开发环境。测试

## 故障排除

1. Pod 无法启动

- 检查资源限制是否合理
- 检查应用是否存在且可访问

2. 服务无法访问

- 检查服务端口配置
- 检查 Pod 运行状态
