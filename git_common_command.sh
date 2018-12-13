#在git bash窗口可以使用Linux命令,感觉就像在Linux系统下操作一样
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
