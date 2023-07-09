---
title: 清理Build Cache
date: 2023-07-09 13:12:08
tags:
  - docker
description: 清理Build Cache
copyright: true
---

### 一键清理 Build Cache 缓存命令：

```shell
docker builder prune
```

### 删除时长更久的缓存，可以通过添加 `--filter` 参数实现

实例：保留最近10天的缓存

```shell
docker builder prune --filter 'until=240h'
```


