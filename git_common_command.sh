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
