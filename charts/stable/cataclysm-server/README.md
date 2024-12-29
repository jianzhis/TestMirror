# cataclysm-server

## 介绍
末日生存游戏未转变者的多人联机服务器，支持多人合作探索和生存

## 主要功能
- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置  
- 服务暴露配置

## 配置参数说明
| 参数名称 | 描述 | 类型 | 默认值 |
|---------|-----|------|--------|
| `replicaCount` | 副本数量 | integer | 1 |
| `image.repository` | 应用名称 | string | cataclysmdda/cataclysm-dda |
| `image.tag` | 应用标签 | string | latest |
| `image.pullPolicy` | 应用拉取策略 | string | IfNotPresent |
| `resources.limits.cpu` | CPU 限制 | string | 1000m |
| `resources.limits.memory` | 内存限制 | string | 1024Mi |
| `env.SERVER_PORT.value` | 服务器端口 | string | "6112" |
| `env.SERVER_NAME.value` | 服务器名称 | string | "CDDA Server" |

## 部署步骤
1. 输入配置参数
2. 选择拥有足够配置应用空间
3. 立即部署

## 使用说明
# 服务器使用说明

## 连接方式
- 在游戏主界面选择'Join Game'
- 输入服务器IP和端口(默认6112)
- 输入你的角色名称

## 游戏特点
- 支持多人合作生存
- 共享地图探索进度
- 物品掉落可保存

## 玩家指令
- /help 查看所有指令
- /tell 私聊其他玩家
- /faction 查看阵营信息
- /time 查看游戏时间

## 注意事项
- 建议开启'实时保存'选项
- 死亡后物品会在原地保留一段时间
- 服务器每6小时自动保存一次

## 故障排除
1. Pod 无法启动
 - 检查资源限制是否合理
 - 检查应用是否存在且可访问
 
2. 服务无法访问
 - 检查服务端口配置
 - 检查 Pod 运行状态