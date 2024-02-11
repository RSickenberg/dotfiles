alias l='ls -lah'
alias git a='git add .'
alias ci='git commit'
alias co='git checkout'
alias f='git fetch'
alias rb='git rebase origin/master'
alias d='git diff'
alias python='/opt/homebrew/bin/python3'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    $(brew --prefix)/etc/bash_completion
fi