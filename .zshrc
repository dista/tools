# add my bin root to path
export PATH=/root/my_app/bin:$PATH

# share history between session
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY

# two way of share history: INC_APPEND_HISTORY: share it after user input command, APPEND_HISTORY: share it after user close session
#setopt INC_APPEND_HISTORY
setopt APPEND_HISTORY
