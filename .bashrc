#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Auto use Colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias n='nvim'
alias vim='nvim'
alias vault='nvim ~/Documents/Obisidian\ Notes/C++/'
# alias vim='nvim'

# run sudo -E nvim
sudo() {
  if [[ $1 == "nvim" ]]; then
    command sudo -E nvim "${@:2}"
  else
    command sudo "$@"
  fi
}

#Set default programm
export FILE=ranger
export FILE_MANAGER=ranger

# Set the prompt
# export PS1="${green}\u${reset}@${blue}\h${reset}:${cyan}\w${reset}$ "
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Man with Vim
man() {
  env LESS= man "$@" | col -b | nvim -R -c 'set ft=man nomod nolist nonu' -
}
