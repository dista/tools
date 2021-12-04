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
yum install git vim dstat tmux ctags nano
```

zsh & oh-my-zsh
-------------
* https://github.com/ohmyzsh/ohmyzsh

vim config
------------
* https://github.com/junegunn/vim-plug
