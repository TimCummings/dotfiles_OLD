# XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# Path to your oh-my-zsh installation.
if [[ $OSTYPE == darwin* ]]; then
  # MacOS
  export ZSH="/Users/tjc/.oh-my-zsh"
elif [[ $OSTYPE == linux* ]]; then
  # Linux
  export ZSH="/home/tjc/.oh-my-zsh"
fi

# in pop_os, oh-my-zsh theme sets colors that are slightly off
if [[ $OSTYPE == linux* ]]; then
  export LSCOLORS=""
  export LS_COLORS=""
fi

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor
export EDITOR='nvim'

# default fzf options
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# nnn file manager
export NNN_TRASH=2

# add global Yarn to path
export PATH="$PATH:$(yarn global bin)"

# set GOPATH, disable module-aware mode, and add Go to PATH
export GOPATH="$HOME/code_projects/go"
export GO111MODULE=off
export PATH="$PATH:/usr/local/go/bin"
