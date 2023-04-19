### 1、head命令切割大日志文件

获取文本文件的开始 n 行
head -50000 java.log > blog.log

### 2、tail 命令分割 log 文件

获取文本最后行
tail -50000 java.log > blog.log

### 3、sed 命令切割 log 文件

从第N行截取到第M行（N > 0 , M < FileLineNumber）
sed -n '1,50000p' java.log > blog.log

### 4、split 命令分割大 log 文件

每 3000 行切分生成一个新文件，–verbose显示切分进度
split -l 3000 catalina.log log. --verbose

每200M切分成一个新的文件，–verbose显示切分进度
split -b200M catalina.log log. --verbose