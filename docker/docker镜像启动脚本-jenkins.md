---
title: docker镜像启动脚本-jenkins
date: 2023-05-16 11:24:33
tags:
  - docker
description: docker镜像启动脚本-jenkins
copyright: true
---

```shell
#!/bin/bash
docker run -u root --restart=always -e TZ="Asia/Shanghai"  -d 
--name jenkins -p 9090:8080 
-v /data/docker/jenkins/jenkins_home:/var/jenkins_home jenkins/jenkins:lts
```


