# ubuntu-ssh

## 介绍
该应用提供一个基于 Ubuntu 的 SSH 服务，支持基本的命令行工具和 SSH 连接，方便远程管理与操作。

## 主要功能
- SSH 远程登录功能
- 安装常用工具（如 Vim、Curl）
- 支持持久化存储

## 配置参数说明
| 参数名称                | 描述                       | 类型   | 默认值     |
|---------------------|--------------------------|------|----------|
| `replicaCount`      | 副本数量                   | int  | 1        |
| `image.repository`  | 镜像名称                   | str  | ubuntu   |
| `image.tag`         | 镜像标签                   | str  | 22.04    |
| `service.type`      | 服务类型                   | str  | ClusterIP|
| `persistence.enabled`| 是否启用持久化存储         | bool | true     |
| `env.env1`          | 根用户密码设置             | obj  | {...}    |
| `env.env2`          | SSH端口设置                | obj  | {...}    |

## 部署步骤
1. 确保已安装 Helm。
2. 执行 `helm install <release-name> ./ubuntu-ssh` 进行安装。

## 使用说明
通过 SSH 客户端连接到服务，使用配置的用户名和密码进行登录。

## 故障排除
- 若无法连接 SSH，请检查服务是否已启动，并确认网络配置正确。
- 检查 Pod 日志以获取更多信息：`kubectl logs <pod-name>`。
