#Sync With Git
simple *.bat* file, check the git head version of the project, and do something if there are changes.
[简体中文](readme.zh-cn.md)

#### Usage
* copy `sync_with_git.bat` to anywhere in the git repository and edit the copied file.
* Modify `%Do_something_when_git_head_changed%` to the commands you want to execute each time the git head is updated
  * For example: compiling code, updating resource files, etc.
  * These commands will only execute **ONCE** when git head changes, until the next changing, running the *.bat* will not execute these commands
* Modify `%Do_something_after_checking%` to the commands you want to execute after checking the git head
  * These commands will be executed at the end whether the git head has changed or not.
* Add `last_updated_head.log` or `*.log` to the `.gitignore` of the git repository

#### Solution to garbled characters
* Copy all texts of the *.bat* file, paste it into a blank notepad, and save it as a *.bat* with the default encoding.