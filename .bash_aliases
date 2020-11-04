######################### aliases ####################################
#Don't alias grep until after sourcing the files above, could get bad version
#of grep that doesn't understand --color
#alias grep='nocorrect grep --color=auto'
alias sz='source ~/.bashrc'
# alias ls='ls --color=auto'
# alias ll='ls -lh'
alias zc='vim ~/.bashrc'
alias vc='vim ~/.vimrc'

# Directory
alias ww='cd /mnt/c/Workspace/'

# Git Aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'

# some ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# setup autocompletion
if [ -f "/usr/share/bash-completion/completions/git" ]; then
  source /usr/share/bash-completion/completions/git
  __git_complete gc _git_checkout
  __git_complete gp _git_pull
  __git_complete go _git_checkout
  __git_complete g _git
  __git_complete gp _git_push
else
  echo "Error loading git completions"
fi

alias go='git checkout '
alias gp='git push'
alias g='git'
alias gob='git checkout -b '

alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ytd='youtube-dl --extract-audio --audio-format mp3 '

