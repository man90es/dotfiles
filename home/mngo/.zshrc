# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="fox"

# Automatic update checks.
export UPDATE_ZSH_DAYS=30
DISABLE_AUTO_UPDATE="false"

# Change the command execution time
# stamp shown in the history command output.
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

source $ZSH/oh-my-zsh.sh

# Manually set your language environment
export LANG=en_US.UTF-8

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Beautiful PS1
PROMPT='%(!.%{$fg[red]%}.%{$fg[green]%})%n@%m%{$reset_color%} %{$fg[blue]%}%~%{$reset_color%}%{$fg[cyan]%} → %{$reset_color%}'

# Add script directories to PATH
export PATH="$PATH:$HOME/.scripts:$HOME/scripts"
export PATH="$PATH:$HOME/.local/bin"

# Aliases
alias e='emacs'
alias back='cd $OLDPWD'
alias cal='cal -m'
alias yeet='rm -rf'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=/'
alias ranger='ranger --choosedir=/tmp/ranger-mngo-pwd; LASTDIR=`cat /tmp/ranger-mngo-pwd`; cd "$LASTDIR"'

compdef config='git'

soliloquy
