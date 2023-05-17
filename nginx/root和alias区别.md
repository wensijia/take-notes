---
title: root和alias区别
date: 2023-05-04 15:53:07
tags:
  - nginx
description: root和alias区别
copyright: true
---
### root和alias的区别

root和alias都可以定义在location模块中，都是用来指定请求资源的真实路径

#### root配置时，真实的路径是root指定的值加上location指定的值

```
location /i/ { 
    root /data/w3;
}
```

最终指向，`/data/w3/i/`

#### alias 正如其名，alias指定的路径是location的别名，不管location的值怎么写，资源的真实路径都是 alias 指定的路径

```
location /i/ {  
  alias /data/w3/;
}
```

最终指向，`/data/w3/文件名`

#### 其他区别

1. alias 只能作用在location中，而root可以存在server、http和location中。

2. alias 后面必须要用 “/” 结束，否则会找不到文件，而 root 则对 ”/” 可有可无。


