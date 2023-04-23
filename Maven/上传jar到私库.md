### 上传jar到私库

注意替换各参数内容

```
mvn deploy:deploy-file -DgroupId=com.test -DartifactId=ZMPrinter -Dversion=4.47 -Dpackaging=jar -Dfile=D:\ZMPrinter-4.47.jar -Durl=http://ip:port/content/repositories/releases/ -DrepositoryId=test
```