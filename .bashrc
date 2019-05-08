# Path to your oh-my-zsh configuration.
#ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="nick"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

shopt -s autocd #Allows you to cd into a directory merly by typing the name of the directory
HISTSIZE= HISTFILESIZE= # Infinite History.
HISTTIMEFORMAT="%F %T: "

######################### key bindings ###############################
#bindkey "^R" history-incremental-search-backward
#bindkey "^E" end-of-line
#bindkey "^A" beginning-of-line
#source $ZSH/oh-my-zsh.sh

######################### aliases ####################################
#Don't alias grep until after sourcing the files above, could get bad version
#of grep that doesn't understand --color
#alias grep='nocorrect grep --color=auto'
alias sz='source ~/.bashrc'
# alias ls='ls --color=auto'
# alias ll='ls -lh'
alias zc='vim ~/.bashrc'

# Git Aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gp='git pull'

alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ytd='youtube-dl --extract-audio --audio-format mp3 '

# Customize to your needs...
#export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/texbin:/usr/X11/bin
