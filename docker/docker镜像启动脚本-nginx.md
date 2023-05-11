---
title: docker镜像启动脚本-nginx
date: 2023-05-11 14:22:17
tags:
  - docker
description: docker镜像启动脚本-nginx
copyright: true
---

```shell
#!/bin/bash
docker run --name nginx -d -p 80:80 -p 443:443 --restart=always 
-e TZ="Asia/Shanghai" -v /data/docker/nginx/html:/usr/share/nginx/html 
-v /data/docker/nginx/log:/var/log/nginx 
-v /data/docker/nginx/conf/nginx.conf:/etc/nginx/nginx.conf:ro 
-v /data/docker/nginx/conf/cert:/etc/nginx/cert:ro nginx:latest
```
