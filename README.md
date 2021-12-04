tools
=====

tools_for_me

Security
-----------
```
sed -i 's/^SELINUX=enforcing.*$/SELINUX=disabled/' /etc/sysconfig/selinux
systemctl stop firewalld
systemctl disable firewalld
```

BASIC
-------------
```
yum install git
yum install vim
yum install dstat
yum install tmux
yum install ctags
yum install nano
```

zsh & oh-my-zsh
-------------
```
yum install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

vim config
------------
* https://github.com/junegunn/vim-plug
