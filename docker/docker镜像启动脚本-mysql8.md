---
title: docker镜像启动脚本-mysql8
date: 2023-05-09 09:36:54
tags:
  - docker
description: docker镜像启动脚本-mysql8
copyright: true
---

```shell
#!/bin/bash
docker run -p 3306:3306 --restart=always -e TZ="Asia/Shanghai" 
--name mysql8.0.28 -v /data/docker/mysql8/conf:/etc/mysql 
-v /data/docker/mysql8/data:/var/lib/mysql 
-v /data/docker/mysql8/mysql-files:/var/lib/mysql-files  
-v /data/docker/mysql8/logs:/var/log 
-e MYSQL_ROOT_PASSWORD=123456 
-d mysql:8.0.28 --lower-case-table-names=1
```


