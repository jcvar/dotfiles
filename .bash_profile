alias ..='cd ..'
alias vi='nvim'
alias rm='rm -v'
alias gcc='gcc-10'

# brew
alias brewtree='brew deps --tree $(brew leaves)'
# macos
alias rmds_store="find . -name '.DS_Store' -type f -print -delete"
# git
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gl='git pull'
alias gp='git push'
alias gst='git status'
alias gss='git status -s'
alias gsb='git status -sb'



export PATH="$HOME/.cargo/bin:$PATH"
