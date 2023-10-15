---
title: ssh拉取代码配置注意事项
date: 2023-10-15 15:31:30
tags:
  - jenkins
description: ssh拉取代码配置注意事项
copyright: true
---

### `ssh`拉取代码配置注意事项

为方便代码拉取，配置全局凭证`SSH Username with private key`

`Username`，使用`git`代码库用户名，`Private Key`->`Enter directly`使用生成的私钥而非用户名登录密码

同时`git`库平台中，配置生成的`SSH`公钥
