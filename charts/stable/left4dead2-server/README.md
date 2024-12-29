# left4dead2-server

## 介绍
求生之路2多人联机服务器，支持战役、对抗、清道夫等多种游戏模式

## 主要功能
- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置  
- 服务暴露配置

## 配置参数说明
| 参数名称 | 描述 | 类型 | 默认值 |
|---------|-----|------|--------|
| `replicaCount` | 副本数量 | integer | 1 |
| `image.repository` | 应用名称 | string | cm2network/l4d2 |
| `image.tag` | 应用标签 | string | latest |
| `image.pullPolicy` | 应用拉取策略 | string | IfNotPresent |
| `resources.limits.cpu` | CPU 限制 | string | 2000m |
| `resources.limits.memory` | 内存限制 | string | 2048Mi |
| `env.SRCDS_TOKEN.value` | Steam Game Server Token | string | "" |
| `env.SRCDS_PW.value` | 服务器密码 | string | "" |
| `env.SRCDS_RCONPW.value` | RCON密码 | string | "" |

## 部署步骤
1. 输入配置参数
2. 选择拥有足够配置应用空间
3. 立即部署

## 使用说明
# 服务器使用说明

## 游戏模式
- 战役模式：最多4人合作
- 对抗模式：最多8人PVP
- 清道夫模式：4v4对抗

## 玩家指令
1. 使用控制台(~键)可以执行以下指令：
- !join 加入游戏
- !teams 选择队伍
- !ready 准备开始
- !pause 申请暂停

## 管理员指令
1. RCON连接方式：
- 使用HLSW或其他RCON工具
- 默认端口：27015

2. 常用管理指令：
- sm_map 切换地图
- sm_kick 踢出玩家
- sm_ban 封禁玩家

## 注意事项
- 服务器支持工坊地图和mod
- 玩家需要安装相同的mod才能进入
- 建议使用Steam内置的服务器浏览器查找

## 故障排除
1. Pod 无法启动
 - 检查资源限制是否合理
 - 检查应用是否存在且可访问
 
2. 服务无法访问
 - 检查服务端口配置
 - 检查 Pod 运行状态