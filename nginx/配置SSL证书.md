---
title: 配置SSL证书
date: 2023-05-07 16:25:23
tags:
  - nginx
description: 配置SSL证书
copyright: true
---

### 配置SSL证书

1. 首先注意，nginx镜像开放443端口

2. 证书路径映射到镜像中

3. 配置80端口重定向443端口：
   
       server {
        listen 80;
        server_name localhost;
        #用地址重写规则
        rewrite ^(.*)$ https://${server_name}$1 permanent;
       }

4. server中加入相关配置
   
        #监听的端口，nginx 1.15.0及以上版本，使用listen 443 ssl代替，1.15.0以下的使用listen 443
        listen 443 ssl;
        server_name localhost;
        charset utf-8;
        
        # ssl证书地址
        #指定pem文件所在路径，如果写相对路径，必须把该文件和nginx.conf文件放到一个目录下
        ssl_certificate     ssl.pem;
        #指定私钥文件key所在路径，如果写相对路径，必须把该文件和nginx.conf文件放到一个目录下
        ssl_certificate_key  ssl.key;
       
        # ssl验证相关配置
        ssl_session_timeout  5m;    #缓存有效期
        ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:ECDHE:ECDH:AES:HIGH:!NULL:!aNULL:!MD5:!ADH:!RC4;    #加密算法
        ssl_protocols TLSv1 TLSv1.1 TLSv1.2;    #安全链接可选的加密协议
        ssl_prefer_server_ciphers on;   #使用服务器端的首选算法


