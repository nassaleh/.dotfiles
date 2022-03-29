#######################################################
# 													  #
#    ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗ #
#    ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝ #
#    ██████╔╝███████║███████╗███████║██████╔╝██║      #
#    ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║      #
# ██╗██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗ #
# ╚═╝╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ #
#                                                     #
#######################################################

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

# Dont add duplicate lines or lines beginning with a space
HISTCONTROL=ignoreboth

######################### key bindings ###############################
#bindkey "^R" history-incremental-search-backward
#bindkey "^E" end-of-line
#bindkey "^A" beginning-of-line
#source $ZSH/oh-my-zsh.sh

bind '"\C-H":backward-kill-word' # Makes Ctrl+Backspace work on windows Terminal

#Set Tab autocomplete to cycyle through items
bind "TAB:menu-complete"
<<<<<<< Updated upstream
=======

# Display a list of the matching files
>>>>>>> Stashed changes
set show-all-if-ambiguous on

# Perform partial (common) completion on the first Tab press, only start
# cycling full results on the second Tab press (from bash version 5)
bind "set menu-complete-display-prefix on"

set completion-ignore-case on

# Treats hypen and underscore as the same
set completion-map-case on

# Customize to your needs...
#export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/texbin:/usr/X11/bin

if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/.local/bin"
fi
##########################
# Bashrc from ubuntu WSL #
##########################

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Source .dircolors if it exists. 
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    test -r ~/.dotfiles/.dircolors && eval "$(dircolors -b ~/.dotfiles/.dircolors)" || eval "$(dircolors -b)"
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

# Source all the files in the declared folder
source_files () {
    # Files to source
    dotfilesFolder=$HOME/.dotfiles/

    # Array of files to source
    declare -a filesToSource=(
        ".git-prompt.sh"
        ".bash_aliases"
    )

    #echo "In source_files"

    # Iterate through each file and source them
    for i in "${filesToSource[@]}"
    do
        if [ -f $dotfilesFolder$i ]; 
        then
            #echo $dotfilesFolder$i
            . $dotfilesFolder$i
        else
            echo "Unable to find $dotfilesFolder$i"
        fi
    done
}

source_files

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Git prompt options
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1

# Color Man pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

#Custom PS1 Shell
#TODO show date with time instead of user@host?
PS1=""
PS1="$PS1"'\[\e[1;32m\]'        # Change to Bold Green
PS1="$PS1"'\u'                  # User
PS1="$PS1"'\[\e[1;32m\]'        # Change to Bold Green
PS1="$PS1"'@'                   # Show @ Symbol
PS1="$PS1"'\[\e[1;32m\]'        # Change to Bold Green
PS1="$PS1"'\h '                 # Hostname (short)
PS1="$PS1"'\[\e[1;32m\]'        # Change to Bold White
PS1="$PS1"'\[\e[1;34m\]'        # Change to Bold Blue
PS1="$PS1"'\D{%F} '             # Show Date
PS1="$PS1"'\[\e[1;35m\]'        # Change to Bold Purple
PS1="$PS1"'\@ '                 # Show time
PS1="$PS1"'\[\e[1;33m\]'        # Change to Bold (brownish) yellow
PS1="$PS1"'\w'                  # Current Directory
PS1="$PS1"'\[\e[1;36m\]'        # Change color to cyan
PS1="$PS1"'$(__git_ps1 " (%s)")' # Git function
PS1="$PS1"'\[\e[0m\]'           # Change color
PS1="$PS1"'\n'                  # New line
PS1="$PS1"'$ '                  # Prompt: always $

# Mount Windows Drives in WSL
#sudo mkdir /mnt/z
#sudo mount -t drvfs 'Z:' /mnt/z
#TODO Use this to sync, maybe make a command out of it? 'backup'? How to deal with dry run...
#sudo rsync --exclude-from='exclude-list.txt' -avzP . /mnt/e

bind 'set bell-style visual'

############### Functions ##############
# Declare Drives dictionary and export it so it can be used in all functions
declare -A drives=(
    [W]="Mass_Storage"
#    [T]="Torrents"
    [U]="Photo"
    [V]="Video"
    [K]="Kamil"
) 
export drives

# Goes through the list of drives and mounts the corresponding drive to the folder name
function mount_all_network_drives(){ 
    for key in "${!drives[@]}"; do
        value="${drives[$key]}"
        #echo "sudo mount -t drvfs '$key:' /mnt/$value/" 
        if sudo mount -t drvfs "$key:" /mnt/$value/ ; then 
            echo  "Mounted $value ($key:)"
        else
            echo "Error Mounting $value ($key:)"
        fi
    done    
}

# Goes through the list of drives and unmounts the corresponding drive
function unmount_all_network_drives(){ 
    for key in "${!drives[@]}"; do
        value="${drives[$key]}"
        #echo "sudo mount -t drvfs '$key:' /mnt/$value/" 
        if sudo umount /mnt/$value/ ; then 
            echo  "Unmounted $value ($key:)"
        else
            echo "Error Unmounting $value ($key:)"
        fi
    done    
}

# Example to mount:
# sudo mount -t drvfs d: /mnt/d
# Then navigate to your source you want to backup (Example NAS)
# Example command: backup /mnt/d/Mass_Storage
function backup(){
#    create-manifest
    cmd="sudo rsync --exclude-from='exclude-list.txt' -avzhhP --stats . $1"
    echo $cmd
    eval $cmd
}

function backup-test(){
    #create-manifest
    cmd="sudo rsync --exclude-from='exclude-list.txt' -navzhP --stats . $1"
    echo $cmd
    eval $cmd
}

function create-manifest(){
    #tree -aflix
    zipFile="manifest.zip"
    file=manifest-"`date -I`".txt
    
    if unzip -l $zipFile | grep -q "$file" ; then
        echo "WARN: $file exists. Skipping manifest generation."
        return 1;
    fi

    echo "Creating $file"

    tree -aflix > $file

    if test -f "$zipFile";
    then
        echo "Updating $zipFile"
        zip -ur $zipFile $file
    else
        echo "Creating $zipFile"
        zip -r $zipFile $file
    fi

    rm -f $file
}
