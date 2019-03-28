@echo off
git rev-parse HEAD > curr_head.log
if not exist last_updated_head.log goto update
fc curr_head.log last_updated_head.log > nul
if %ERRORLEVEL% == 0 goto after

:update
%Do_something_when_git_head_changed%
copy /y curr_head.log last_updated_head.log

:after
del curr_head.log
%Do_something_after_checking%
