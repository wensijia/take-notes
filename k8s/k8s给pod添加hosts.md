---
title: k8s给pod添加hosts
date: 2023-06-06 13:45:01
tags:
  - k8s
description: k8s给pod添加hosts
copyright: true
---

```yml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: smart-pod
  namespace: default
spec:
  replicas: 1
  selector:
    matchLabels:
      app: smart-pod
  template:
    metadata:
      labels:
        app: smart-pod
    spec:
      hostAliases:
      - ip: "xxx.xx.xx.xxx"
        hostnames:
        - "test.test.test"
      containers:
      - name: smart-hr
        image: www.docker.com/images/smart-pod:latest
        ports:
        - name: smart-pod-port
          containerPort: 8090
          protocol: TCP


```
