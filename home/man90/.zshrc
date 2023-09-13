# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Hyphen-insensitive completion
HYPHEN_INSENSITIVE="true"

# Disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Change the command execution time
# stamp shown in the history command output
HIST_STAMPS="yyyy-mm-dd"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Manually set language environment
export LANG=en_US.UTF-8

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# SSH keys
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Beautiful PS1
PROMPT="%(!.%{$fg[red]%}.%{$fg[green]%})%n@%m%{$reset_color%} %{$fg[blue]%}%~%{$reset_color%}%{$fg[cyan]%} → %{$reset_color%}"

# Add scripts and .local/bin directories to PATH
export PATH="$PATH:$HOME/scripts:$HOME/.local/bin"

# Aliases
alias e='emacs'
alias back='cd $OLDPWD'
alias cal='cal -m'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=/'
alias ranger='ranger --choosedir=/tmp/ranger-$(whoami)-pwd; cd "$(cat /tmp/ranger-$(whoami)-pwd)"; rm /tmp/ranger-$(whoami)-pwd'

# Dotfiles config autocompletion
compdef config="git"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Ignore duplicate history entries
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
