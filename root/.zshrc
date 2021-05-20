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

# Aliases
alias e="emacs"
alias back="cd $OLDPWD"
alias yeet="rm -rf"
alias ranger="ranger --choosedir=/tmp/ranger-root-pwd; LASTDIR='cat /tmp/ranger-root-pwd'; cd $LASTDIR"
alias erect="emerge -av"
alias depclean="emerge -cav"
alias webrsync="emerge-webrsync && layman -S"
alias eupgrade="emerge -av --update --deep --changed-use @world"
