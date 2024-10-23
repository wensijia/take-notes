---
title: docker控制容器日志文件大小
date: 2024-10-23 13:56:35
tags:
  - docker
description: docker控制容器日志文件大小
copyright: true
---

创建或修改文件 /etc/docker/daemon.json，并增加以下配置

```json
{
    "log-driver":"json-file",
    "log-opts":{
        "max-size" :"50m","max-file":"3"
    }
}
```

max-size=50m，意味着一个容器日志大小上限是50M， max-file=3，意味着一个容器有三个日志，分别是id+.json、id+1.json、id+2.json。可以存在的最大日志文件数。如果超过最大值，则会删除最旧的文件。仅在max-size设置时有效。默认为5。

随后重启 Docker 服务

```shell
sudo systemctl daemon-reload
sudo systemctl restart docker
```
