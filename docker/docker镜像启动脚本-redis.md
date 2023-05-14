---
title: docker镜像启动脚本-redis
date: 2023-05-14 13:11:59
tags:
  - docker
description: docker镜像启动脚本-redis
copyright: true
---

```shell
#!/bin/bash
docker run -p 3389:3389 --restart=always -e TZ="Asia/Shanghai" 
-v /data/docker/redis/data:/data 
-v /data/docker/redis/conf/redis.conf:/etc/redis/redis.conf 
--privileged=true --name redis 
-d redis:latest redis-server /etc/redis/redis.conf
```


