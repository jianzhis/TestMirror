# mysql-adminer

## 介绍
MySQL数据库及其Web管理界面(Adminer)二合一部署方案 - 带可视化web界面
默认部署后：
数据库端口：3306
Web管理界面：访问 8080 端口
数据库连接：localhost:3306
登录账号：root/admin123 或 admin/password123

## 主要功能
- Kubernetes 应用部署
- 资源限制和请求配置
- 环境变量配置
- 服务暴露配置

## 配置参数说明
| 参数名称 | 描述 | 类型 | 默认值 |
|---------|-----|------|--------|
| `replicaCount` | 副本数量 | integer | 1 |
| `image.repository` | 应用名称 | string | adminer |
| `image.tag` | 应用标签 | string | latest |
| `image.pullPolicy` | 应用拉取策略 | string | IfNotPresent |
| `resources.limits.cpu` | CPU 限制 | string | 1000m |
| `resources.limits.memory` | 内存限制 | string | 1024Mi |
| `env.ADMINER_DEFAULT_SERVER.value` | 默认连接的数据库服务器 | string | ""localhost"" |
| `env.MYSQL_ROOT_PASSWORD.value` | MySQL root用户密码 | string | ""admin123"" |
| `env.MYSQL_DATABASE.value` | 默认创建的数据库名 | string | ""mydb"" |
| `env.MYSQL_USER.value` | 创建的普通用户名 | string | ""admin"" |
| `env.MYSQL_PASSWORD.value` | 普通用户密码 | string | ""password123"" |

## 部署步骤
1. 输入配置参数

2. 选择拥有足够配置应用空间

3. 立即部署

## 使用说明
MySQL数据库及其Web管理界面(Adminer)二合一部署方案 - 带可视化web界面
默认部署后：
数据库端口：3306
Web管理界面：访问 8080 端口
数据库连接：localhost:3306
登录账号：root/admin123 或 admin/password123

## 故障排除
1. Pod 无法启动
  - 检查资源限制是否合理
  - 检查应用是否存在且可访问
  
2. 服务无法访问
  - 检查服务端口配置
  - 检查 Pod 运行状态