# The following lines were added by Docker Desktop to add commands to your PATH.
export PATH="$PATH:/Users/romainsickenberg/.docker/bin"
# End of Docker Desktop section.

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
