export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:$HOME"/platform-tools"

ZSH_THEME="candy_custom"

source $ZSH"/catppuccin_mocha-zsh-syntax-highlighting.zsh"

plugins=(git sudo npm python zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias lpm="powerprofilesctl set power-saver && batmanager -p 3"
alias perf="powerprofilesctl set performance && batmanager -p 2"
alias balanced="powerprofilesctl set balanced && batmanager -p 1"
alias battfull="batmanager -c0 -r1"
alias plugged="batmanager -c1 -r0"

alias ghub="cd ~/Documents/gh"
alias downloads="cd ~/Downloads"
