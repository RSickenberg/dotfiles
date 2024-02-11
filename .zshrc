# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH=/Users/romainsickenberg/.oh-my-zsh
source $HOME/.oh-my-zsh/templates/zshrc.zsh-template
# Space ship
export SPACESHIP_PROMPT_DEFAULT_PREFIX='• '
export SPACESHIP_BATTERY_SHOW=true
export SPACESHIP_PROMPT_ASYNC=true
export SPACESHIP_EXIT_CODE_SHOW=false
# Fastlane
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
source ~/.zplug/init.zsh

zplug "zsh-users/zsh-history-substring-search", defer:2, from:oh-my-zsh
zplug "tcnksm/docker-alias", use:zshrc
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugin/colorize", defer:2, from:oh-my-zsh
zplug "plugin/command-not-found", from:oh-my-zsh
zplug "plugin/colorized-man-pages", from:oh-my-zsh
zplug "plugin/docker-compose", from:oh-my-zsh
zplug "plugin/pyton", from:oh-my-zsh
zplug "plugin/git-auto-fetch", from:oh-my-zsh
zplug "plugin/git-flow", from:oh-my-zsh
zplug "plugin/brew", from:oh-my-zsh
zplug "plugin/github", from:oh-my-zsh
zplug "plugin/1password", from:oh-my-zsh
zplug "plugin/dotenv", from:oh-my-zsh
zplug "plugin/lol", from:oh-my-zsh
zplug "plugin/npm", from:oh-my-zsh
zplug "plugin/nvm", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug "zsh-users/zsh-completions", defer:2
zplug "alexrochas/zsh-git-semantic-commits", defer:2
# zplug "zpm-zsh/ls"

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "spaceship-prompt/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

if ! zplug check; then
    zplug install
fi

zplug load
zstyle ':completion:*' menu select
zstyle ':omz:plugins:nvm' lazy yes
compinit

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker docker-compose python git-auto-fetch git-flow brew github 1password dotenv lol npm nvm)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source $HOME/.aliases
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# added by pipsi (https://github.com/mitsuhiko/pipsi)
# export PATH="/Users/romainsickenberg/.local/bin:$PATH"
# export PATH="/Users/romainsickenberg/.pyenv/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
#export PATH="$PATH:$HOME/Library/Python/3.8/bin:$HOME/.composer/vendor/bin/:node_modules/bin"
export PATH=/opt/homebrew/bin:$PATH
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
#export PATH="/Users/romainsickenberg/.cargo/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

fpath=(~/.zsh.d/ $fpath)

alias python="$(brew --prefix)/bin/python3"
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
source /Users/romainsickenberg/.config/op/plugins.sh
export GPG_TTY=$(tty)
