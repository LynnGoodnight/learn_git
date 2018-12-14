#在git bash窗口可以使用Linux bash语言,感觉就像在Linux系统下操作一样
git config --global user.name "yangliu"
git config --global user.email "32932866LynnGoodnight@users.noreply.github.com"
cd D:\
mkdir learn_git
cd D:\learn_git
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
# 用了上面这行命令之后我工作区和atom里面的脚本内容竟然直接就变回之前commit提交的版本了，可怕，还好可以用control z 退回来
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
git add git_common_command.sh
git commit -m "add git reset HEAD ; git  checkout -- ；git diff HEAD -- "
rm LICENSE
git status
git rm LICENSE
git add git_common_command.sh
git commit -m "remove LICENSE"
git remote add origin git@github.com:LynnGoodnight/learn_git
git remote add origin git@github.com:LynnGoodnight/learn_git
git push -u origin master
# The authenticity of host 'github.com (13.229.188.59)' can't be established.
# RSA key fingerprint is SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8.
# Are you sure you want to continue connecting (yes/no)? yes
# Warning: Permanently added 'github.com,13.229.188.59' (RSA) to the list of known hosts.
# git@github.com: Permission denied (publickey).
# fatal: Could not read from remote repository.
#
# Please make sure you have the correct access rights
# and the repository exists.
ssh-keygen -t rsa -C "32932866LynnGoodnight@users.noreply.github.com"
# 之前GitHub上的SSH Key是本地没有入域的联想账户的，现在切换到入域的yangliu账户要重新生成SSH Key，然后添加到GitHub上面
git push -u origin master
# 由于远程库是空的，我们第一次推送master分支时，加上了-u参数，Git不但会把本地的master分支
# 内容推送到远程新的master分支，还会把本地的master分支和远程的master分支关联起来，
# 在以后的推送或者拉取时就可以简化命令。
# Warning: Permanently added the RSA host key for IP address '52.74.223.119' to the list of known hosts.
# To github.com:LynnGoodnight/learn_git
#  ! [rejected]        master -> master (fetch first)
# error: failed to push some refs to 'git@github.com:LynnGoodnight/learn_git'
# hint: Updates were rejected because the remote contains work that you do
# hint: not have locally. This is usually caused by another repository pushing
# hint: to the same ref. You may want to first integrate the remote changes
# hint: (e.g., 'git pull ...') before pushing again.
# hint: See the 'Note about fast-forwards' in 'git push --help' for details.
# 我看GitHub上的版本库没有变化

git push origin master
git clone git@github.com:LynnGoodnight/learn_git
# 会在D:\learn_git目录下新生成一个文件夹learn_git，这个新生成的learn_git文件夹里面有一个.git文件夹
git checkout -b 16S
git branch 16S
git checkout 16S
git branch
git add git_common_command.sh
git commit -m "branch test"
git checkout master
# 我发现切换到master分支之后工作区的文件直接就更改成master上次commit之后的内容了
git merge 16S
# 工作区的文件直接变成在16S分支git commit -m "branch test"之后的内容
git branch -d 16S
git branch

# 解决分支冲突示例
git checkout -b feature1
git add readme.txt
git commit -m "AND simple"
git checkout master
git add readme.txt
git commit -m "& simple"
git merge feature1
# Auto-merging readme.txt
# CONFLICT (content): Merge conflict in readme.txt
# Automatic merge failed; fix conflicts and then commit the result.
git status
# On branch master
# Your branch is ahead of 'origin/master' by 2 commits.
#   (use "git push" to publish your local commits)
#
# You have unmerged paths.
#   (fix conflicts and run "git commit")
#   (use "git merge --abort" to abort the merge)
#
# Unmerged paths:
#   (use "git add <file>..." to mark resolution)
#
#     both modified:   readme.txt
#
# no changes added to commit (use "git add" and/or "git commit -a")
# 此时需要在master分支上把readme.txt内容改为和git commit -m "AND simple"提交的内容一致，再用add+commit提交一次，才能够merge成功
git add readme.txt
git commit -m "conflict fixed"
git log --graph --pretty=oneline --abbrev-commit
# *   cf810e4 (HEAD -> master) conflict fixed
# |\
# | * 14096d0 (feature1) AND simple
# * | 5dc6824 & simple
# |/
# * b17d20e branch test
# * d46f35e (origin/master) remove test.txt
# * b84166e add test.txt
# * 519219b git tracks changes
# * e43a48b understand how stage works
# * 1094adb append GPL
# * e475afc add distributed
# * eaadf4e wrote a readme file
git branch -d feature1

# 分支管理策略
git checkout -b dev
git add git_common_command.sh
git commit -m "git merge --no-ff"
git checkout master
git merge --no-ff -m "merge with no-ff" dev
git branch -d dev

# BUG分支管理
git stash
# Saved working directory and index state WIP on master: 3bb820e merge with no-ff
git checkout master
git checkout -b issue-101
git add git_common_command.sh
git commit -m "fix bug 101"
git checkout master
git merge --no-ff -m "merged bug fix 101" issue-101
git checkout dev
git status
git stash list
git stash pop
git stash apply
git stash drop
git stash list
git stash apply stash@{0}
git commit -m "git stash ;git stash apply; git stash pop"

git branch -D feature-vulcan
# 丢弃一个没有被合并过的分支，可以通过git branch -D <name>强行删除。
git remote
git remote -v
git push origin master
git push origin dev
git branch --set-upstream-to=origin/dev dev
git pull
git commit -m "fix env conflict"
git push origin dev


cd D:\etl
ssh-keygen -t rsa -C "yangliu@icarbonx.com"

git clone git@gitlab.icarbonx.cn:ai-doc/ai-etl.git
cd ai-etl
git status
git add doc/16S/
git commit -m "add 16S"
git push origin master
git branch --set-upstream-to=origin/master master
git config user.email "yangliu@icarbonx.com"
git reset --hard 399b92d3c2e5310221553d186bb4e5658591689a
git remote -v
git add doc/16S/
git commit -m "add 16S"

cd D:\learn_git
