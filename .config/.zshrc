#################### zsh #####################
export ZSH="$HOME/.oh-my-zsh"
# zsh theme
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh
# zsh 插件
# alias gs='git status'
# alias ga='git add'
# alias gaa='git add --all'
# alias gcam='git commit -a -m'
# alias gl='git pull'
# alias gp='git push'
# alias glog='git log --oneline --graph --decorate'
# alias gco='git checkout'
# alias gb='git branch'
# alias gm='git merge'
# alias gba='git branch -a'
# alias gbd='git branch -d'
# alias gcob='git checkout -b'
plugins=(
  git 
  z
  web-search
  zsh-autosuggestions
  zsh-syntax-highlighting
)
# zsh 自动纠错命令
# setopt CORRECT_ALL
# zsh 默认编辑器为nvim
export EDITOR=nvim

#################### alias ####################
alias cl='clear'
alias ll='ls -lah'
alias v=nvim
alias wsg='web_search google'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias v-zsh="$EDITOR ~/.zshrc"
alias s-zsh="source ~/.zshrc"
# brew install trash & link trash 将rm的内容放入trash，而不是彻底删除
alias rm='trash'
alias empty-trash='trash-empty'
# mkdir & cd
mkcd() {
  mkdir -p "$1" && cd "$1"
}

#################### nvm #####################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

################### proxy ####################
proxy_on() {
  export http_proxy="http://127.0.0.1:7897"
  export https_proxy="http://127.0.0.1:7897"
  export HTTP_PROXY="http://127.0.0.1:7897"
  export HTTPS_PROXY="http://127.0.0.1:7897"
}
proxy_off() {
  unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY
}
proxy_on


################### yazi ####################
# 退出yazi终端自动切换到对应目录
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

#################### env ####################
export PATH="/opt/homebrew/opt/ruby@3.3/bin:$PATH"
export PATH=$HOME/.gem/bin:$PATH
export PATH="/opt/homebrew/bin:$PATH"
# opencode
export PATH=/Users/wanghuiru/.opencode/bin:$PATH
# trash link
export PATH="/opt/homebrew/opt/trash/bin:$PATH"

#################### keys ###################
