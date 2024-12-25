# centos

## 介绍
基于CentOS 7的容器镜像，预装SSH服务和常用工具，适用于开发和测试环境

## 主要功能
- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置  
- 服务暴露配置

## 配置参数说明
| 参数名称 | 描述 | 类型 | 默认值 |
|---------|-----|------|--------|
| `replicaCount` | 副本数量 | integer | 1 |
| `image.repository` | 应用名称 | string | centos |
| `image.tag` | 应用标签 | string | 7 |
| `image.pullPolicy` | 应用拉取策略 | string | IfNotPresent |
| `resources.limits.cpu` | CPU 限制 | string | 1000m |
| `resources.limits.memory` | 内存限制 | string | 1024Mi |
| `env.ROOT_PASSWORD.value` | root用户密码 | string | "yunna@2024" |
| `env.SSH_PORT.value` | SSH端口 | string | "22" |
| `env.TZ.value` | 时区设置 | string | "Asia/Shanghai" |

## 部署步骤
1. 输入配置参数
2. 选择拥有足够配置应用空间
3. 立即部署

## 使用说明
基于CentOS 7的容器镜像，预装SSH服务和常用工具，适用于开发和测试环境

## 故障排除
1. Pod 无法启动
 - 检查资源限制是否合理
 - 检查应用是否存在且可访问
 
2. 服务无法访问
 - 检查服务端口配置
 - 检查 Pod 运行状态