---
title: 使用 json-bigint 解决超过16位数字解析精度丢失问题
date: 2023-06-28 21:19:49
tags:
  - vue
description: 使用 json-bigint 解决超过16位数字解析精度丢失问题
copyright: true
---

### 安装npm依赖包

```shell
npm i json-bigint
```

### 配合axios使用

```js
import JsonBig from 'json-bigint'

const axiosInstance: AxiosInstance = axios.create({
  baseURL: BASE_URL,
  timeout: TIME_OUT,
  transformResponse: [ data => {
    const json = JsonBig({
      storeAsString: true
    })
    return json.parse(data)
  }],
})
```
