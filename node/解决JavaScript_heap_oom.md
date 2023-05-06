---
title: 解决JavaScript heap out of memory
date: 2023.5.5 14:38:39
tags:
  - node
description: 解决JavaScript heap out of memory
copyright: true
---

### 解决JavaScript heap out of memory

报错：FATAL ERROR: CALL_AND_RETRY_LAST Allocation failed - JavaScript heap out of memory

设置全局变量解决

```
#windows 
set NODE_OPTIONS=--max_old_space_size=4096 
# mac/linux 
export NODE_OPTIONS=--max_old_space_size=4096
```
