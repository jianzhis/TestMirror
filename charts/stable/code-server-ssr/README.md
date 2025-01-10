# code-server-ssr

## 介绍

支持 SSR 代理的在线 VSCode 开发环境

## 主要功能

- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置
- 服务暴露配置

## 配置参数说明

| 参数名称                  | 描述                                    | 类型    | 默认值                    |
| ------------------------- | --------------------------------------- | ------- | ------------------------- |
| `replicaCount`            | 副本数量                                | integer | 1                         |
| `image.repository`        | 应用名称                                | string  | nidexiong/code-server-ssr |
| `image.tag`               | 应用标签                                | string  | latest                    |
| `image.pullPolicy`        | 应用拉取策略                            | string  | IfNotPresent              |
| `resources.limits.cpu`    | CPU 限制                                | string  | 1000m                     |
| `resources.limits.memory` | 内存限制                                | string  | 1024Mi                    |
| `env.PASSWORD.value`      | 登录密码，用于访问 IDE 环境时的身份验证 | string  | "changeme"                |

## 部署步骤

1. 输入配置参数
2. 选择拥有足够配置应用空间
3. 立即部署

## 使用说明

这是一个基于 code-server 的在线 IDE 环境，集成了 SSR 代理支持。通过配置 PASSWORD 可以设置访问密码，配置 PROXY_DOMAIN 可以设置代理域名。部署后可以通过浏览器访问完整的 VSCode 开发环境。

### SSR 代理使用说明

- 使用 SSR 代理时，proxy-manager 打开代理菜单
- 菜单中拥有多个节点操作
  ```bash
  proxy-manager
  ```
- 访问外网说明
  ```bash
  proxychains4 你的代码
  例如：proxychains4 git clone https://github.com/username/repository.git
  ```

### 安装各个语言环境的命令

- **Node.js**:

  ```bash
  curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
  apt-get install -y nodejs
  ```

- **Python**:

  ```bash
  apt-get update
  apt-get install -y python3 python3-pip
  ```

- **Java**:

  ```bash
  apt-get update
  apt-get install -y openjdk-11-jdk
  ```

- **Go**:
  ```bash
  wget https://golang.org/dl/go1.17.5.linux-amd64.tar.gz
  tar -C /usr/local -xzf go1.17.5.linux-amd64.tar.gz
  ```

### Git 的各种操作

- **克隆一个仓库**:
- 默认配置了 git 的代理，需要取消的话请使用 disable_proxy

  ```bash
  git clone https://github.com/username/repository.git
  ```

- **添加更改**:

  ```bash
  git add .
  ```

- **提交更改**:

  ```bash
  git commit -m "你的提交信息"
  ```

- **推送更改**:

  ```bash
  git push origin main
  ```

- **拉取最新更改**:
  ```bash
  git pull origin main
  ```

## 故障排除

1. Pod 无法启动

- 检查资源限制是否合理
- 检查应用是否存在且可访问

2. 服务无法访问

- 检查服务端口配置
- 检查 Pod 运行状态
