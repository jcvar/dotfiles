# options
setopt AUTO_CD 
setopt prompt_subst
export CLICOLOR=1

# prompt
RPS1='%T' # Right side clock
PS1='%F{magenta}$TAB%f %1~ %(?.%F{green}.%F{red})%#%f '

# basics
alias vi='nvim'
alias rm='rm -v'
alias py='python'
alias py3='python3'
alias gcc='gcc-10'
alias l='ls -A1'
alias ll='ls -lAF'

# brew
alias brewtree='brew deps --tree $(brew leaves)'
# macos
alias rmds_store="find . -name '.DS_Store' -type f -print -delete"
# git
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gl='git pull'
alias gp='git push'
alias gst='git status'
alias gsb='git status -sb'
alias glog='git log --oneline --decorate --graph'

# rust cargo
export PATH="$HOME/.cargo/bin:$PATH"
# ruby gem
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"

# tab multiplexer configuration: https://github.com/austinjones/tab-rs/
source "/Users/jc/Library/Application Support/tab/completion/zsh-history.zsh"
# end tab configuration

