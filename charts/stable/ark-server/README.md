# ark-server

## 介绍
方舟生存进化多人联机服务器，支持PVE和PVP模式，可驯服和培育恐龙

## 主要功能
- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置  
- 服务暴露配置

## 配置参数说明
| 参数名称 | 描述 | 类型 | 默认值 |
|---------|-----|------|--------|
| `replicaCount` | 副本数量 | integer | 1 |
| `image.repository` | 应用名称 | string | thmhoag/arkserver |
| `image.tag` | 应用标签 | string | latest |
| `image.pullPolicy` | 应用拉取策略 | string | IfNotPresent |
| `resources.limits.cpu` | CPU 限制 | string | 4000m |
| `resources.limits.memory` | 内存限制 | string | 8192Mi |
| `env.SERVERMAP.value` | 地图名称 | string | "TheIsland" |
| `env.SERVERNAME.value` | 服务器名称 | string | "ARK Server" |
| `env.SERVERPASSWORD.value` | 服务器密码 | string | "" |
| `env.ADMINPASSWORD.value` | 管理员密码 | string | "" |

## 部署步骤
1. 输入配置参数
2. 选择拥有足够配置应用空间
3. 立即部署

## 使用说明
# 服务器使用说明

## 连接方式
1. 主菜单选择'加入方舟'
2. 切换到'未保存'
3. 输入服务器地址：[IP]:7777

## 服务器设置
- 经验倍率：x3
- 驯服速度：x5
- 孵化速度：x8
- 成长速度：x6

## 玩家指令
- /help 查看帮助
- /tribe 部落管理
- /tpm 查看部落成员
- /di 查看恐龙信息

## 管理员功能
- 使用RCON进行服务器管理
- 支持网页控制台(端口27020)
- 可实时备份存档

## 注意事项
- 支持mod安装
- 请提前下载对应mod
- 建议使用Epic或Steam官方启动器

## 故障排除
1. Pod 无法启动
 - 检查资源限制是否合理
 - 检查应用是否存在且可访问
 
2. 服务无法访问
 - 检查服务端口配置
 - 检查 Pod 运行状态