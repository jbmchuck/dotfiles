setopt NOTIFY			# Background jobs will notify when done
setopt NO_HUP			# Background jobs are detached from terminal
setopt FUNCTION_ARG_ZERO	# $0 returns the function
setopt NO_RM_STAR_SILENT	# 'rm *' calls always must be confirmed
setopt NO_BEEP			# duh
setopt AUTO_CD			# if command is a dir, cd to it
setopt MULTIOS			# cool stuff like multiple redirection
setopt MENU_COMPLETE		# vim-style completion
setopt EXTENDED_GLOB		# regex type stuff in globbing
setopt NO_CLOBBER		# no file clobbering unless >! used
setopt ALWAYS_LAST_PROMPT

bindkey -v			# vi keybindings
umask 027			# paranoid - what's mine is mine

# aliases
eval `dircolors`
alias lsf="ls -l | grep -v '^d'"
alias lsdir="ls -l | grep '^d'"
alias ls='ls --color'
alias mv='nocorrect mv'
alias cp='nocorrect cp'
alias mkdir='nocorrect mkdir'
alias d='dirs -v'
alias h=history
alias ll='ls -l'
alias lm='ls -al | more'
alias du1='du -h --max-depth=1 --exclude=.\*'

alias :e vim

# Directory stack stuff
DIRSTACKSIZE=15
setopt PUSHD_SILENT

# Prompt stuff
PROMPT='[%n@%m %20<..<%~]%# '

### Completion styles
autoload -U compinit
compinit

# list of completers to use
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate _match _correct _prefix _list _oldlist


# History stuff
HISTSIZE=500000
HISTFILE=~/.zsh_history
SAVEHIST=10000
setopt extendedhistory
bindkey -v
bindkey '^R' history-incremental-search-backward


alias json='python -m json.tool'
alias epoch='date -r '
