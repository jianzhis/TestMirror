# valheim-server

## 介绍
北欧神话风格生存游戏英灵神殿的多人联机服务器，支持最多10人同时在线

## 主要功能
- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置  
- 服务暴露配置

## 配置参数说明
| 参数名称 | 描述 | 类型 | 默认值 |
|---------|-----|------|--------|
| `replicaCount` | 副本数量 | integer | 1 |
| `image.repository` | 应用名称 | string | lloesche/valheim-server |
| `image.tag` | 应用标签 | string | latest |
| `image.pullPolicy` | 应用拉取策略 | string | IfNotPresent |
| `resources.limits.cpu` | CPU 限制 | string | 2000m |
| `resources.limits.memory` | 内存限制 | string | 4096Mi |
| `env.SERVER_NAME.value` | 服务器名称 | string | "Valheim Server" |
| `env.WORLD_NAME.value` | 世界名称 | string | "Dedicated" |
| `env.SERVER_PASS.value` | 服务器密码 | string | "" |

## 部署步骤
1. 输入配置参数
2. 选择拥有足够配置应用空间
3. 立即部署

## 使用说明
# 服务器使用说明

## 连接方式
1. 在游戏主菜单选择'Join Game'
2. 切换到'Join IP'
3. 输入服务器信息：
   - 地址：[服务器IP]:2456
   - 密码：见服务器说明

## 游戏功能
- 支持10人同时在线
- 世界进度自动保存
- 支持添加模组

## 常用指令
- F5开启控制台
- /ping 查看延迟
- /players 查看在线玩家
- /kick 踢出玩家(管理员)

## 注意事项
- 请确保安装与服务器相同版本的游戏
- 如使用mod，需下载相同的mod包
- 死亡后物品掉落需及时拾取

## 故障排除
1. Pod 无法启动
 - 检查资源限制是否合理
 - 检查应用是否存在且可访问
 
2. 服务无法访问
 - 检查服务端口配置
 - 检查 Pod 运行状态