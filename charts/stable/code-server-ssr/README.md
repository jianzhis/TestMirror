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

这是一个基于 code-server 的在线 IDE 环境，集成了 SSR 代理支持。通过配置`PASSWORD`可以设置访问密码。部署后可以通过浏览器访问完整的 VSCode 开发环境。

为确保您能够顺利使用这个在线 IDE 环境，以下是关于如何在 Ubuntu 上安装主流语言环境和配置 Git 的详细说明：

### 科学上网说明

1. 使用 proxy-manager 打开代理脚本

```bash
proxy-manager
```

2. 每次需要使用代理服务器网络请一定要添加-proxychains4

```bash
proxychains4 命令
proxychains4 git clone 仓库
proxychains4 curl 网址
```

2. 做了一个通宵才搞定，大家一定要点个收藏，谢谢！

### 安装主流语言环境

1. **JavaScript/Node.js**

   - 更新包列表并安装 Node.js：
     ```bash
     sudo apt update
     sudo apt install -y nodejs npm
     ```

2. **Python**

   - 执行下列命令安装 Python 以及 pip（Python 包管理工具）：
     ```bash
     sudo apt update
     sudo apt install -y python3 python3-pip
     ```

3. **Java**

   - 安装 OpenJDK（Java 开发工具包）：
     ```bash
     sudo apt update
     sudo apt install -y openjdk-11-jdk
     ```

4. **Go**

   - 安装 Go 语言：
     ```bash
     sudo apt update
     sudo apt install -y golang-go
     ```

5. **Ruby**
   - 安装 Ruby 及其包管理器 Bundler：
     ```bash
     sudo apt update
     sudo apt install -y ruby-full
     sudo gem install bundler
     ```

### 配置 Git 用户名和邮箱

在安装完 Git 后，使用以下命令配置 Git 的用户名和邮箱，以便在版本控制系统中正确标识身份：

1. 设置 Git 用户名：
   ```bash
   git config --global user.name "您的姓名"
   ```
2. 设置 Git 邮箱：
   ```bash
   git config --global user.email "您的邮箱"
   ```

## 故障排除

1. Pod 无法启动

- 检查资源限制是否合理
- 检查应用是否存在且可访问

2. 服务无法访问

- 检查服务端口配置
- 检查 Pod 运行状态
