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

source $ZSH/oh-my-zsh.sh

# Manually set language environment
export LANG=en_US.UTF-8

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Beautiful PS1
PROMPT="%(!.%{$fg[red]%}.%{$fg[green]%})%n@%m%{$reset_color%} %{$fg[blue]%}%~%{$reset_color%}%{$fg[cyan]%} → %{$reset_color%}"

export PATH="$PATH:$HOME/.local/bin"

# Aliases
alias e='emacs'
alias back='cd $OLDPWD'
alias ranger='ranger --choosedir=/tmp/ranger-$(whoami)-pwd; cd "$(cat /tmp/ranger-$(whoami)-pwd)"; rm /tmp/ranger-$(whoami)-pwd'
