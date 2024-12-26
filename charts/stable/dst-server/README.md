# dst-server

## 介绍
饥荒联机版独立服务器

## 主要功能
- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置  
- 服务暴露配置

## 配置参数说明
| 参数名称 | 描述 | 类型 | 默认值 |
|---------|-----|------|--------|
| `replicaCount` | 副本数量 | integer | 1 |
| `image.repository` | 应用名称 | string | snowdreamtech/dst-server |
| `image.tag` | 应用标签 | string | latest |
| `image.pullPolicy` | 应用拉取策略 | string | IfNotPresent |
| `resources.limits.cpu` | CPU 限制 | string | 2000m |
| `resources.limits.memory` | 内存限制 | string | 2048Mi |
| `env.CLUSTER_NAME.value` | 服务器名称 | string | "我的饥荒服务器" |
| `env.CLUSTER_DESCRIPTION.value` | 服务器描述 | string | "这是一个饥荒服务器" |
| `env.CLUSTER_PASSWORD.value` | 服务器密码 | string | "" |
| `env.CLUSTER_INTENTION.value` | 游戏模式：cooperative/competitive/social/madness | string | "cooperative" |
| `env.GAMEMODE.value` | 游戏模式：survival/endless/wilderness | string | "survival" |
| `env.MAX_PLAYERS.value` | 最大玩家数 | string | "6" |
| `env.PVP.value` | 是否开启PVP | string | "false" |
| `env.PAUSE_WHEN_EMPTY.value` | 无人时暂停 | string | "true" |

## 部署步骤
1. 输入配置参数
2. 选择拥有足够配置应用空间
3. 立即部署

## 使用说明
# 使用说明

## 游戏连接
1. 启动饥荒联机版
2. 点击「游戏」->「浏览游戏」
3. 切换到「在线」标签
4. 搜索服务器名称即可找到并连接

## 管理员命令
在游戏中按 ` 键打开控制台，输入以下命令：
```bash
# 管理员权限
c_make_admin("KU_xxxx")

# 常用命令
c_give("prefab_name") # 生成物品
c_spawn("prefab_name") # 生成生物
c_godmode() # 无敌模式
```

## 注意事项
- 首次进入服务器需要等待世界生成
- 定期备份存档以防数据丢失
- 请遵守游戏规则，保持良好游戏环境

## 故障排除
1. Pod 无法启动
 - 检查资源限制是否合理
 - 检查应用是否存在且可访问
 
2. 服务无法访问
 - 检查服务端口配置
 - 检查 Pod 运行状态