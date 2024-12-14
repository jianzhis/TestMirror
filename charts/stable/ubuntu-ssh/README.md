# Ubuntu SSH Helm Chart

## 介绍
这是一个支持多版本 Ubuntu 镜像的 Helm Chart，预装 OpenSSH 服务和常用工具。

## 主要功能
- 使用 Ubuntu 官方镜像
- 预装基础工具（如 vim、curl 等）
- 支持多版本选择（20.04/22.04/23.04）

## 配置参数说明
| 参数名称                | 描述                   | 类型   | 默认值      |
|-------------------------|------------------------|--------|-------------|
| `global.ubuntuVersion`  | Ubuntu 版本号          | string | "22.04"     |
| `env.env1.value`        | root 用户密码          | string | "changeme"  |
| `env.env2.value`        | SSH 服务端口           | int    | 22          |
| `env.env3.value`        | 是否允许 root 登录     | string | "yes"       |

## 部署步骤
```bash
helm install ubuntu-ssh ./charts/stable/ubuntu-ssh
