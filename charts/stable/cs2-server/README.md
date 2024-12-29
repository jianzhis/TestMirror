# cs2-server

## 介绍
CS2竞技对抗服务器，支持自定义地图和比赛模式

## 主要功能
- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置  
- 服务暴露配置

## 配置参数说明
| 参数名称 | 描述 | 类型 | 默认值 |
|---------|-----|------|--------|
| `replicaCount` | 副本数量 | integer | 1 |
| `image.repository` | 应用名称 | string | cm2network/cs2 |
| `image.tag` | 应用标签 | string | latest |
| `image.pullPolicy` | 应用拉取策略 | string | IfNotPresent |
| `resources.limits.cpu` | CPU 限制 | string | 4000m |
| `resources.limits.memory` | 内存限制 | string | 4096Mi |
| `env.SRCDS_TOKEN.value` | Steam Game Server Token | string | "" |
| `env.SRCDS_PW.value` | 服务器密码 | string | "" |
| `env.SRCDS_RCONPW.value` | RCON密码 | string | "" |

## 部署步骤
1. 输入配置参数
2. 选择拥有足够配置应用空间
3. 立即部署

## 使用说明
# 服务器使用说明

## 连接方式
- 游戏内控制台连接：
  1. 按~键打开控制台
  2. 输入：connect [服务器IP]:27015

## 游戏模式
- 竞技模式：5v5
- 休闲模式：10v10
- 死亡竞赛：自由混战

## 玩家指令
- !ws 切换队伍
- !stats 查看数据
- !map 投票换图
- !rtv 投票换图

## 管理员指令
- rcon_password 连接管理
- sm_map 强制换图
- sm_kick 踢人
- sm_ban 封禁

## 注意事项
- 支持自定义准星和视角
- 支持工坊地图
- 违规行为会被自动封禁

## 故障排除
1. Pod 无法启动
 - 检查资源限制是否合理
 - 检查应用是否存在且可访问
 
2. 服务无法访问
 - 检查服务端口配置
 - 检查 Pod 运行状态