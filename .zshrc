export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:$HOME"/android-sdk-linux/platform-tools"

ZSH_THEME="candy_custom"

source $ZSH"/catppuccin_mocha-zsh-syntax-highlighting.zsh"

plugins=(git ubuntu sudo adb npm python zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias pull="git pull"
alias push="git push"
alias clone="git clone"
alias commit="git commit"

alias sillyvps="ssh hmuy@192.9.160.132"
alias ghub="cd ~/Documents/gh"
alias downloads="cd ~/Downloads"
