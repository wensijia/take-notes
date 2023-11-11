---
title: Docker Desktop启动报错解决
date: 2023-11-11 09:21:08
tags:
  - docker
description: Docker Desktop启动报错解决
copyright: true
---

报错内容为`An unexpected error was encountered while executing a WSL command`

解决方案：

​		管理员命令行工具执行，`netsh winsock reset`

​		重新打开docker，如果不成功，再重启电脑就好
