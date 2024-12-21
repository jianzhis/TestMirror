# flarum

## 介绍
现代化的轻量级开源论坛系统

## 主要功能
- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置
- 服务暴露配置

## 配置参数说明
| 参数名称 | 描述 | 类型 | 默认值 |
|---------|-----|------|--------|
| `replicaCount` | 副本数量 | integer | 1 |
| `image.repository` | 应用名称 | string | flarum/flarum |
| `image.tag` | 应用标签 | string | 1.8.0 |
| `image.pullPolicy` | 应用拉取策略 | string | IfNotPresent |
| `resources.limits.cpu` | CPU 限制 | string | 1000m |
| `resources.limits.memory` | 内存限制 | string | 1024Mi |
| `env.FLARUM_FORUM_TITLE.value` | FLARUM_FORUM_TITLE 环境变量 | string | 我的社区 |
| `env.FLARUM_ADMIN_USER.value` | FLARUM_ADMIN_USER 环境变量 | string | admin |
| `env.FLARUM_ADMIN_PASSWORD.value` | FLARUM_ADMIN_PASSWORD 环境变量 | string | password |
| `env.FLARUM_BASE_URL.value` | FLARUM_BASE_URL 环境变量 | string | http://localhost |

## 部署步骤
1. 输入配置参数

2. 选择拥有足够配置应用空间

3. 立即部署

## 使用说明
现代化的轻量级开源论坛系统

## 故障排除
1. Pod 无法启动
  - 检查资源限制是否合理
  - 检查应用是否存在且可访问
  
2. 服务无法访问
  - 检查服务端口配置
  - 检查 Pod 运行状态