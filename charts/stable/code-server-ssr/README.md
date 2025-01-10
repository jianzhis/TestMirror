# code-server-ssr

## 介绍
支持SSR代理的在线VSCode开发环境

## 主要功能
- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置  
- 服务暴露配置

## 配置参数说明
| 参数名称 | 描述 | 类型 | 默认值 |
|---------|-----|------|--------|
| `replicaCount` | 副本数量 | integer | 1 |
| `image.repository` | 应用名称 | string | nidexiong/code-server-ssr |
| `image.tag` | 应用标签 | string | latest |
| `image.pullPolicy` | 应用拉取策略 | string | IfNotPresent |
| `resources.limits.cpu` | CPU 限制 | string | 1000m |
| `resources.limits.memory` | 内存限制 | string | 1024Mi |
| `env.PASSWORD.value` | 登录密码，用于访问IDE环境时的身份验证 | string | "changeme" |

## 部署步骤
1. 输入配置参数
2. 选择拥有足够配置应用空间
3. 立即部署

## 使用说明
这是一个基于code-server的在线IDE环境，集成了SSR代理支持。通过配置PASSWORD可以设置访问密码，配置PROXY_DOMAIN可以设置代理域名。部署后可以通过浏览器访问完整的VSCode开发环境。

## 故障排除
1. Pod 无法启动
 - 检查资源限制是否合理
 - 检查应用是否存在且可访问
 
2. 服务无法访问
 - 检查服务端口配置
 - 检查 Pod 运行状态