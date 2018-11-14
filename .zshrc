# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/tom/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

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
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias hp="http_proxy=http://localhost:1087 https_proxy=http://localhost:1087 "

#nvm_auto_switch
bindkey -v
export KEYTIMEOUT=1
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
export PATH="/Users/tom/.nvm/versions/node/v9.11.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:$PATH"
export PATH=$PATH:~/bin
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"
export PATH="~/workspace/phabricator/arcanist/bin/:$PATH"
export PATH="/Users/tom/workspace/phabricator/arcanist/bin/:$PATH"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/workspace/scala-2.12.6/bin/:$PATH"
export THEOS="~/theos"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home
export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH=$GOPATH/bin:$PATH
export PATH=/usr/local/Cellar/php/7.2.8/bin/:$PATH
export PATH=~/.composer/vendor/bin:$PATH

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
alias igit='lazygit'
alias air='~/.air'
alias goproxy='GOPROXY=https://goproxy.io '
export PGHOME=/Users/tom/PostgreSQL/pg10
export PGDATA=/Users/tom/PostgreSQL/data/pg10
export PATH=/Users/tom/PostgreSQL/pg10/bin:$PATH
export PGUSER=postgres
export PGDATABASE=postgres
export PGPORT=5432
export PGPASSFILE=/Users/tom/.pgpass
export PYTHONPATH=/Users/tom/PostgreSQL/pg10/python/site-packages
export GDAL_DATA=/Users/tom/PostgreSQL/pg10/share/gdal
export PATH=/Users/tom/workspace/pha/arcanist/bin:$PATH
export PATH=/Users/tom/workspace/bin/protoc-3.6.1-osx-x86_64/bin:$PATH
export DOCKER_REG=reg.yunpro.cn/bjwjh
