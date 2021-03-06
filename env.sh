#!/bin/sh
###########################################################################
#  EXPORTS 
###########################################################################
    # PATH evn
    export PATH="/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/Library/Python/2.7/bin:$HOME/bin"
    export PATH=$PATH:$HOME/Documents/PRACTICE/Python/bigdata/spark-2.1.1-bin-hadoop2.7/bin:/usr/local/go/bin:$HOME/go/bin
    export EDITOR=vim
    # export PYTHONPATH=$PYTHONPATH
    # export MANPATH="/usr/local/man:$MANPATH"

    # Virtual Environment
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/Projects
    source /usr/local/bin/virtualenvwrapper.sh

    # Owner
    export USER_NAME="TrangTran"
    #eval "$(rbenv init -)"

    # GOPATH
    export GOPATH=${HOME}/go

    # nvm
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

###########################################################################
#  FUNCTIONS 
###########################################################################
    # FileSearch
    function f() { find . -iname "*$1*" ${@:2} ; }
    function r() { grep "$1" ${@:2} -R . ; }

    #mkdir and cd
    function mkcd() { mkdir -p "$@" && cd "$_" ; }


    function _containsElement(){
        # Check whether $1 contains in the rest arguments
        local e
        for e in "${@:2}" ;
        do
            [[ "$e" == "$1" ]] && return 0 ;
        done
        return 1
    }

    BREW_PATH="/usr/local/bin/brew" 
    #Remind to update ansible if install new package
    function brew() {
        $BREW_PATH "$@"
        if [ $? ] &&  _containsElement "install" "$@" ;
        then
            echo "**Install new package. Remember to update ANSIBLE.**"
        fi
    }

    pidof () {
        ps auxww | grep "$*" | grep -v grep | awk '{print $2}'
    }


###########################################################################
#  ALIASES 
###########################################################################
    alias cppcompile='c++ -std=c++11 -stdlib=libc++'

    # Use vim for editing config files
    alias vim='nvim'
    alias zshcfg="vim ~/.zshrc"
    alias envcfg="vim ~/Projects/config/env.sh"
    alias rm='rm -i'

    #eval `gdircolors -b ~/.dir_colors`
    #alias ls='gls -hF --color=auto'
    alias ls='exa'
    alias ll='exa -al'
    alias la="exa -abghl --git --color=automatic"

    alias grep="grep --color=always"
    alias egrep="egrep --color=always"
    alias dls="cd $HOME/Downloads"
    alias docs="cd $HOME/Documents"
    alias vimcfg="vim $HOME/dotfiles/vimrc"
    alias zshcfg="vim $HOME/dotfiles/zshrc"
    alias tmuxcfg="vim $HOME/dotfiles/tmux.conf"
    alias v="vim"
    alias g="git"
    alias docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
    alias docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'

###########################################################################
#  CUSTOM INSTALLATIONS 
###########################################################################
    #Install ecd
    export ENHANCD_COMMAND=ecd 
    export ENHANCD_FILTER=fzy:percol
    source ${HOME}/Documents/PROGRAMS/enhancd/init.sh

    export PASSWORD_STORE_DIR="$HOME/Dropbox/pass" 
    export GNUPGHOME="$HOME/Dropbox/gpg" 
    export GPGKEY="96A5C19D"
    
    export ECLIPSE_HOME="/Applications/Eclipse.app/Contents/Eclipse/"
    ##autoenv
    source $(brew --prefix autoenv)/activate.sh


    #dircolors
    eval $(gdircolors ~/dotfiles/dircolors.256dark)


    # color man page
    man() {
        LESS_TERMCAP_md=$(tput bold; tput setaf 4)            \
        LESS_TERMCAP_me=$(tput sgr0)                           \
        LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 3) \
        LESS_TERMCAP_ue=$(tput sgr0)                           \
        command man "$@"
    }

    restart_camera() {
        sudo killall VDCAsistant
    }

