---
title: Navicat
date: 2024-05-17 10:01:00
tags:
  - windows
description: Navicat
copyright: true
---

### 连接`oracle`闪退问题解决方案

1. 查询`oracle`对应版本号，`select * from v$version`
2. 下载对应版本的`instantclient-basic-windows.x64`与`instantclient-sqlplus-windows.x64`
3. `Navicat`中工具-选项-环境->`oci.dll`与`SQL*PLUS`指定解压后的文件
4. 重启`Navicat`
