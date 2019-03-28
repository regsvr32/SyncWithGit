#Sync With Git
简易.bat文件，检测项目的git版本，若有变更则执行一些自定义事务

#### 使用方法
* 将`sync_with_git.bat`文件复制到项目git目录内的任意位置，编辑复制的.bat文件
* 将`%Do_something_when_git_head_changed%`修改为每次git版本更新时你想执行的指令
  * 例如：编译代码，更新资源文件等
  * 这些指令只会在git版本变化时执行**一次**，直到下次git版本变化前，运行这个.bat文件都不会再执行这些指令
* 将`%Do_something_after_checking%`修改为检查git版本后你想执行的指令
  * 无论git版本是否有变化，这些指令都会在最后被执行
* 将`last_updated_head.log`或`*.log`添加到项目git的`.gitignore`中

#### 运行时出现乱码的解决方法
* 复制.bat文件的所有代码，粘贴到空白记事本中，以默认编码保存为.bat后缀的文件