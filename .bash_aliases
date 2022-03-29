######################### aliases ####################################
#Don't alias grep until after sourcing the files above, could get bad version
#of grep that doesn't understand --color
#alias grep='nocorrect grep --color=auto'
alias sz='source ~/.bashrc'
alias zc='vim ~/.bashrc'
alias za='vim ~/.dotfiles/.bash_aliases'
alias vc='vim ~/.vimrc'

# Directory
alias ww='cd /mnt/c/Workspace/'

# Force Confirmation before Moving/Deleting
alias mv='mv -i'
alias rm='rm -i'

# Git Aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'

# some ls aliases
alias ll='ls -AlFh --time-style=long-iso --color=auto'
alias la='ls -Ah'
alias l='ls -CFh'
alias ls='ls --time-style=long-iso --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Setup Autocompletion
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

# Git
alias go='git checkout '
alias gp='git push'
alias g='git'
alias gob='git checkout -b '

# Bash Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ytd='youtube-dl --extract-audio --audio-format mp3 '

# Tmux
alias tm='tmux'
alias ta='tmux a'
alias tt='vim ~/.dotfiles/tmux/tmux.conf'

# Random
alias mm='mount_all_network_drives'
alias um='unmount_all_network_drives'

alias open='explorer.exe .' # Opens a windows folder in WSL
alias bb='ssh bb' # SSH into beaglebone
alias pi='ssh pi' # SSH into Raspberry pi

alias rsc='"/mnt/c/Program Files (x86)/General Electric/RSDetectionConfigurationUtility/./RSDetection.exe" "/internal"'
