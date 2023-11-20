@echo off

echo Update GitHub ERGOFWU
echo ---------------------

set /p message= Please enter the update message: 

echo Message: "%message%"

:continue_github
set /P answer=Commit and Push to GitHub [Y/N]?
if /I "%answer%" EQU "Y" goto :process_github
if /I "%answer%" EQU "N" goto :now_quit
goto :continue_github

:process_github
git add -A
git commit -m "%message%"
git push
pause
exit

:now_quit
echo Aborted
pause
exit