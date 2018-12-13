#在git bash窗口可以使用Linux bash语言,感觉就像在Linux系统下操作一样
git config --global user.name "yangliu"
git config --global user.email "32932866LynnGoodnight@users.noreply.github.com"
cd D:\
mkdir learn_git
cd learn_git
pwd
git init
git add git_common_command.sh
git commit -m "write a git_common_command.sh file"
# [master (root-commit) 8864da1] write a git_common_command.sh file
#  Committer: yangliu <yangliu@icx.com>
# Your name and email address were configured automatically based
# on your username and hostname. Please check that they are accurate.
# You can suppress this message by setting them explicitly:
#
#     git config --global user.name "Your Name"
#     git config --global user.email you@example.com
#
# After doing this, you may fix the identity used for this commit with:
#
#     git commit --amend --reset-author
#
#  1 file changed, 9 insertions(+)
#  create mode 100644 git_common_command.sh
git add file1.txt
git add file2.txt file3.txt
git commit -m "add 3 files."
git status
git diff git_common_command.sh
git add git_common_command.sh
git status
# On branch master
# Changes to be committed:
#   (use "git reset HEAD <file>..." to unstage)
#
#         modified:   git_common_command.sh
#
# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#         modified:   git_common_command.sh
# Changes not staged for commit:就是说这个change还没有存入暂存区，暂存区在git中称为stage
git diff git_common_command.sh
# warning: LF will be replaced by CRLF in git_common_command.sh.
# The file will have its original line endings in your working directory.
# diff --git a/git_common_command.sh b/git_common_command.sh
# index 24abd65..b58f75f 100644
# --- a/git_common_command.sh
# +++ b/git_common_command.sh
# @@ -28,3 +28,4 @@ git add file2.txt file3.txt
#  git commit -m "add 3 files."
#  git status
#  git diff git_common_command.sh
# +git add git_common_command.sh
git commit -m "add some command"
git add git_common_command.sh
git commit -m "add some command2"
git log
# commit 115038cc24d4c7a7f47933d57f4ec02eaef2be49 (HEAD -> master)
# Author: yangliu <32932866LynnGoodnight@users.noreply.github.com>
# Date:   Thu Dec 13 14:24:03 2018 +0800
#
#     add some command2
#
# commit b512a7d53b272001d372ccc9f9ca0fd82b146ae3
# Author: yangliu <32932866LynnGoodnight@users.noreply.github.com>
# Date:   Thu Dec 13 14:21:44 2018 +0800
#
#     add some command
#
# commit b94bb2a2d7a9753f5edb19914937dfca9ce35b2a
# Author: yangliu <32932866LynnGoodnight@users.noreply.github.com>
# Date:   Thu Dec 13 14:06:08 2018 +0800
#
#     write a git_common_command.sh file
git log --pretty=oneline
# 115038cc24d4c7a7f47933d57f4ec02eaef2be49 (HEAD -> master) add some command2
# b512a7d53b272001d372ccc9f9ca0fd82b146ae3 add some command
# b94bb2a2d7a9753f5edb19914937dfca9ce35b2a write a git_common_command.sh file


git reset --hard HEAD^
# 用了上面这行命令之后我得atom里面的脚本内容竟然直接就变回原来commit提交的版本了，可怕，还好可以用control z 退回来
git log
# commit b512a7d53b272001d372ccc9f9ca0fd82b146ae3 (HEAD -> master)
# Author: yangliu <32932866LynnGoodnight@users.noreply.github.com>
# Date:   Thu Dec 13 14:21:44 2018 +0800
#
#     add some command
#
# commit b94bb2a2d7a9753f5edb19914937dfca9ce35b2a
# Author: yangliu <32932866LynnGoodnight@users.noreply.github.com>
# Date:   Thu Dec 13 14:06:08 2018 +0800
#
#     write a git_common_command.sh file

git reset --hard 115038cc24d4c7a7f47933d57f4ec02eaef2be49
# HEAD is now at 115038c add some command2
git reflog
git add git_common_command.sh
git commit -m "add some command git log, git reflog, git reset --hard"

vi LICENSE
git status
# On branch master
# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#         modified:   git_common_command.sh
#
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#         LICENSE
#
# no changes added to commit (use "git add" and/or "git commit -a")
git add LICENSE git_common_command.sh
git commit -m "understand what is stage"
git diff HEAD -- git_common_command.sh
git diff git_common_command.sh
# git diff 只有文件参数时是给出暂存区和工作区的diff,若此时暂存区is clean，则比较HEAD 和工作区目前的文件
git add git_common_command.sh
git  checkout -- git_common_command.sh
# (use "git checkout -- <file>..." to discard changes in working directory)
git reset HEAD git_common_command.sh
# 把暂存区的修改清除。当我们用HEAD时，表示版本库中的最新的版本。此操作不会对工作区造成更改
git commit -m "add git reset HEAD ; git  checkout -- ；git diff HEAD -- "
git add git_common_command.sh
