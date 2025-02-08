---
title: Spring理解
date: 2025-02-08 10:23:59
tags:
  - Spring
description: Spring理解
copyright: true
---

1. spring容器就是个hashmap
2. 前置处理器就是准备好实例化类的条件
3. 后置处理器就是把类按第2步的条件实例化以后放进hashmap，name或者你指定的名字是key，实例就是value。这个value也就是实例，就是你问的bean，跟你手动new出来的没有本质区别
4. 依赖注入就是把hashmap里的类实例用name拿出来用
5. aop就是允许在hashmap里面的实例使用的时候，在方法开始，进行，结束的时间点上搞一个回调函数
6. 自定义starter就是在springBootApplication实例化的时候把指定目录下配置的类也放到前置处理器等待实例化
7. 所谓观察者模式也只不过是在第6步的实例里面给一个监听器，监听指定事件的发生罢了，你完全可以自己实现listener搞一个监听器
8. 所谓的什么几级缓存，也不过就是解决实例化的时候，AB类互相依赖的问题，你其实只需要知道先做一个A的引用给B，再实例化B，再实例化A就完了