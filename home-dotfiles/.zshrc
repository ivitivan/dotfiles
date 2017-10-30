# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '

source ~/.zsh_variables
source ~/.zsh_aliases

if [ "$BACKGROUND" = "dark" ]
then
  source ~/.config/base16-shell/theme.sh
else
  source ~/.config/base16-shell/theme-light.sh
fi

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

source /etc/profile.d/autojump.zsh

# Git prompt
source ~/.config/zsh-prompt/zsh-git-prompt/zshrc.sh
PROMPT='%B%m%~%b$(git_super_status) %# '

export PATH=$PATH:~/.config/rofi-scripts

