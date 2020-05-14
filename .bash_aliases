######################### aliases ####################################
#Don't alias grep until after sourcing the files above, could get bad version
#of grep that doesn't understand --color
#alias grep='nocorrect grep --color=auto'
alias sz='source ~/.bashrc'
# alias ls='ls --color=auto'
# alias ll='ls -lh'
alias zc='vim ~/.bashrc'
alias vc='vim ~/.vimrc'

# Git Aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'


# setup autocompletion
if [ -f "/usr/share/bash-completion/completions/git" ]; then
  source /usr/share/bash-completion/completions/git
  __git_complete gc _git_checkout
  __git_complete gp _git_pull
else
  echo "Error loading git completions"
fi


alias go='git checkout '
#__git_complete go _git_checkout

alias gp='git push'
#__git_complete gp _git_push

alias g='git'
__git_complete g _git

alias gob='git checkout -b '

alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ytd='youtube-dl --extract-audio --audio-format mp3 '

